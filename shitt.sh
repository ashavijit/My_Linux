linuxSetup(){
    cp .shit.sh ~/
    echo 'source ~/.shit.sh' >> ~/.bashrc
    source ~/.bashrc
}

macSetup(){
    cp .shit.sh ~/
    echo 'source ~/.shit.sh' >> ~/.bash_profile
    echo 'source ~/.shit.sh' >> ~/.zshrc
    source  ~/.bash_profile 
    source  ~/.zshrc
}


echo welcome, $USER
echo what\'s your operating system?
echo 1. Linux
echo 2. Mac
read os
if [[ $os == "1" || $os == "linux" ]]; then
    linuxSetup
elif [[ $os == "2" || $os == "mac" ]]; then
    macSetup
else
    echo wrong input!

fi