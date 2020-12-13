#' Plot the Percenage of NAs for each Variables
#'
#' @param df This is a dataframe
#'
#' @return A bar chart that shows the Percenage of NAs for each Variables
#'
#' @examples plotNAs(ucla)
#' plotNAs(df)
#'
#'
plotNAs = function(df){

missing_data = dplyr::summarise_all(df,dplyr::funs(sum(is.na(.))/length(df)))
missing_data = tidyr::gather(missing_data, key = "variables", value = "percent_missing")
ggplot2::ggplot(missing_data, aes(x = reorder(variables, percent_missing), y = percent_missing)) +
  geom_bar(stat = "identity", fill = "darkgreen", aes(color = I('white')), size = 0.3)+
  xlab('variables')+
  coord_flip()+
  theme_bw()

}

