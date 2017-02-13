

install.packages(c("twitteR","ROAuth","plyr","stringr","ggplot2"),dependencies = T)
library(twitteR)
library(ROAuth)
library(plyr)
library(stringr)
library(ggplot2)

download.file(url = "http://culr.haxx.se/cs/cacert.pen", destfile = "cacert.pen"
              )

requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

consumerKey <- "NnKYzzzLY6NEzqSqSpGubxuOd"
consumerSecret <- "798JehC8IT2ZXn4kF56zFuU9jFo3sDWwHCw5DlMnxM2AZBmma2"

Cred <- OAuthFactory$new(consumerKey = consumerKey,
                          consumerSecret = consumerSecret,
                          requestURL = requestURL,
                          accessURL = accessURL,
                          authURL = authURL)
Cred$handshake(cainfo = system.file("CurlSSL", "cacert.pen", package = "RCurl"))