# File containing helper functions

# Read in data with skipping first line in default
# file - file_name
# skip - how many line in the beginning skipped
read_csv <- function(file, skip = 1)
{
    headers = read.csv(file, skip = skip, header = F, nrows = 1, as.is = T)
    df = read.csv(file, skip = skip+1, header = F)
    colnames(df)= headers
    return(df)
}