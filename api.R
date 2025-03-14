library(tidyverse)
library(plumber)


# api.R
library(plumber)

#* @get /hello
function() {
  return(list(message = "Hello, Rugby World!"))
}

#* @post /data
function(req) {
  body <- req$postBody
  return(list(received_data = body))
}
