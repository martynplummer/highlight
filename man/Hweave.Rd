\name{Hweave}
\alias{Htangle}
\alias{Hweave}
\title{
    Weaving and Tangling with syntax highlighting
}
\description{
    \code{Hweave} and \code{Htangle} are similar to \code{Sweave} 
    and \code{Stangle}, but they take advantage of the
    custom driver shipped with this package 
}
\usage{
    Hweave(file, driver = HighlightWeaveLatex(), 
        syntax = HweaveSyntaxNoweb, 
        encoding = "", ...)
    Htangle(file, driver = HighlightTangle(), 
        syntax = HweaveSyntaxNoweb, 
        encoding = "", ...)
}
\arguments{
  \item{file}{
      Path to Sweave source file.
}
  \item{driver}{
      The actual workhorse, see the Details section in \code{\link[utils]{Sweave}}
}
  \item{syntax}{
      \code{NULL} or an object of class \code{SweaveSyntax}
      or a character string with its name. See the section \code{Syntax Definition}
      in \code{\link[utils]{Sweave}}
}
  \item{encoding}{
      The default encoding to assume for \code{file}
}
  \item{\dots}{
      Further arguments passed to the driver's setup function. 
}
}
\note{
    These functions exist for the purpose of the 
    \code{\\VignetteEngine} option in vignette introduced in R 3.0.0
    
    \code{highlight} loads the \code{highlight} vignette engine 
    at load time. Client packages must declare to use it
    with the \code{VignetteBuilder} field in their \code{DESCRIPTION}
    file
    
    The vignette engine looks for files matching the 
    pattern \code{"[.][hHrRsS]nw$"} although in order to distinguish 
    vignettes using this engine and the default
    Sweave engine, the recommandation is to use vignette with the \code{".Hnw"}
    extension. 
}
\author{
    Romain Francois <romain@r-enthusiasts.com>
}
\keyword{utilities}

