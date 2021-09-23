#' WID_BC
#'
#' THE WID_BC function uses a methylation beta matrix and returns the WID-BC-index.
#' Authors: Barrett J., Herzog C. et al., 2021
#'
#' @param beta Methylation beta matrix object (Illumina Methylation EPIC array)
#' @return Returns a vector object with the WID-BC-index
#' @export

WID_BC <- function(beta){

  w <- coefficients
  scaling <- scaling

  # compute index
  intersect <- intersect(names(w), rownames(beta))

  if(!identical(intersect, names(w))){
    cat("Warning: not all WID-BC-index CpGs found in your beta matrix. This could be, for instance, because you are using the 450k array instead of the EPIC array.\nIndex will still be computed.")
  }

  B <- beta[match(intersect, rownames(beta)),]
  w <- w[match(intersect, names(w))]
  B1 <- B*w

  WID_BC <- colSums(B1,na.rm=T)
  WID_BC <- -(WID_BC - mean(scaling))/sd(scaling)

  #------------------------------------------#
  return(WID_BC)

}
