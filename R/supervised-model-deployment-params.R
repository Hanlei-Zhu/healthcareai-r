# Import the common functions.
library(R6)

#' SupervisedModelDeploymentParams class to set up parameters required to build
#' SupervisedModelDeployment class
#'
#' @description This step allows one to create deploy models on your data
#' and helps determine which performs best.
#' @docType class
#' @importFrom R6 R6Class
#' @references \url{http://healthcare.ai}
#' @seealso \code{\link{healthcareai}}
#'
#' @export

SupervisedModelDeploymentParams <- R6Class("SupervisedModelDeploymentParams",

  #Public members
  public = list(

    #parameters
    df = NULL,
    type = "",
    grainCol = "",
    predictedCol = "",
    personCol = "",
    testWindowCol = "",
    impute = TRUE,
    debug = FALSE,
    cores = 4,
    writeToDB = TRUE,
    sqlConn = "",
    destSchemaTable = "",
    rfmtry = 0,
    trees = 201,

    #Constructor
    initialize = function() {
    }
  )
)
