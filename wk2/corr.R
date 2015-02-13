corr <- function(dir, thresold = 0){
  file <-    list.files('./specdata',full.names = TRUE)
  file_length <- length(files)
  corr_values <- vector()
  
     for (i in 1:file_length){
       file_df <-      na.omit(read.csv(file[i])  )  
       total_records <- nrow(file_df)
        
       if(total_records > thresold){
                       sulfate <- file_df$sulfate
                       nitrate <- file_df$nitrate
                       correlation <- cor(nitrate,sulfate)
                       corr_values <- c(corr_values,correlation)
                       
               }
       
     }
    
     corr_values

}





# if(total_records > thresold){
#         sulfate <- file_df$sulfate
#         nitrate <- file_df$sulfate
#         correlation <- cor(nitrate,sulfate)
#         ##corr_value <- c(corr_value,correlation)
# }
