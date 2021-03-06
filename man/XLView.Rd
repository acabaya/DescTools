\name{XLView}
\alias{XLView}
\alias{XLKill}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Use Excel as Viewer for a Data.Frame
%%  ~~function to do ... ~~
}
\description{
\code{XLView} can be used to view and edit a data.frame directly in Excel, resp. to create a new data.frame in Excel.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
XLView(x, col.names = TRUE, row.names = FALSE, na = "")

XLKill()
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ is a data.frame to be transferred to Excel. If data is missing a new file will be created.
%%     ~~Describe \code{data} here~~
}
  \item{row.names}{ either a logical value indicating whether the row names of x are to be written along with x, or
  a character vector of row names to be written.}
  \item{col.names}{either a logical value indicating whether the column names of x are to be written
  along with x, or a character vector of column names to be written.
  See the section on 'CSV files' \code{\link{write.table}} for the meaning of \code{col.names = NA}. }

\item{na}{the string to use for missing values in the data.}

}
\details{
The data.frame will be exported in CSV format and then imported in Excel.\cr
Take care: Changes to the data made in Excel will NOT automatically be updated in the original data.frame.
The user will have to read the csv-file into R again.
See examples how to get this done.\cr\cr
\code{XLKill} will kill a running XL instance (which might be invisible). Background is the fact, that the simple XL$quit() command
would not terminate a running XL task, but only set it invisible (observe the TaskManager). This ghost version may sometimes confuse XLView and hinder to create a new instance. In such cases you have to do the garbage collection...
}
\value{the name/path of the temporary file edited in Excel.
}
\author{
Andri Signorell <andri@signorell.net>
}
\note{The function works only in Windows and requires \bold{RDCOMClient} to be installed (see: Additional_repositories in DESCRIPTION of the package).
%%  ~~further notes~~
}


\seealso{\code{\link{GetNewXL}}, \code{\link{XLGetRange}}, \code{\link{XLGetWorkbook}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
\dontrun{# Windows-specific example
XLView(d.diamonds)

# edit an existing data.frame in Excel, make changes and save there, return the filename
fn <- XLView(d.diamonds)
# read the changed file and store in new data.frame
d.frm <- read.table(fn, header=TRUE, quote="", sep=";")

# Create a new file, edit it in Excel...
fn <- XLView()
# ... and read it into a data.frame when in R again
d.set <- read.table(fn, header=TRUE, quote="", sep=";")

# Export a ftable object, quite elegant...
XLView(format(ftable(Titanic), quote=FALSE), row.names = FALSE, col.names = FALSE)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ manip }

