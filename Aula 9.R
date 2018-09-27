> install.packages("lmtest")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
also installing the dependency 'zoo'


There is a binary version available but the source version is later:
  binary source needs_compilation
zoo  1.8-3  1.8-4              TRUE

Binaries will be installed
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/zoo_1.8-3.zip'
Content type 'application/zip' length 1100185 bytes (1.0 MB)
downloaded 1.0 MB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/lmtest_0.9-36.zip'
Content type 'application/zip' length 359124 bytes (350 KB)
downloaded 350 KB

package 'zoo' successfully unpacked and MD5 sums checked
package 'lmtest' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpIXreaT\downloaded_packages
> install.packages("aTSA")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/aTSA_3.1.2.zip'
Content type 'application/zip' length 181302 bytes (177 KB)
downloaded 177 KB

package 'aTSA' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpIXreaT\downloaded_packages
> library(aTSA)

Attaching package: 'aTSA'

The following object is masked from 'package:graphics':
  
  identify

> library(agricolae)
> library(normtest)
> library(readxl)
> install.packages("lmtest")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/lmtest_0.9-36.zip'
Content type 'application/zip' length 359124 bytes (350 KB)
downloaded 350 KB

package 'lmtest' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpIXreaT\downloaded_packages
> install.packages("aTSA")
Error in install.packages : Updating loaded packages
> install.packages("agricolae")
Error in install.packages : Updating loaded packages
> install.packages("normtest")
Error in install.packages : Updating loaded packages
> install.packages("readxl")
Error in install.packages : Updating loaded packages

Restarting R session...

> install.packages("aTSA")
Installing package into 'C:/Users/Alunos/Documents/R/win-library/3.5'
(as 'lib' is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.5/aTSA_3.1.2.zip'
Content type 'application/zip' length 181302 bytes (177 KB)
downloaded 177 KB

package 'aTSA' successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\Alunos\AppData\Local\Temp\RtmpG6ntGa\downloaded_packages
> library(lmtest)
Carregando pacotes exigidos: zoo

Attaching package: 'zoo'

The following objects are masked from 'package:base':
  
  as.Date, as.Date.numeric

> library(aTSA)

Attaching package: 'aTSA'

The following object is masked from 'package:graphics':
  
  identify

> library(agricolae)                                                    #Carrega o pacote agricolae
> library(normtest)                                                     #Carrega o pacote normtest
> library(readxl)
> data(jocci)
> View(jocci)
> joccits <- ts(JOCCI$dy,start = 1959,frequency = 12)
Error in is.data.frame(data) : object 'JOCCI' not found
> jocci <- ts(JOCCI$dy,start = 1959,frequency = 12)
Error in is.data.frame(data) : object 'JOCCI' not found
> jocci <- ts(JOCCI$dy,start = 1959,frequency = 12)
Error in is.data.frame(data) : object 'JOCCI' not found
> joccits <- ts(JOCCI$dy,start = 1959,frequency = 12)
Error in is.data.frame(data) : object 'JOCCI' not found
> JOCCI <- as.data.frame(jocci)
> joccits <- ts(JOCCI$dy,start = 1959,frequency = 12)
> plot(joccits, main="Índice Jocci", xlab="Ano", ylab="Índice")
> ar6model <- dy~dy1+dy2+dy3+dy4+dy5+dy6
> ar5model <- dy~dy1+dy2+dy3+dy4+dy5
> ar4model <- dy~dy1+dy2+dy3+dy4
> ar3model <- dy~dy1+dy2+dy3
> ar2model <- dy~dy1+dy2
> ar1model <- dy~dy1
> TesteBGAR6 <- bgtest(ar6model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR5 <- bgtest(ar5model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR4 <- bgtest(ar4model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR3 <- bgtest(ar3model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR2 <- bgtest(ar2model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR1 <- bgtest(ar1model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteBGAR6 <- bgtest(ar6model,data=JOCCI)
> TesteBGAR5 <- bgtest(ar5model,data=JOCCI)
> TesteBGAR4 <- bgtest(ar4model,data=JOCCI)
> TesteBGAR3 <- bgtest(ar3model,data=JOCCI)
> TesteBGAR2 <- bgtest(ar2model,data=JOCCI)
> TesteBGAR1 <- bgtest(ar1model,data=JOCCI)
> P_Valores_BG <- c(TesteBGAR6$p.value,
                    +                TesteBGAR5$p.value,
                    +                TesteBGAR4$p.value,
                    +                TesteBGAR3$p.value,
                    +                TesteBGAR2$p.value,
                    +                TesteBGAR1$p.value)
> P_Valores_BG
[1] 0.65472997 0.18085768 0.71219768 0.02602172 0.18866706 0.74774132
> Modelos <- c("ar6model","ar5model","ar4model","ar3model","ar2model","ar1model")
> Resultados <- data.frame(Modelos,P_Valores_BG)
> View(Resultados)
> TesteReset6 <- resettest(ar6model,data=jocci)
Error in model.matrix.formula(formula, data = data) : 
  data must be a data.frame
> TesteReset6 <- resettest(ar6model,data=JOCCI)
> TesteReset5 <- resettest(ar5model,data=JOCCI)
> TesteReset4 <- resettest(ar4model,data=JOCCI)
> TesteReset3 <- resettest(ar3model,data=JOCCI) 
> TesteReset2 <- resettest(ar2model,data=JOCCI) 
> TesteReset1 <- resettest(ar1model,data=JOCCI)
> P_Valores_RESET <- c(TesteReset6$p.value,
                       +                      TesteReset5$p.value,
                       +                      TesteReset4$p.value,
                       +                      TesteReset3$p.value,
                       +                      TesteReset2$p.value,
                       +                      TesteReset1$p.value)
> P_Valores_RESET
[1] 0.5955141 0.6488999 0.6117178 0.5406517 0.6711352 0.6803299
> Resultados <- data.frame(Modelos,P_Valores_BG, P_Valores_RESET)
> View(Resultados)
> variacao_PIB <- read.table("c:/Econometria/variacao.xls", header = T)
> variacao_PIB <- as.data.frame(variacao_PIB[,-1])
> AR1_VAR <- arima(variacao_PIB,c(1,0,0))
> AR2_VAR <- arima(variacao_PIB,c(2,0,0))
> arch.test(AR1_VAR)
ARCH heteroscedasticity test for residuals 
alternative: heteroscedastic 

Portmanteau-Q test: 
  order    PQ p.value
[1,]     4  3.05   0.550
[2,]     8  4.67   0.793
[3,]    12 13.82   0.312
[4,]    16 15.90   0.460
[5,]    20 19.80   0.470
[6,]    24 22.47   0.551
Lagrange-Multiplier test: 
  order     LM  p.value
[1,]     4 21.400 8.69e-05
[2,]     8  8.049 3.28e-01
[3,]    12  2.768 9.93e-01
[4,]    16  1.430 1.00e+00
[5,]    20  0.325 1.00e+00
[6,]    24  0.137 1.00e+00
> arch.test(AR2_VAR)
ARCH heteroscedasticity test for residuals 
alternative: heteroscedastic 

Portmanteau-Q test: 
  order     PQ p.value
[1,]     4  0.289   0.991
[2,]     8  0.770   0.999
[3,]    12  5.192   0.951
[4,]    16  7.331   0.966
[5,]    20  9.574   0.975
[6,]    24 11.820   0.982
Lagrange-Multiplier test: 
  order     LM  p.value
[1,]     4 26.825 6.41e-06
[2,]     8 11.076 1.35e-01
[3,]    12  4.642 9.47e-01
[4,]    16  2.243 1.00e+00
[5,]    20  0.773 1.00e+00
[6,]    24  0.310 1.00e+00