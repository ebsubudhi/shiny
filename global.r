rm(list=ls())
require(rJava)
options ( java.parameters = "-Xmx4g")
require(XLConnect)
require(googleVis)
library(reshape)
library(shiny)
library(reldist)

label=c("Q1-2012","Q2-2012","Q3-2012","Q4-2012","Q1-2013","Q2-2013","Q3-2013","Q4-2013")
Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI1=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI2=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI3=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI4=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI5=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI6=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI7=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI8=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI9=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI10=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI11=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI12=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI13=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI14=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI15=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI16=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI17=data.frame(label,Value,Gross_Asset,NPA)

Value=round(sample(900:1300,8)/100)
Gross_Asset=sample(700:1100,8)
NPA=round(sample(150:230,8)/10)
KPI18=data.frame(label,Value,Gross_Asset,NPA)
