complete <- function(directory,id = 1:332 ){
   files <- list.files(directory, full.names = TRUE) 
   d_frame <- data.frame()
   for (i in id){
      file_content <- read.csv(files[i]) 
      obs <- nrow(na.omit((file_content)))
      com_col <- c(i,obs)
      d_frame <- rbind(d_frame,com_col)
           
           
   }
   colnames(d_frame) <- c('id','nobs')     
    d_frame    
}
