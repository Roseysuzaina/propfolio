#' Calculate horizon price differences for use in portfolio optimization
#'
#' @param simulatedHorizonPrices is a matrix with simulated horizon prices, output from simulateDataToHorizon function
#' @param horizonPriceVector is a vector of prices used to calculate the differences
#'
#' @return a matrix of price differences
#'
#' @examples
#' none
#'
#' @export
horizonPnLs<-function(simulatedHorizonPrices, horizonPriceVector){
  horizonPnL <- lapply(1:ncol(simulatedHorizonPrices)
                       ,function(horizonCol){
                         return(simulatedHorizonPrices[,horizonCol] - horizonPriceVector[horizonCol])
                       })
  horizonPnL <- do.call(cbind,horizonPnL)
  return(horizonPnL)
}
