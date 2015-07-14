# Load knitr nd set options to upload images to imgur.com, determine image size.
library(knitr)
opts_knit$set(upload.fun = imgur_upload, base.url = NULL)
opts_chunk$set(fig.width = 11, fig.height = 5, cache = TRUE)

# Load markdown
library(markdown)

# Load RWordPress and login to WordPress. The source for RWordPress and dependency XMLRPC had to be downloaded and compiled localy from http://www.omegahat.org.
library(RWordPress)
options(WordpressLogin = c(jeremy = ',lK1kY#t~E8:MWVD'),
        WordpressURL = 'http://www.jeremyboyd.org/xmlrpc.php')

# Convert and upload .Rmd file to WordPress.
knit2wp("AP_exp1_mixed.Rmd",
        title = "A logit mixed model of a-adjective production",
        categories = c("statistical modeling"),
        mt_keywords = c("R", "lme4", "mixed effects models",
                        "language development", "grammatical constraints",
                        "a-adjectives"),
        publish = FALSE)