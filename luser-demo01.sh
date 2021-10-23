#!/bin/bash

#!/ shabang 
# Hello from the main OS

# Display 'Hello'

echo 'Hello'

#Assign a value to a variable 
WORD='script'

echo "$WORD"

echo '$WORD'

#combine the varable with hard-coded text
echo "this is shell ${WORD}"

#Append text to variable. 
echo "${WORD}ing is fun"

#Crate a new variable 
ENDING='ed'

#Combine two variables 

echo "This is ${WORD}${ENDING}"

#Change the value stored in the ENDING variable 
ENDING='ing'

#Reassign value to ENDING 
ENDING='s'

echo "${WORD}$ENDING"
