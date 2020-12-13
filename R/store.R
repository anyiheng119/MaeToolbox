#' Web Scraped Data of Google Play Store Apps
#' @description This is a Web scraped dataset with 9k+ Play Store apps for analysing the Android market. Each app (row) has values for catergory, rating, size, and more.
#'
#' @format 10,841 X 12 dataframe

#'
store = read.csv("store.csv")
usethis::use_data(store,overwrite = TRUE)
