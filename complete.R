complete <- function(directory, id = 1:332) {

        files_list <- list.files(directory, full.names = TRUE) #vector of file pointers
        nobs <- vector(length = length(id))
        
        for (i in 1:length(id)) {
              #read data, generate complete cases (T,F) vector and count Ts
              nobs[i] <- sum(complete.cases(read.csv(files_list[id[i]])))
        }
        
        print(table_out <- data.frame(id, nobs)) #create output table
}