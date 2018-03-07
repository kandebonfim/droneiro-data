# Knitr
knitr::opts_chunk$set(echo = TRUE)

# Libraries
library("readr")
library("ggplot2")
library("ggthemes")
library("scales")
library("lubridate")
library("Amelia")
library("dplyr")
library("plyr")
library("forcats")
library("corrplot")

options(OutDec= ",")

# Loading Datasets
temp = list.files(path=paste0(root,"data"), pattern="*.csv", full.names=T)
for (i in 1:length(temp)) assign(tools::file_path_sans_ext(basename(temp[i])), read.csv(temp[i], stringsAsFactors=FALSE))

# Theme Default
theme_default <- theme_solarized(light = FALSE) +
  theme(axis.text = element_text(color = "#cccccc", size=5))

# Color
gr <- "#607D8B"
gr2 <- "#95C2D7"

options(scipen=10000)