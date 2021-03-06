% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/problem.R
\name{getRestrictions}
\alias{getRestrictions}
\title{Get restrictions by indices}
\usage{
getRestrictions(problem, indices)
}
\arguments{
\item{problem}{Problem whose restrictions will be searched.}

\item{indices}{A vector of restriction indices (eg. a result of calling
\code{\link{getPreferentialCore}}.) Incorrect indices are skipped.}
}
\value{
List with named elements. Each element is a matrix which contains set
of restrictions of same type.
}
\description{
This function gets restrictions by indices.
}
\examples{
perf <- matrix(c(5, 2, 1, 7, 0.5, 0.9, 0.4, 0.5), ncol = 2)
problem <- buildProblem(perf, 3, FALSE, c('g', 'g'), c(0, 0))
problem <- addAssignmentsLB(problem, c(1, 2), c(2, 3))

possibleAssignments <- calculateAssignments(problem, FALSE)
alternative <- 4
assignment <- c(min(which(possibleAssignments[alternative, ])),
               max(which(possibleAssignments[alternative, ])))

preferentialReducts <- explainAssignment(alternative,
   assignment, problem)
preferentialCore <- getPreferentialCore(preferentialReducts)
coreRestrictions <- getRestrictions(problem, preferentialCore)
}
\seealso{
\code{\link{getPreferentialCore}}
\code{\link{explainAssignment}}
}

