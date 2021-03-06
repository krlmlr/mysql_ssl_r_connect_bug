#!/usr/bin/env r

library(RMySQL)
message('connecting to root account without SSL')
db <- dbConnect(MySQL(), host = 'mysql', user = 'root', password='root')

message('connecting to ssltest account without SSL (should fail)')
try(db <- dbConnect(MySQL(), host = 'mysql', user = 'ssltest', password='tralala'))


message('connecting to ssltest account with SSL')
db <- dbConnect(MySQL(), host = 'mysql', user = 'ssltest', password='tralala', client.flag = 2048)
