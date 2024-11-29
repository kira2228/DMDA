x <- c(1,2,3,4,4,56,7,0)
result.mean <- mean(x)
print(result.mean) 

x <- c(1,2,3,4,4,56,7,0)
result.median <- median(x)
print(result.median)

getmode <- function(v){
    uniqv <- unique(v)
    uniqv[which.max(tabulate(match(v,uniqv)))]
}
v <- c(2,2,2,1,3,1,2)
result <- getmode(v)
print(result)
