library(ggplot2)


dash_theme <- function () { 
  theme_bw(base_size=12, base_family="Avenir") %+replace% 
    theme(
      panel.background  = element_blank(),
      plot.background = element_rect(fill="gray96", colour=NA), 
      legend.background = element_rect(fill="transparent", colour=NA),
      legend.key = element_rect(fill="transparent", colour=NA)
    )
}


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  dash_theme()


