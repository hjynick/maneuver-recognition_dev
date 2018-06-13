
library(sp)
library(dplyr)
gpsdata<-data%>%
  select("[x]","[y]")%>%
  SpatialPoints(CRS("+proj=utm+zone=32"))%>%
  spTransform(CRS("+proj=longlat +ellps=WGS84"))
  
