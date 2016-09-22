## ---- echo = FALSE-------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")

## ---- fig.show='hold'----------------------------------------------------
library(ggplot2)
data(iris)
ggplot(iris, aes(x=Petal.Length, y=Petal.Width, color=Species)) + geom_point() + geom_smooth()

## ---- fig.show='hold'----------------------------------------------------
library(plotluck)
plotluck(Petal.Width~Petal.Length|Species, iris)

## ---- fig.show='hold'----------------------------------------------------
library(gapminder)
plotluck(.~1, gapminder)

## ---- fig.show='hold', warning=FALSE-------------------------------------
opts <- plotluck.options(verbose=TRUE)
plotluck(lifeExp~., weights=pop, data=gapminder, opts=opts)

## ---- fig.show='hold', warning=FALSE-------------------------------------
plotluck(lifeExp~continent, weights=pop, data=gapminder, opts=opts)

## ---- fig.show='hold'----------------------------------------------------
plotluck(lifeExp~continent+country, weights=pop, data=gapminder, opts=opts)

## ---- fig.show='hold'----------------------------------------------------
plotluck(lifeExp~year|continent, weights=pop, data=gapminder, opts=opts)

## ---- fig.show='hold'----------------------------------------------------
set.seed(6)
sample.plotluck(gapminder,weights=pop,opts)

