
function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "Please enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "Your guess is Lesser then the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater then the true number"
        else
            echo "Congratulations!!,you are right!"
        break;
        fi
    done
}
echo "guess the files number in the current directory!"
guess
