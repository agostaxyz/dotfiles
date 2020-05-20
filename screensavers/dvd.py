import turtle

import random

import os
from turtle import Turtle

wn = turtle.Screen()
wn.title("DVD")
wn.bgcolor("black")
wn.setup(width=1280, height=720)
wn.tracer(0)

# DVD_1
DVD_1:Turtle = turtle.Turtle()
DVD_1.speed(0)
DVD_1.shape("circle")
DVD_1.color("white")
DVD_1.shapesize(stretch_len=10, stretch_wid=5)
DVD_1.penup()
DVD_1.goto(0, 0)
DVD_1.dx = random.randint(-10, 10)
DVD_1.dy = random.randint(-10, 10)



#Pen
pen = turtle.Turtle()
pen.speed (0)
pen.color ("white")
pen.penup()
pen.hideturtle()
pen.goto (0,0)
pen.write ("0", align="center", font=("Courier", 24, "normal"))

#Counts
count = 0


while True:
    wn.update( )
    DVD_1.sety(DVD_1.ycor() + DVD_1.dy)
    DVD_1.setx(DVD_1.xcor() + DVD_1.dx)

    if DVD_1.ycor() > 300:
        DVD_1.sety(300)
        DVD_1.dy *= -1
        DVD_1.color("green")
        count += 1
        if count == 1:
            os.system("afplay Republic.wav&")
        pen.clear()
        pen.write("{}".format(count), align="center", font=("Courier", 24, "normal"))

    if DVD_1.ycor() < -300:
        DVD_1.sety(-300)
        DVD_1.dy *= -1
        DVD_1.color("red")
        count += 1
        if count == 1:
            os.system("afplay Republic.wav&")
        pen.clear()
        pen.write("{}".format(count), align="center", font=("Courier", 24, "normal"))

    if DVD_1.xcor() > 540:
        DVD_1.setx(540)
        DVD_1.dx *= -1
        DVD_1.color("blue")
        count += 1
        pen.clear()
        pen.write("{}".format(count), align="center", font=("Courier", 24, "normal"))

    if DVD_1.xcor() < -540:
        DVD_1.setx(-540)
        DVD_1.dx *= -1
        DVD_1.color("pink")
        count += 1
        pen.clear()
        pen.write("{}".format(count), align="center", font=("Courier", 24, "normal"))