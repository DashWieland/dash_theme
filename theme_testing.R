library(ggplot2)


dash_theme <- function () { 
  theme_bw(base_size=12, base_family="Avenir") %+replace% 
    theme(
      # Background for plot, panel, and legend
      # Green for the plot/panel, and transparent for the 
      # legend background and key 
      panel.background  = element_rect(fill = "#C3B59F", color = NA),
      plot.background = element_rect(fill = "#C3B59F", color = NA), 
      legend.background = element_rect(fill="transparent"),
      legend.key = element_rect(fill="transparent"),
      # Title, subtitle, and caption 
      # Axis title, text and ticks
      axis.title = element_text(face = "bold",
                                colour = "#304148"), 
      axis.text = element_text(colour = "#304148"),
      axis.ticks = element_line(colour = "#DED6CA", 
                              size = 0.6, 
                              linetype = "dotted"),
      axis.line = element_line(colour = "#304148"),
      # Legend
      legend.text = element_text(colour = "#304148"), 
      legend.title = element_text(face = "bold",
                                  colour = "#304148"),
      # Panel grid and background
      panel.grid.major = element_line(colour = "#DED6CA", 
                                      size = 0.6,
                                      linetype = "dotted"), 
      panel.grid.minor = element_line(color = "#DED6CA", 
                                      size = 0.3,
                                      linetype = "dotted"),
      panel.border = element_rect(fill = NA, color = NA)
      )
}


ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  labs(title = "Weekly Average Bike Traffic in Seattle", 
       x = "Week of Year",
       y = "Average Bike Count", 
       colour = "Crossing / Counting Station", 
       subtitle = "The average number of bikes passing each counting station, aggregated by week of the year",
       caption = "Made by @DashWieland for #TidyTuesday") +
  dash_theme()

######
a <- seq(1, 20)
b <- a^0.25
df <- as.data.frame(cbind(a, b))
myplot = ggplot(df, aes(x = a, y = b)) + geom_point()
myplot + theme(panel.border = element_blank())




