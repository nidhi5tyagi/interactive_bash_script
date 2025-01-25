# interactive_bash_script


---

# **Friend Assistant**

A friendly assistant script written in Bash that interacts with the user to perform various tasks like telling jokes, fetching the time, performing calculations, providing weather updates, and even speaking text aloud.

---

## **Features**

1. **Tell a Joke**:
   - Randomly selects a joke from a `jokes.txt` file.
   - If the `jokes.txt` file is missing, it notifies the user.

2. **Display the Current Time**:
   - Fetches and displays the current date and time using the `date` command.

3. **Perform Calculations**:
   - Accepts a simple mathematical expression from the user (e.g., `4 + 5`) and calculates the result.

4. **Get Weather Updates**:
   - Fetches the latest weather information from `wttr.in`.

5. **Text-to-Speech (Optional)**:
   - Converts text into speech using the `espeak` command (requires `espeak` to be installed).

6. **Interactive Mode**:
   - Prompts the user for input and handles commands like `time`, `joke`, `calculate`, `weather`, `speak`, or `exit`.

7. **Non-Interactive Mode**:
   - Allows predefined queries as command-line arguments (e.g., `./friend.sh time`).

---

## **Requirements**

- **Bash Shell**: Ensure Bash is installed on your system.
- **`curl` Command**: Required for fetching weather data.
- **`espeak` Command** (Optional): Required for the `speak` feature.

---

## **How to Use**

### **1. Clone the Repository**
```bash
git clone <repository-url>
cd friend-assistant
```

### **2. Make the Script Executable**
```bash
chmod +x friend.sh
```

### **3. Prepare the `jokes.txt` File**
Create a file named `jokes.txt` in the same directory, with each joke on a new line:
```
Why did the scarecrow win an award? Because he was outstanding in his field!
Why don't programmers like nature? It has too many bugs.
Why do cows have hooves instead of feet? Because they lactose.
```

### **4. Run the Script**
#### **Interactive Mode**
Run the script without arguments to start the interactive interface:
```bash
./friend.sh
```

#### **Non-Interactive Mode**
Run the script with a predefined query:
```bash
./friend.sh time      # Display the current time
./friend.sh joke      # Tell a random joke
./friend.sh calculate # Perform a calculation
./friend.sh weather   # Get the weather forecast
./friend.sh speak     # Speak text aloud
```

---

## **Examples**

### **Interactive Session**
```
Hello! I am your friendly assistant. How can I help you today?
What would you like to know? (time, joke, calculate, weather, speak, exit)
> joke
Here's a joke: Why don't programmers like nature? It has too many bugs.

> time
The current time is: Mon Jan 25 15:00:00 UTC 2025

> weather
Fetching weather information...
[Weather data appears here]

> exit
Goodbye!
```

---

## **Customizations**

1. **Add More Jokes**:
   - Edit the `jokes.txt` file to include more jokes.

2. **Change Weather Source**:
   - Replace `curl -s wttr.in` in the `tell_weather` function with a different weather API.


