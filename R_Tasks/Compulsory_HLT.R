library(ggplot2)

data(trees)

trees

#adding colour to data points
ggplot(data = trees) + 
  geom_point(mapping = aes(x = Height, y = Girth, color = Volume))


ggplot(data = trees) + 
  geom_point(mapping = aes(x = Height, y = Girth, color = "blue"))
             
             
             #chaning size of data points
             ggplot(data = trees) + 
               geom_point(mapping = aes(x = Height, y = Girth, size = Volume))
             
             #aplha changes transparency of points
             ggplot(data = trees) + 
               geom_point(mapping = aes(x = Height, y = Girth, alpha = Volume))
             
             
             
             #bar chart
             ggplot(data=trees, aes(x=Height, y=Volume)) +
               geom_bar(stat="identity", width=0.5)
             
             # Change colors
             ggplot(data=trees, aes(x=Girth, y=Volume)) +
               geom_bar(stat="identity", color="blue", fill="white")
             
             # Minimal theme + blue fill color
             ggplot(data=trees, aes(x=Height, y=Volume)) +
               geom_bar(stat="identity", fill="steelblue")+
               theme_minimal()

             