% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sentiment_stanford.R
\name{sentiment_stanford}
\alias{sentiment_stanford}
\title{Wrappper to Standford's coreNLP Sentiment Tagger}
\usage{
sentiment_stanford(text.var, hyphen = "", missing_value = 0,
  stanford.tagger = coreNLPsetup::coreNLP_loc(), java.path = "java", ...)
}
\arguments{
\item{text.var}{The text variable.}

\item{hyphen}{The character string to replace hyphens with.  Default replaces
with nothing so 'sugar-free' becomes 'sugarfree'.  Setting \code{hyphen = " "}
would result in a space between words (e.g., 'sugar free').}

\item{missing_value}{A value to replace \code{NA}/\code{NaN} with.  Use
\code{NULL} to retain missing values.}

\item{stanford.tagger}{path to the Stanford tagger.}

\item{java.path}{Path to where \pkg{Java} resides.  If  \pkg{Java} is on your
path the minimal \code{java.path = "java"} is all that should be required.}

\item{\ldots}{Other arguments passed to \code{check_stanford_installed}.}
}
\value{
Returns a \pkg{data.table} of:
\itemize{
  \item  element_id - The id number of the original vector passed to \code{sentiment}
  \item  sentence_id - The id number of the sentences within each \code{element_id}
  \item  word_count - Word count
  \item  sentiment - Sentiment/polarity score
}
}
\description{
Tag sentiment as most negative (-1) to most positive (+1).  A
reimplementation of Matthew Jocker's Stanford coreNLP wrapper in \pkg{syuzhet}.
}
\references{
http://nlp.stanford.edu/software/corenlp.shtml \cr
\url{http://www.matthewjockers.net/2015/03/04/some-thoughts-on-annies-thoughts-about-syuzhet}
}
\keyword{sentiment}
