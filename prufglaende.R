library(tigris)
denver_tracts <- tracts(state = "CO", county = 31, cb = TRUE)
load("data/fars_colorado.RData")
denver_fars <- driver_data %>%
filter(county == 31 & longitud < -104.5)
