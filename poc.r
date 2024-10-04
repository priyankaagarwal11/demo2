a=10
my_num = 10
print(a)
print(my_num)

# function -  set of instruction  
# (a) User Defined Function (b) Library function
# <name of the function>(<arguement>)
getwd()

#Data Types: (a) Integer = 1,2,3... (b) Float = 1.2,... 
# (c) String = "Avinash" (d) bool = True/False


a=10
b=10.2
c="Avinash"

# Data Structure (data container)

# Vector

my_vector= c(10122,10123,10124) #c-->combined

my_vector_name = c("Victor","Sam","Matt")

my_vector[1]
my_vector[1:3]
my_vector[c(1,3)]

my_vector_name[2]="Avinash"
my_vector_name

sum(1,2)
sum(my_vector)
mean(my_vector)
log(my_vector)
sd(my_vector)
var(my_vector)

# Dataframe - 2D da structure
# Collection of row & column (Vector)
# Each vector will be one column

my_first_DF = data.frame(my_vector,my_vector_name)
View(my_first_DF)

my_first_DF = data.frame("IDs"=my_vector,"Name"=my_vector_name)
View(my_first_DF)


#ADD COLUMN
my_first_DF$City=c("Delhi","London","Brisbane")

#ADD ROW
new_row=data.frame("IDs"=10125,"Name"="Aamir","City"="Dubai")
my_first_DF=rbind(my_first_DF,new_row)


my_first_DF[1,1]
# row = 1 to 3; col = 1
my_first_DF[1:3,1]
# row = 1 and 3; col = 1 and 3
my_first_DF[c(1,3),c(1,3)]

my_first_DF[-1,-1]

names(my_first_DF)
max(my_first_DF$IDs)


DF1=read.csv("clustering-Publication-old.csv")
View(DF1)

library(readxl)
DF2=read_xlsx("DA.xlsx")
View(DF2)


#conditional statement (if/else)
3>2

if(3>2){
  print("I will say YESSS")
}else{
  print("I will say NOOO")
}

# &, |

(3>2) & (2>3)
(3>2) | (2>3)


if((3>2) & (2>3)){
  print("I will say YESSS")
}else{
  print("I will say NOOO")
}  

#>, <, == 
3==3
3!=3

# for loop 
# Iterator
# List

1:10

for(my_it in (1:10)){
  print(my_it)
}

for(my_it in my_vector_name){
  print(my_it)
}


for (i in my_vector_name){
  if(i=="Avinash"){
    print("Avinash is found")
  }
}

for (i in my_vector_name){
  if(i=="Velu"){
    print("Velu is found")
  }else{
    print("Velu is not found")
  }
}


for (i in my_vector_name){
  if(i=="Velu"){
    flag=2
    break
  }else{
    flag=0
  }
}
if(flag==0){
  print("Velu is not found")
}
if(flag==2){
  print("Velu is found")
}


for (i in my_vector_name){
  if(i=="Avinash"){
    flag=2
    break
  }else{
    flag=0
  }
}
if(flag==0){
  print("Avinash is not found")
}
if(flag==2){
  print("Avinash is found")
}





#Function

# <Name of the Function> = function(<Arguments>){}

#Definition of Function
square_myFunction = function(var){
  output=var*var
  return(output)
}


result=square_myFunction(2)

find_name=function(query){
  for (i in my_vector_name){
    if(i==query){
      flag=2
      break
    }else{
      flag=0
    }
  }
  if(flag==0){
    print(paste(query," is not found"))
  }
  if(flag==2){
    print(paste(query," is found"))
  }
}



find_name("Avinash")
find_name("Velu")


length(DF1$Cluster)





























