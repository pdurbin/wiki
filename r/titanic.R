load("~/data/Titanic.RData")
#View(Titanic) # used in RStudio
options(digits=2) # enough precision
options(echo=TRUE) # see commands run by Rscript
options(warn=-1) # warnings from `library` are annoying
options(device="png") # instead of Rplots.pdf
out <- capture.output(suppressMessages(library("mosaic")))
# conduct analyses of Titanic data
# frequency table of counts with marginal totals
tally(~Survived, format = "count", data = Titanic, margins = TRUE)
# bar graph of survival
bargraph(~Survived, data = Titanic)
# frequency table of propotions with marginal totals
tally(~Survived, format = "proportion", data = Titanic, margins = TRUE)
# frequency table of percentages with marginal totals
tally(~Survived, format = "percent", data = Titanic, margins = TRUE)
# pie chart of survival
pie(tally(~Survived, format = "count", data = Titanic))
# contingency table of counts
tally(~Class + Survived, format = "count", margins=TRUE, data = Titanic)
# contingency table of proportions without conditioning
tally(~Class + Survived, format = "proportion", margins=TRUE, data = Titanic)
# contingency table of percentages without conditioning,
tally(~Class + Survived, format = "percent", margins=TRUE, data = Titanic)
# conditioning on survival
# Of those who survived, what percentage were in the lower class? (31%)
tally(~Class | Survived, format = "percent", data = Titanic, margins=TRUE)
# conditioning on passenger class
# Of those in the lower class, what percent survived? (26%)
tally(~Survived | Class, format = "percent", data = Titanic, margins=TRUE)
# Dodged Bar Graph: Survival with Class Subgroups
bargraph(~Survived, groups=Class, auto.key=TRUE, data=Titanic)
# Dodged Bar Graph: Class with Survival Subgroups
bargraph(~Class, groups=Survived, auto.key=TRUE, data=Titanic)
# Stacked Bar Graph: Survival with Class Subgroups
bargraph(~Survived, groups=Class, auto.key=TRUE, stack=TRUE, data=Titanic)
# Stacked Bar Graph: Class with Survival Subgroups
bargraph(~Class, groups=Survived, auto.key=TRUE, stack=TRUE, data=Titanic)
# Unconditional Distribution of Survival and Conditional Distributions of Class
mosaicplot(~Survived + Class, color=TRUE, data=Titanic)
# Distributions of class conditional on survival
tally(~Class | Survived, format = "percent", data = Titanic, margins=TRUE)
# Unconditional Distribution of Class and Conditional Distributions of Survival
mosaicplot(~Class + Survived, color=TRUE, data=Titanic)
# Distributions of survival conditional on class
tally(~Survived | Class, format = "percent", data = Titanic, margins=TRUE)
