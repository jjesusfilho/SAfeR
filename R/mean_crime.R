


#' Calculates the mean crime in a specific geographic area
#'
#' @param station A valid station in the crime data frame, string
#'
#' @return The average of all the crime rates in a specific Station and Category
#' @export
#'
#' @examples
#'
#'mean_crime("Cape Town Central")
#'1
#'
#'
  mean_crime <- function(station) {
    s1 <- sprintf("^%s$", station) #to error check for an exact match
    if  (any(grepl(s1, crime[,2]))) {
    cate <- select_category(station) #set cate as the output of select_category
    mean(as.numeric(crime[which(crime$Station == station & crime$Category == cate), 5]))
    }
    else {
      stop("Please type in valid station.")
    }
  }


