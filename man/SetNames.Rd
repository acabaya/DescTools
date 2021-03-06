\name{SetNames}
\alias{SetNames}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Set the Names in an Object
%%  ~~function to do ... ~~
}
\description{This is a convenience function that sets the names on an object and returns the object. It is most useful at the end of a function definition where one is creating the object to be returned and would prefer not to store it under a name just so the names can be assigned. In addition to the function \code{\link{setNames}} the user can decide, whether rownames, colnames or simply the names are to be set.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SetNames(x, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an object for which a names attribute will be meaningful
%%     ~~Describe \code{object} here~~
}
  \item{...}{the names to be assigned to the object. This should be a character vector of names named rownames, colnames or names. Setting \code{rownames=NULL} would remove existing rownames.
%%     ~~Describe \code{nm} here~~
}
}
\value{An object of the same sort as object with the new names assigned.
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\author{Andri Signorell <andri@signorell.net>\cr
}

\seealso{\code{\link{setNames}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
tab <- table(d.pizza$driver, d.pizza$wine_delivered)
SetNames(BinomCI(tab[,1], rowSums(tab)), rownames=rownames(tab))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ list }



