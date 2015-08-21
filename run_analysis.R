run_analysis<-function(tidy) {
    
    Test_data<- read.table("X_test.txt", header = TRUE) 
    
    Train_data <- read.table("X_train.txt", header = TRUE) 
    
    
    features_data<-data.frame()
    
    ## features data modified as the column names are duplicated ##
    
    features_data <- read.table("features.txt", header = TRUE)
    
    features1_data<-features_data[,2]
    
    names<-as.vector(features1_data)
    
    colnames(Test_data)<-c(names)
    
    colnames(Train_data)<-c(names)
    
    ##col names added to both test data and train data and merged ##
    
    Merge_data<-(rbind(Train_data,Test_data))
    
    ## selected only the mean and std measurements ##
    ## by using dplyr  ##
    
    suppressMessages(library(dplyr))
    
    Merge_data_mean<-Merge_data %>% select(contains("mean"))
    
    Merge_data_std<-Merge_data %>% select(contains("std"))
    
    Merge_data_mean_std<-cbind(Merge_data_mean,Merge_data_std)
    
    
    ## adding discriptive names  ##
    
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
    
    Merge_data_mean_std_activity<-cbind(activity_names1,Merge_data_mean_std)
    
    ##  adding subject(id) data to (mean+std+activity ) data  ##
    
    subject_test<- read.table("subject_test.txt", header = TRUE)
    
    subject_train <- read.table("subject_train.txt", header = TRUE)
    
    colnames(subject_test)<-c('ID')
    
    colnames(subject_train)<-c('ID')
    
    subject_data<-rbind(subject_train,subject_test)
    
    Merge_data_mean_std_activity_subject<-cbind(subject_data,Merge_data_mean_std_activity)
    
    ## reshape2 package for melt and dcast  ## 
    
    library(reshape2)
    
    ##reshaping data with ID and avtivity as observations,remaining as variables and taken average ##  ## (ie, mean ) by using melt and dcast functions##
    
    tidymelt<-data.frame()
    tidy<-data.frame()
    
    tidymelt<-melt(Merge_data_mean_std_activity_subject,id=c("ID","activity"))
    
    tidy<-dcast(tidymelt,ID+activity~variable,mean)
    
    ##tidy data file created is copied in working directory ##
    
    tidy1<-write.table(format(tidy,digits=8),"C:/Users/MY STYLE/Documents/getdata/tidy.txt",sep='\t\t',row.name=FALSE)
    
    
    }
