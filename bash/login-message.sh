#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
USER="karan"
hostname=$(hostname)

weekday=`date +"%A"`
time=`date +"%T"`

if [ "$weekday" == "Monday" ]; then  heading="Monday is nice"
elif [ "$weekday" == "Tuesday" ]; then heading="Tuesday is beautiful"
elif [ "$weekday" == "Wednesday" ]; then heading="Wednesday is charming"
elif [ "$weekday" == "Thursday" ]; then heading="Thursday  is boring"
elif [ "$weekday" == "Friday" ]; then heading="Friday  is wonderful"
elif [ "$weekday" == "Saturday" ]; then heading="Saturday  is calming"
elif [ "$weekday" == "Sunday" ]; then heading="Sunday  is awesome"

fi

display=$(cat <<EOF

WELCOME to planet $hostname, "$heading $USER!"

It is $weekday at $time

EOF
)
###############
# Main        #
###############

cat <<EOF

$(cowsay $display)

EOF
