#!/bin/bash

#################################################
#   Ichimaki kasura's Command Bash set list     #
#                                               #
#   This is my personal commands that I made    #
#   feel free to use it on your own if you like #
#################################################

#     IMPORTANT BEFORE USING ALL OF THE COMMANDS
#   (some may not work you if don't set this first)
#
#   Add these to your PATH:
#   
#   [NOTE: I have VS2022 if you have different version just always find the "MSBUILD" folder's bin.]
#   %PROGRAMFILES%\Microsoft Visual Studio\2022\Community\MSBuild\Current\Bin
#
#   [NOTE: I always build on x64 platform so you can change it to x86 because the name is still the same "CL.exe"]
#   %PROGRAMFILES%\Microsoft Visual Studio\2022\Community\VC\Tools\MSVC\14.34.31933\bin\Hostx64\x64
#
#   %PROGRAMFILES%\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build

STRCOM="g++ *.cpp"

# Remove or comment this out if you don't have oh-my-posh
eval "$(oh-my-posh init bash --config C:/Users/Administrator/AppData/Local/Programs/oh-my-posh/themes/jandedobbeleer.omp.json)"

# help function
    kasuHelp() {
        echo "
        ╔═════════════════╦═══════════════════════════════════╗     
        ║ simple commands ╠═══════════════════════════════════╣     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ cls             ║ Clear the console                 ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nrun/ndot/nd    ║ shortcut to \"node .\"              ║   
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ pgg             ║ shortcut to \"ping -t google.com\"  ║   
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ kasuHelp        ║ of course this?                   ║
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ pg              ║ shortcut to ping command          ║      
        ╠═════════════════╬═══════════════════════════════════╣
        ║ g               ║ shortcut to git command           ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nod             ║ shortcut to node command          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gp / gpush      ║ git push                          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ ga / gadd       ║ git add                           ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gb / gbranch    ║ git branch                        ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gl / gc / gclone║ git clone                         ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gcr/ gcreate    ║ git init                          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gm / gcommit    ║ git commit                        ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ e               ║ shortcut to echo command          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ n               ║ shortcut to npm command           ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ na / ncreate    ║ npm init -y                       ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ ni / ninstall   ║ npm install                       ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nu / nuninstall ║ npm unistall                      ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nout            ║ npm outdated                      ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nupd            ║ npm update                        ║          
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ npr             ║ npm run                           ║          
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ npak            ║ npm pack --dry-run                ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ np              ║ npm publish                       ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ cppa            ║ g++ *.cpp | cl *.cpp              ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ cppr            ║ g++ *.cpp | cl *.cpp              ║
        ║                 ║      (and will run the app)       ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ cpp             ║ g++ | cl                          ║
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ jvc             ║ java build and run                ║
        ║                 ║ [make sure the file is named app] ║   
        ╚═════════════════╩═══════════════════════════════════╝     

        ╔═════════════════╦═══════════════════════════════════╗     
        ║ other commands  ╠═══════════════════════════════════╣     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitlazy / gpa   ║ git push but faster               ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitcreate / gca ║ git init but automatic            ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gcl             ║ git clone but in 1 call w/ sum    ║
        ║                 ║ special error or idk you call it. ║             
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ md              ║ uh its just mkdir but will cancel ║     
        ║                 ║ if no name type idk. freakin'     ║     
        ║                 ║ mkdir but 2 letters only.         ║     
        ╚═════════════════╩═══════════════════════════════════╝"
    }
#end help function

# Use it freely if you want to

#start message
    echo "
    ╔═══════════════════════════╗
    ║ Ichimaki-chan commands :D ║
    ║   I love astolfo..        ║
    ║       I hate my life :DDD:║
    ╚═══════════════════════════╝

                made by ichimaki
                
    :type \"kasuHelp\" for help :>"
#end start 

# for future me please add "source <dir>/.MY_COMMANDS.SH" on the "etc/profile.d/aliases.sh"

# Check if command successfuly executed or not D:
DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion(){
    if [ $? = 0 ]; then
            echo "Successfully executed"
        else
            if [ $2 = "cl" ]; then
                echo "Mission Failed Successfully. Also the fuck does \"$1\" means?"
                else
                echo "Mission Failed Successfully. Yeah Houston we've got problem"
            fi
        fi
}

# shortcuts
    # got used to CMD ffs
        alias cls='clear'

    #node
        alias nod='node'
        alias nrun='node .'
        alias ndot=nrun
        alias nd=nrun

    #pings
        alias pg='ping'
        alias pgg='ping -t google.com'

    #help
        alias kasuhelp='kasuHelp'
        alias khelp='kasuHelp'

    #git lol
        alias g='git'
        alias gp='git push -f'
        alias ga='git add'
        alias gb='git branch'
        alias gm='git commit'
        alias gl='git clone'
        alias gc='git clone'
        alias gcr='git init'
        alias gitlazy='gpa'
        alias gitcreate='gca'
        alias gpush='gp'
        alias gadd='ga'
        alias gbranch='gb'
        alias gclone='git clone'
        alias gcreate='gcr'
        alias gcommit='gm'

    #wa
        alias e='echo'
        alias hclear='history -c'
    
    #npm
        alias n='npm'
        alias na='npm init -y'
        alias ni='npm install'
        alias nu='npm uninstall'
        alias np='npm publish'
        alias nout='npm outdated'
        alias nupd='npm update'
        alias npak='npm pack --dry-run'
        alias npr='npm run'

    # its weird git bash wont run msbuild directly but needs an '.exe' hmm
        alias msbuild='msbuild.exe'

    # attrib shortcuts
        alias ShowAllHidden='attrib -h *.*'
        alias ShowAllSystem='attrib -s *.*'
        alias ShowAllHiddenSystem='attrib -s -h *.*'

    # taskkill
        alias killtask='taskkill -f -im '


# git shortcut

    #git push automatic
        gpa() {
            if [ "$*" ];then 
                git add .
                git commit -m "$*"
                git push -u origin main -f
            else
                echo "No comment Inputed so yeah defaulted to 'commitment are the best'"
                echo ""
                echo "================================================================="
                git add .
                git commit -m "commitment are the best"
                git push -u origin main -f
            fi
        }

    #git init automatic
        gca() {
            FILE="./readme.md"
            # accidental publish.
            # lol I got that same accident that's why I added this
            # almost ruined my own project.
            if [ -f "$FILE" ]; then
                echo "can't create if there's a readme.md existed";
            else
                if [ "$*" ];then 
                    git init
                    git remote add origin "$*"
                    git branch -M main
                    echo "# 👋 Hey, This is a README.md lol" > readme.md
                    git add .
                    git commit -m "First Commit"
                    git push -u origin main
                else
                    echo "please add the 'REPOSITORY URL'"
                fi
            fi
        }

    # git cloner but throw error is changed when entered none lol or etc
        gcl() {
            if [ "$1" ]
            then 
                git clone "$1"
                DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion $1 "cl"
            else
                echo "Bruh? where's the rest?"
            fi
        }

# cmd's md lol
    md() {
        if [ "$*" ]
        then 
            mkdir "$*"
            DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion "$*"
        else
            echo "No name entered!"
        fi
    }

# c++
    cppr()
    {
        a=$*
        IsExist=`ls -1 *.cpp 2>/dev/null | wc -l`
        gccExist=`! command -v g++ 2>/dev/null | wc -l`

        if [ $IsExist = 0 ]; then
            echo "There's no \".cpp\" files are found! Please make sure they exist in the current directory."
            return
        fi

        if [ "$1" ]; then
                STRCOM="g++ *.cpp -o ${a// /-} -lgdi32"
        fi

        if [ $gccExist = 0 ]; then
            if [ -z "$a" ]; then
                a="a"
            fi
            STRCOM="cmd '/C call vcvars64.bat && cl -O2 -Zi -EHsc *.cpp -std:c++latest -Fe"${a// /-}
        fi

        if $STRCOM; then
            echo $'\E[0;32m'BUILD SUCCESS$'\E[0;0m'
            echo '======RUNNING======'
            echo
            rm *.obj
            rm *.ilk
            rm *.pdb
            if [ "$*" != "" ]; then
                ./${a// /-}
                echo
            else 
                ./a
                echo
            fi
        else
            echo $'\E[0;31m'BUILD FAILED$'\E[0;0m'
            rm *.pdb
            rm *.obj
            rm *.ilk
        fi
    }

    cppa()
    {
        a=$*
        IsExist=`ls -1 *.cpp 2>/dev/null | wc -l`
        gccExist=`! command -v g++ 2>/dev/null | wc -l`

        if [ $IsExist = 0 ]; then
            echo "There's no \".cpp\" files are found! Please make sure they exist in the current directory."
            return
        fi

        if [ "$1" ]; then
                STRCOM="g++ *.cpp -o ${a// /-} -lgdi32"
        fi

        if [ $gccExist = 0 ]; then
            if [ -z "$a" ]; then
                a="a"
            fi
            STRCOM="cmd '/C call vcvars64.bat && cl -O2 -Zi -EHsc *.cpp -std:c++latest -Fe"${a// /-}
        fi

        if $STRCOM; then
            echo $'\E[0;32m'BUILD SUCCESS$'\E[0;0m'
            rm *.pdb
            rm *.ilk
            rm *.obj
        else
            echo $'\E[0;31m'BUILD FAILED$'\E[0;0m'
            rm *.pdb
            rm *.ilk
            rm *.obj
        fi
    }

    cpp()
    {
        gccExist=`! command -v g++ 2>/dev/null | wc -l`

        if [ $gccExist = 1 ];
        then
            g++
        else
            cmd "/C call vcvars64.bat && cl $*"
        fi
    }

#java
    jvc()
    {
        cd bin
        if java -XX:+ShowCodeDetailsInExceptionMessages App
        then
        printf "\nRUN SUCCESS\n"
        else
        printf "\nRUN FAILED!"
        echo "Make sure the class is named 'App'\n"
        fi
        
        cd ..
    }


# clears history so yeah.
history -c
history -w
sleep .8
clear