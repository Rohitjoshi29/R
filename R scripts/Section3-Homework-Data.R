#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

# Profit
profit <- revenue-expenses
profit <- round(profit,-3)

# Profit - tax
profit_minus_tax <- profit * 0.3
profit_minus_tax

# profit margin
profit_margin <- profit_minus_tax/revenue
profit_margin

?mean
?max
# good months
gm <-  profit_minus_tax > mean(profit_minus_tax)
!gm

mean(profit_minus_tax)
max(profit_minus_tax)
min(profit_minus_tax)