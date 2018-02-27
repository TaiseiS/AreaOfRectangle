-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------


--local variables
local areaText
local textsize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

local myCircle
local radius = 100
local PI = 3.14
local areaOfCircle
local areaTextCircle

--background colour
display.setDefault("background", 0.1, 0.3, 0.95)

--remove status bar
display.setStatusBar(display.HiddenStatusBar)

--Add Rectangle
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor points
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set border
myRectangle.strokeWidth = 20

--set rectangle fill colour
myRectangle:setFillColor(1, 0, 1)

--set rectangle stroke colour
myRectangle:setStrokeColor(0, 1, 0)

--Calculate area
areaOfRectangle = widthOfRectangle * heightOfRectangle

--write area on sceen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, 20)

--anchor text
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set text colour
areaText:setTextColor(1, 0.7, 1)

--create new cicle
myCircle = display.newCircle( 100, 100, 100 )

--set stroke width
myCircle.strokeWidth = 5

--set fill colour
myCircle:setFillColor(0, 1, 1)

--set stroke colour
myCircle:setStrokeColor(0.9, 0.68, 0.2)

--anchor points
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 700
myCircle.y = 20

--set area of circle
areaOfCircle = PI * radius ^ 2

areaTextCircle = display.newText("The area of this cicle with a radius of \n" ..
	radius .. " is " .. areaOfCircle .. " pixels².", 0, 0, Arial, 20)

areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 660
areaTextCircle.y = display.contentHeight/2