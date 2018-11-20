pollutantmean <- function(directory, pollutant, id = 1:332) {

        files_list <- list.files(directory, full.names = TRUE) #create vector of files
        polldat <- data.frame() #instantiate dataframe

        for (i in 1:length(files_list)) { #fill dataframe with file data
            polldat <- rbind(polldat, read.csv(files_list[i]))
        }
        
        polldat_subset <- subset(polldat, ID %in% id) #filter dataframe ID col by id
        mean(polldat_subset[ , pollutant], na.rm = TRUE) #calculate mean without NAs
}