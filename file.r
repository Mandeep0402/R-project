> View(Mall_Customers)
> customer_data=read.csv("~/R-Project/Mall_Customers.csv")
> str(customer_data)
'data.frame':	200 obs. of  5 variables:
 $ CustomerID            : int  1 2 3 4 5 6 7 8 9 10 ...
 $ Gender                : chr  "Male" "Male" "Female" "Female" ...
 $ Age                   : int  19 21 20 23 31 22 35 23 64 30 ...
 $ Annual.Income..k..    : int  15 15 16 16 17 17 18 18 19 19 ...
 $ Spending.Score..1.100.: int  39 81 6 77 40 76 6 94 3 72 ...
> 
> names(customer_data)
[1] "CustomerID"             "Gender"                 "Age"                   
[4] "Annual.Income..k.."     "Spending.Score..1.100."
> head(customer_data)
  CustomerID Gender Age Annual.Income..k.. Spending.Score..1.100.
1          1   Male  19                 15                     39
2          2   Male  21                 15                     81
3          3 Female  20                 16                      6
4          4 Female  23                 16                     77
5          5 Female  31                 17                     40
6          6 Female  22                 17                     76
> summary(customer_data$Age)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  18.00   28.75   36.00   38.85   49.00   70.00 
> sd(customer_data$Age)
[1] 13.96901
> summary(customer_data$Annual.Income..k..)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  15.00   41.50   61.50   60.56   78.00  137.00 
> sd(customer_data$Annual.Income..k..)
[1] 26.26472
> summary(customer_data$Age)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  18.00   28.75   36.00   38.85   49.00   70.00 
> sd(customer_data$Spending.Score..1.100.)
[1] 25.82352
> a=table(customer_data$Gender)
> barplot(a,main="Using BarPlot to display Gender Comparision",
+         ylab="Count",
+         xlab="Gender",
+         col=rainbow(2),
+         legend=rownames(a))
> pct=round(a/sum(a)*100)
> lbs=paste(c("Female","Male")," ",pct,"%",sep=" ")
> library(plotrix)
Error in library(plotrix) : there is no package called ‘plotrix’
> pie3D(a,labels=lbs,
+       main="Pie Chart Depicting Ratio of Female and Male")
Error in pie3D(a, labels = lbs, main = "Pie Chart Depicting Ratio of Female and Male") : 
  could not find function "pie3D"
> install.packages("packagename")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
Warning in install.packages :
  package ‘packagename’ is not available for this version of R

A version of this package for your version of R might be available elsewhere,
see the ideas at
https://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Installing-packages
> install.packages("plotrix")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/plotrix_3.8-1.zip'
Content type 'application/zip' length 1138090 bytes (1.1 MB)
downloaded 1.1 MB

package ‘plotrix’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Mandeep Jaglan\AppData\Local\Temp\RtmpA7WyIG\downloaded_packages
> library(plotrix)
> require(plotrix)
> pct=round(a/sum(a)*100)
> lbs=paste(c("Female","Male")," ",pct,"%",sep=" ")
> library(plotrix)
> pie3D(a,labels=lbs,
+       main="Pie Chart Depicting Ratio of Female and Male")
> summary(customer_data$Age)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  18.00   28.75   36.00   38.85   49.00   70.00 
> hist(customer_data$Age,
+      col="blue",
+      main="Histogram to Show Count of Age Class",
+      xlab="Age Class",
+      ylab="Frequency",
+      labels=TRUE)
> boxplot(customer_data$Age,
+         col="ff0066",
+         main="Boxplot for Descriptive Analysis of Age")
Error in xypolygon(xx, yy, lty = "blank", col = boxfill[i]) : 
  invalid color name 'ff0066'
> boxplot(customer_data$Age,
+         main="Boxplot for Descriptive Analysis of Age")
> summary(customer_data$Annual.Income..k..)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
  15.00   41.50   61.50   60.56   78.00  137.00 
> hist(customer_data$Annual.Income..k..,
+      col="#660033",
+      main="Histogram for Annual Income",
+      xlab="Annual Income Class",
+      ylab="Frequency",
+      labels=TRUE)
> plot(density(customer_data$Annual.Income..k..),
+      col="yellow",
+      main="Density Plot for Annual Income",
+      xlab="Annual Income Class",
+      ylab="Density")
> polygon(density(customer_data$Annual.Income..k..),
+         col="#ccff66")
> summary(customer_data$Spending.Score..1.100.)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00   34.75   50.00   50.20   73.00   99.00 
> 
> Min. 1st Qu. Median Mean 3rd Qu. Max. 
Error: unexpected numeric constant in "Min. 1"
> ## 1.00 34.75 50.00 50.20 73.00 99.00
> 
> boxplot(customer_data$Spending.Score..1.100.,
+         horizontal=TRUE,
+         col="#990000",
+         main="BoxPlot for Descriptive Analysis of Spending Score")
> hist(customer_data$Spending.Score..1.100.,
+      main="HistoGram for Spending Score",
+      xlab="Spending Score Class",
+      ylab="Frequency",
+      col="#6600cc",
+      labels=TRUE)
> library(purrr)
Error in library(purrr) : there is no package called ‘purrr’
> set.seed(123)
> iss <- function(k) {
+     kmeans(customer_data[,3:5],k,iter.max=100,nstart=100,algorithm="Lloyd" )$tot.withinss
+ }
> 
> k.values <- 1:10
> 
> 
> iss_values <- map_dbl(k.values, iss)
Error in map_dbl(k.values, iss) : could not find function "map_dbl"
> 
> plot(k.values, iss_values,
+      type="b", pch = 19, frame = FALSE, 
+      xlab="Number of clusters K",
+      ylab="Total intra-clusters sum of squares")
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  object 'iss_values' not found
> install.packages("purrr")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/purrr_0.3.4.zip'
Content type 'application/zip' length 428718 bytes (418 KB)
downloaded 418 KB

package ‘purrr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Mandeep Jaglan\AppData\Local\Temp\RtmpA7WyIG\downloaded_packages
> library(purrr)
> require(purrr)
> library(purrr)
> set.seed(123)
> iss <- function(k) {
+     kmeans(customer_data[,3:5],k,iter.max=100,nstart=100,algorithm="Lloyd" )$tot.withinss
+ }
> 
> k.values <- 1:10
> 
> 
> iss_values <- map_dbl(k.values, iss)
> 
> plot(k.values, iss_values,
+      type="b", pch = 19, frame = FALSE, 
+      xlab="Number of clusters K",
+      ylab="Total intra-clusters sum of squares")
> k6<-kmeans(customer_data[,3:5],6,iter.max=100,nstart=50,algorithm="Lloyd")
> s6<-plot(silhouette(k6$cluster,dist(customer_data[,3:5],"euclidean")))
Error in silhouette(k6$cluster, dist(customer_data[, 3:5], "euclidean")) : 
  could not find function "silhouette"
> 
> library(cluster) 
> library(gridExtra)
Error in library(gridExtra) : there is no package called ‘gridExtra’
> library(grid)
> install.packages("gridExtra")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:

https://cran.rstudio.com/bin/windows/Rtools/
also installing the dependency ‘gtable’

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gtable_0.3.0.zip'
Content type 'application/zip' length 433980 bytes (423 KB)
downloaded 423 KB

trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.1/gridExtra_2.3.zip'
Content type 'application/zip' length 1109325 bytes (1.1 MB)
downloaded 1.1 MB

package ‘gtable’ successfully unpacked and MD5 sums checked
package ‘gridExtra’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Mandeep Jaglan\AppData\Local\Temp\RtmpA7WyIG\downloaded_packages
> library(cluster) 
> library(gridExtra)
> library(grid)
> k6<-kmeans(customer_data[,3:5],6,iter.max=100,nstart=50,algorithm="Lloyd")
> s6<-plot(silhouette(k6$cluster,dist(customer_data[,3:5],"euclidean")))
> k6<-kmeans(customer_data[,3:5],6,iter.max=100,nstart=50,algorithm="Lloyd")
> k6
K-means clustering with 6 clusters of sizes 22, 35, 45, 38, 39, 21

Cluster means:
       Age Annual.Income..k.. Spending.Score..1.100.
1 25.27273           25.72727               79.36364
2 41.68571           88.22857               17.28571
3 56.15556           53.37778               49.08889
4 27.00000           56.65789               49.13158
5 32.69231           86.53846               82.12821
6 44.14286           25.14286               19.52381

Clustering vector:
  [1] 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6 1 6
 [40] 1 3 1 3 4 6 1 3 4 4 4 3 4 4 3 3 3 3 3 4 3 3 4 3 3 3 4 3 3 4 4 3 3 3 3 3 4 3 4
 [79] 4 3 3 4 3 3 4 3 3 4 4 3 3 4 3 4 4 4 3 4 3 4 4 3 3 4 3 4 3 3 3 3 3 4 4 4 4 4 3
[118] 3 3 3 4 4 4 5 4 5 2 5 2 5 2 5 4 5 2 5 2 5 2 5 2 5 4 5 2 5 2 5 2 5 2 5 2 5 2 5
[157] 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2 5 2
[196] 5 2 5 2 5

Within cluster sum of squares by cluster:
[1]  4099.818 16690.857  8062.133  7742.895 13972.359  7732.381
 (between_SS / total_SS =  81.1 %)

Available components:

[1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss"
[6] "betweenss"    "size"         "iter"         "ifault"