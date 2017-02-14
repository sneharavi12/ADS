install.packages(c("twitteR","ROAuth","plyr","stringr","ggplot2","base64enc"),dependencies = T)
library(base64enc)
library(twitteR)
library(ROAuth)
library(plyr)
library(stringr)
library(ggplot2)
library(RCurl) 


options(RCurlOptions = list(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl")))

download.file(url = "http://culr.haxx.se/cs/cacert.pen", destfile = "cacert.pen"
              )

requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"

consumerKey <- "hHyxCVkHEi2Y7UlMftIX3U0oD"
consumerSecret <- "paASADLDtQa0Or3yEvjG6QHJEYLhImoBHZYsIbtzJr8erG00vQ"

Cred <- OAuthFactory$new(consumerKey = consumerKey,
                          consumerSecret = consumerSecret,
                          requestURL = requestURL,
                          accessURL = accessURL,
                          authURL = authURL)



save(Cred, file ="twitter authentication.Rdata")
load("twitter authentication.Rdata")

Cred$handshake()
access_token <- "831204380460335104-Qk4WwgPuFVRc4uFe4elzW72yOQaY1AU"
access_token_secret <- "IpAOC1NnRbsBpZfBnxIquw6gQdl8quUkl1VxfrogBCQBD"

setup_twitter_oauth(consumerKey,consumerSecret,access_token,access_token_secret)