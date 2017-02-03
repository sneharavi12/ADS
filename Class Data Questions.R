#importing csv into R
classdata<-read.csv("classdata.csv")
class(classdata)


#Q1 (a) Min, Max, Average and Median of GPA 
mingpa<-min(classdata$GPA)
maxgpa<-max(classdata$GPA)
avggpa<-mean(classdata[["GPA"]])
mediangpa<-median(classdata$GPA)
cat("Class Minimum GPA: ",mingpa)
cat("Class Maximun GPA: ",maxgpa)
cat("Class Mean GPA: ",avggpa)
cat("Class Median GPA: ",mediangpa)

#Q1 (b) Min, Max, Average and Median of Work Experience

min_wex<-min(classdata$Years.of.work.experience)
max_wex<-max(classdata$Years.of.work.experience)
avg_wex<-mean(classdata[["Years.of.work.experience"]])
median_wex<-median(classdata$Years.of.work.experience)

cat("Class Minimum Work Exp: ",min_wex)
cat("Class Maximun Work Exp: ",max_wex)
cat("Class Mean Work Exp: ",avg_wex)
cat("Class Median Work Exp: ",median_wex)

#Q2. Mode of Salary
estimate_modegetmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
sal_mode=estimate_mode(classdata$Latest.salary..per.year.)
sal_mode

#Q3. %age of Students having a co-op
co_op<-toupper(classdata$Coops.Internships..YN.)
number_y<-length(which(co_op=="Y"))
number_n<-length(which(co_op=="N"))
pct_y<-(number_y/(number_y+number_n))*100
pct_n<-(number_n/(number_y+number_n))*100
cat("Pct students with co_op = ", pct_y,"%")
cat("Pct students without co_op = ", pct_n,"%")

#Q4. Number of people with more than 500 students 
linked_in<-length(which(classdata$Number.of.contacts.on.Linkedin>500))
cat("Number of people with more than 500 students =", linked_in)

#Q5. Interquartile range for Expected Salary
sal_iqr<-IQR(classdata$Expected.Salary.after.graduation)
cat("Interquartile range for Expected Salary",sal_iqr)