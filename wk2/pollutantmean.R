
system.time(pollutantmean <- function(directory, pollutant, id = 1:332){
  
 
  
  file_names <- list.files(directory, full.names = TRUE);
 
  ## Testing parameter passed in for pollutant
  if(pollutant == 'sulfate')
    {
    pollutant <- 2
  }
    else{
     pollutant <- 3 
      
    }
  
  ## creating empty dataframe
  datas <- data.frame()
  for (i in id){
  single_files <-  read.csv(file_names[i]) 
  datas <- rbind(datas,single_files)

 
 }
 actual_data <- datas[,pollutant] 
 mean_value <- mean(actual_data, na.rm=TRUE)
 mean_value
      
})



