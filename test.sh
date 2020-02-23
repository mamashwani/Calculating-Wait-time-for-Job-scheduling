#Compile the code
# if the file JobScheduling exits then remove it
if [ -f JobScheduling ]; then
    rm JobScheduling
fi
g++ -std=c++11 *.cpp -o JobScheduling
# if the file JobScheduling does not exit then exit the test
if [ ! -f JobScheduling ]; then
    echo -e "\033[1;91mCompile FAILED.\033[0m"
    exit
fi
# clean
if [ -f *.out ]; then
    rm *.out
fi
if [ -f *.stderr ]; then
    rm *.stderr
fi
if [ -f *.stdcout ]; then
    rm *.stdcout
fi
#rm *.out *.stderr *.stdcout
# For test case 1
# input 1.txt and output 1.out
./JobScheduling "input=input21.txt;output=output21.txt" 1>1.stdcout 2>1.stderr
# compare 1.out with 1.ans, output the difference to 1.diff
diff -iEBwu ans21.txt output21.txt > 1.diff
# if diff returns nothing, it means you pass the test case (Your ourput file 1.out is correct)
if [ $? -ne 0 ]; then
    # display "test case 1 FAILED" to the screen. The word "FAILED" is highlighted in Red color
    echo -e "Test case 1    \033[1;91mFAILED.\033[0m"
else
    # display "test case 1 PASSED" to the screen. The word "PASSED" is highlighted in Green color
    echo -e "Test case 1    \033[1;92mPASSED.\033[0m"
    # remove the file 1.diff
    rm -f 1.diff
fi
# For test case 2
./JobScheduling "input=input22.txt;output=output22.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans22.txt output22.txt > 2.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 2    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 2    \033[1;92mPASSED.\033[0m"
    rm -f 2.diff
fi
# For test case 3
./JobScheduling "input=input23.txt;output=output23.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans23.txt output23.txt > 3.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 3    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 3    \033[1;92mPASSED.\033[0m"
    rm -f 3.diff
fi
# For test case 4
./JobScheduling "input=input24.txt;output=output24.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans24.txt output24.txt > 4.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 4    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 4    \033[1;92mPASSED.\033[0m"
    rm -f 4.diff
fi
# For test case 5
./JobScheduling "input=input25.txt;output=output25.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans25.txt output25.txt > 5.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 5    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 5    \033[1;92mPASSED.\033[0m"
    rm -f 5.diff
fi
# For test case 6
./JobScheduling "input=input26.txt;output=output26.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans26.txt output26.txt > 6.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 6    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 6    \033[1;92mPASSED.\033[0m"
    rm -f 6.diff
fi
# For test case 7
./JobScheduling "input=input27.txt;output=output27.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans27.txt output27.txt > 7.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 7    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 7    \033[1;92mPASSED.\033[0m"
    rm -f 7.diff
fi
# For test case 8
./JobScheduling "input=input28.txt;output=output28.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans28.txt output28.txt > 8.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 8    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 8    \033[1;92mPASSED.\033[0m"
    rm -f 8.diff
fi
# For test case 9
./JobScheduling "input=input29.txt;output=output29.txt" 1>1.stdcout 2>1.stderr
diff -iEBwu ans29.txt output29.txt > 9.diff
if [ $? -ne 0 ]; then
    echo -e "Test case 9    \033[1;91mFAILED.\033[0m"
else
    echo -e "Test case 9    \033[1;92mPASSED.\033[0m"
    rm -f 9.diff
fi
