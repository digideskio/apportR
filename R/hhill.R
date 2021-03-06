#' Return apportioned vector according to Huntington-Hill Method
#'
#' @param x A named vector.
#' @param n Number of apportioned units to sum to
#' @param k The incrementing interval used to search for divisors
#' @return A named vector of length \code{x} containing apportioned integers summing to \code{n}.
#' @examples
#' hhill(usa1790, 105)
#' hhill(usa2000, 435)
#' hhill(usa2000, 435, 20)
#' @section References:
#'  http://www.maa.org/publications/periodicals/convergence/apportioning-representatives-in-the-united-states-congress-hills-method-of-apportionment
#' @section Further details:
#'   Method developed around 1911 by Joseph Hill and modified by Edward Huntington 
#' @export

hhill <- function(x, n=100, k=1){
  
  divisor <- (sum(x)/n)
  
  seats <- hhill3(x, divisor)  
  
  
  if(sum(seats)==n) {return(seats)} 
  
  if(sum(seats) != n) { 
    
    #set up vector of possible divisors
    myd1 <- rev(seq(0,divisor, by=k))  
    myd2 <- seq(divisor, divisor+(length(myd1)-1), by=k)
    
    #account for potential of unequal vector sizes prior to rbind
    shortest <- min(length(myd1), length(myd2))
    myd2 <- head(myd2, shortest)
    myd1 <- head(myd1, shortest)
    
    mydivisors <- c(rbind(myd1, myd2))
    
    #find divisor
    j<-1
    
    while(TRUE) {
      tmp <- hhill3(x, mydivisors[j])
      
      
      if(sum(tmp)  == n)
        
        break
      j = j + 1
    }
    
    res <- hhill3(x, mydivisors[j])
    
    return(res)
    
  }
}



gmean1 = function(x){sqrt(x[1]*x[2])}

hhill3<-function(x,divi){
  quotas <- x / divi
  lwqt <- floor(quotas)
  upqt <- ceiling(quotas)
  gmeans <- apply(cbind(lwqt, upqt), 1, gmean1)
  seats <- ifelse(quotas > gmeans, upqt, ifelse(quotas==0, 1, lwqt))
  return(seats)
}
