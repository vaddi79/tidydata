# Making Tidydata
Getting and cleaning data to make tidy data

run_analysis<-function(tidy) {
    
    Test_data<- read.table("X_test.txt", header = TRUE) 
    
    Train_data <- read.table("X_train.txt", header = TRUE) 
    
   ##(with above commands loaded the X_text data dim=2948x561,and X_train data dim=7353X561 to the objects ##Test_data and Trian_data)##
     
    features_data<-data.frame()
    
    ## features data modified as the column names are duplicated ##
    ## Now below commands "features"" file loaded in features_data object of dim=561X1 is used as ##
    ##variable names and added as column names to the both test data and train data such that you can ## 
    ## select only mean and std measurements ##
    
    
    
    features_data <- read.table("features.txt", header = TRUE)
    
    features1_data<-features_data[,2]
    
    names<-as.vector(features1_data)
    
    colnames(Test_data)<-c(names)
    
    colnames(Train_data)<-c(names)
    
    ##col names added to both test data and train data and merged ##
     ## now  with merge command,merged both test data and train data along with variable names ##
    
    Merge_data<-(rbind(Train_data,Test_data))
    
    ##below  selected only the mean and std measurements  separately ##
    ## by using dplyr  command select ##
    
    suppressMessages(library(dplyr))
    
    Merge_data_mean<-Merge_data %>% select(contains("mean"))
    
    Merge_data_std<-Merge_data %>% select(contains("std"))
    
    ## now both mean and std mesurement data combined with cbind command ##
    
    Merge_data_mean_std<-cbind(Merge_data_mean,Merge_data_std)
    
    
    ## adding discriptive names  ##
    ## y_test and Y-test files related  to activity code ,of activity code 1 to 6 ie, walking ##
    ##walking upstairs, walking downstaira,sitting,laying ,standing ##
    ## activity names are coded to both y_test and y_train data and are rbinded(row binded) ##
    ## it gives column of activity ##
    
    Test_data_y<- read.table("y_test.txt", header = TRUE)
    
    Train_data_y <- read.table("y_train.txt", header = TRUE) 
    
    colnames(Test_data_y)<-c('Activity')
    
    colnames(Train_data_y)<-c('Activity')
    
    
    activity_data<-rbind(Train_data_y,Test_data_y)
    
    ##adding activity lable to mean and std data##
    
    ##WKG_UPSTRS==WALKING_UPSTAIRS,WKG_DOWNSTRS==WALKING DOWNSTAIRS  ##
    
    activity.names<-c ( 'WALKING','WKG_UPSTRS','WKG_DOWNSTRS','SITTING',          
                        'STANDING','LAYING')
    
    activity_data1<-as.vector(activity_data)
    
    activity<-data.frame()
    
    activity<-activity.names[activity_data1[,1]]
    
    activity_names1<-as.data.frame(activity)
    
    ## now the column of "activity" cbinded to the merged data(includes onli mean and std measurements)##
    
   ## Merge_data_mean_std_activity<-cbind(activity_names1,Merge_data_mean_std) ##
    
    ##  adding subject(id) data to (mean+std+activity ) data  ##
    
    ## now subject 'ID' ie 1 to 30 observants for both test and train data are added separately ##
    ## both test and train subject data merged to get column of subject ID ##
    
    subject_test<- read.table("subject_test.txt", header = TRUE)
    
    subject_train <- read.table("subject_train.txt", header = TRUE)
    
    colnames(subject_test)<-c('ID')
    
    colnames(subject_train)<-c('ID')
    
    subject_data<-rbind(subject_train,subject_test)
    
    ## now the Subject ID column is cbinded with the data abtained mean+std+activity data##
    ## this completes data with observations of ID and Activity ,variables of ie mean and std ##
    
    Merge_data_mean_std_activity_subject<-cbind(subject_data,Merge_data_mean_std_activity)
    
    ## reshape2 package for melt and dcast  ## 
    
    library(reshape2)
    
    ##reshaping data with 'ID' and' avtivity' as observations,remaining as variables and taken average ##
    ## (ie, mean ) by using melt and dcast functions##
    ## average is taken for each ID and each activity ##
    ## 180 rows ie 30 ID* 6 activities, now the variables are mean of 'means' and mean of "std" ##
    
    tidymelt<-data.frame()
    tidy<-data.frame()
    
    tidymelt<-melt(Merge_data_mean_std_activity_subject,id=c("ID","activity"))
    
    tidy<-dcast(tidymelt,ID+activity~variable,mean)
    
    ##tidy data file created is copied in working directory  as 'tidy.txt' ##
    
    tidy1<-write.table(format(tidy,digits=8),"C:/Users/MY STYLE/Documents/getdata/tidy.txt",sep='\t\t',row.name=FALSE)
    
    
    }





