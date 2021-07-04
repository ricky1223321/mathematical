chebyshev = function(k){
  library(ggplot2)
  library(magrittr)
  library(cowplot)
  set.seed(123)
  xs <- c(rnorm(2000))
  lower.bound = mean(xs) - k*sd(xs)
  upper.bound = mean(xs) + k*sd(xs)
  num.in.bounds = length(xs[(xs > lower.bound) & (xs < upper.bound)])
  proportion.in.bounds = round(num.in.bounds/length(xs),digits=4)
  chebyshev.guarantee = round(1-1/k^2, digits = 4)
  hp = qplot(x =xs, fill=..count.., geom="histogram")
  hp %>%
    +geom_vline(aes(xintercept=lower.bound), colour="#990000", linetype="dashed",size=1.5) %>%
    +geom_vline(aes(xintercept=upper.bound), colour="#990000", linetype="dashed",size=1.5) %>%
    +geom_vline(aes(xintercept=mean(xs)), colour="#990000", linetype="dashed",size=1) %>%
    +labs(title = paste("k = ",k),
          subtitle = paste("proportion in bounds = ",proportion.in.bounds),
          caption = paste("chebyshev guarantees at least " , chebyshev.guarantee)) %>%
    +theme(
      plot.title = element_text(size = 14, face = "bold",hjust = 0.5),
      plot.subtitle = element_text(size = 14,hjust = 0.5),
      plot.caption = element_text(size = 14, face = "italic",hjust = 0.5)
    )
}
chebyshev(1)

