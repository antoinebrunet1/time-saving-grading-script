<h1 align="center">
<picture>
  <source srcset="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.webp" type="image/webp">
  <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="32" height="32">
</picture> Time saving grading script <picture>
  <source srcset="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.webp" type="image/webp">
  <img src="https://fonts.gstatic.com/s/e/notoemoji/latest/1f680/512.gif" alt="🚀" width="32" height="32">
</picture>
</h1>

## ℹ️ Context ℹ️

This script I built made me save 30 minutes by automating the verification of the success of some commands when I was grading a particular team project for INF2050 - Software development tools and practices at UQAM University during the Fall 2025 semester.

## 💡 About my algorithm 💡

This is my script:

```bash
#!/bin/bash

mvn checkstyle:checkstyle > /dev/null 2> /dev/null 

echo $?

mvn clean compile > /dev/null 2> /dev/null 

echo $?

mvn clean test > /dev/null 2> /dev/null 

echo $?

mvn clean package > /dev/null 2> /dev/null 

echo $?

exit 0
```

It is used to indicate if each of the following commands is successful or not:

1. `mvn checkstyle:checkstyle`
2. `mvn clean compile`
3. `mvn clean test`
4. `mvn clean package`

The first line indicates that it is a Bash script.

Then, each command is run with

```
> /dev/null 2> /dev/null
```

to the right of it to silence standard and error messages in the console because the script prints the exit code with the line just underneath which is

```
echo $?
```

which indicates that the command was successful only if it prints `0`.

The last line which is

```
exit 0
```

exits the script with a successful exit code.
