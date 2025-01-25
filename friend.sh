#!/bin/bash

# Function to tell a joke
tell_joke() {
    jokes_file="jokes.txt"  # This file contains jokes, one per line.
    # Check if jokes.txt exists
    if [[ ! -f "$jokes_file" ]]; then
        echo "No jokes file found!"
        return
    fi

    # Randomly select a joke using shuf
    joke=$(shuf -n 1 "$jokes_file")
    echo "Here's a joke: $joke"
}

# Function to tell the time
tell_time() {
    echo "The current time is: $(date)"
}

# Function to perform a calculation
calculate() {
    echo "Please enter a simple calculation (e.g., 4 + 5):"
    read calculation
    result=$((calculation))
    echo "The result is: $result"
}

# Function for weather (using wttr.in)
tell_weather() {
    echo "Fetching weather information..."
    curl -s wttr.in
}

# Function for text-to-speech using espeak (optional)
say_something() {
    echo "What would you like me to say?"
    read text
    espeak "$text"
}

# Interactive interface (asks for user input)
interactive() {
    echo "Hello! I am your friendly assistant. How can I help you today?"
    echo "You can ask me to tell you the time, a joke, calculate something, or even get the weather."

    while true; do
        echo "What would you like to know? (time, joke, calculate, weather, speak, exit)"
        read input
        case $input in
            time) tell_time ;;
            joke) tell_joke ;;
            calculate) calculate ;;
            weather) tell_weather ;;
	    speak) say_something ;;
	    exit) echo "Goodbye!"; break ;;
            *) echo "Sorry, I didn't understand that. Try again." ;;
        esac
    done
}

# Non-interactive interface (automatically responds to predefined queries)
non_interactive() {
    case $1 in
        time) tell_time ;;
        joke) tell_joke ;;
        calculate) calculate ;;
        weather) tell_weather ;;
	speak) say_something ;;
        *) echo "Please provide a valid option: time, joke, calculate, weather,speak." ;;
    esac
}

# Main logic
if [ $# -eq 0 ]; then
    interactive  # If no arguments are provided, run interactively
else
    non_interactive "$1"  # If an argument is provided, handle it non-interactively
fi

