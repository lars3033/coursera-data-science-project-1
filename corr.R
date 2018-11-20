corr <- function(directory, threshold = 0) {

        files_list <- list.files(directory, full.names = TRUE) #create vector of file pointers
        corr_value <- vector(mode = "numeric")
      
        for(i in 1:length(files_list)) {

              if(sum(complete.cases(read.csv(files_list[i]))) > threshold) { #set threshold
                    #calculate corr for complete cases
                    corr_value <- append(corr_value, cor(read.csv(files_list[i])$sulfate, read.csv(files_list[i])$nitrate, use = "complete.obs"))
              }
        }
        corr_value
}