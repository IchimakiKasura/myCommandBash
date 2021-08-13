#!/usr/bin/env bash
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
        ║ pg              ║ shortcut to \"ping -t google.com\"  ║   
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ kasuHelp        ║ of course this?                   ║
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ pg              ║ shortcut to ping command          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ adPing/adping   ║ advance ping and speedtest        ║      
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
        ║ gl / gclone     ║ git clone                         ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gc / gcreate    ║ git init                          ║      
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
        ║ npak            ║ npm pack --dry-run                ║      
        ╚═════════════════╩═══════════════════════════════════╝     

        ╔═════════════════╦═══════════════════════════════════╗     
        ║ other commands  ╠═══════════════════════════════════╣     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitlazy / gpa   ║ git push but faster               ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitcreate / gca ║ git init but automatic            ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ cl              ║ git clone but in 1 call w/ sum    ║
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

# for future me please add "source <dir>/.MY_COMMANDS.SH" on the "aliases.sh"

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
        #this is where my custom ping/speedtest are. find urs
            alias adPing='node "C:\Users\Administrator\Desktop\programming stuff\github repo\myCommandBash\index.js"'
        alias adping=adPing
        alias ADPING=adPing

    #help
        alias kasuhelp='kasuHelp'

    #git lol
        alias g='git'
        alias gp='git push -f'
        alias gc='git init'
        alias ga='git add'
        alias gb='git branch'
        alias gm='git commit'
        alias gl='git clone'
        alias gitlazy='gpa'
        alias gitcreate='gca'
        alias gpush='gp'
        alias gadd='ga'
        alias gbranch='gb'
        alias gclone='gl'
        alias gcreate='gc'
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

# git shortcut

    #git push automatic
        gpa() {
            if [ "$*" == "" ];then 
                echo "No comment Inputed so yeah defaulted to 'commitment are the best'"
                echo ""
                echo "================================================================="
                git add .
                git commit -m "commitment are the best"
                git push -u origin main -f
            else
                git add .
                git commit -m "$*"
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
                if [ "$*" != "" ];then 
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
        cl() {
            if [ "$1" = ="" ]
            then 
                echo "Bruh? where's the rest?"
            else
                git clone "$1"
                DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion $1 "cl"
            fi
        }

# cmd's md lol
    md() {
        if [ "$*" = "" ]
        then 
            echo "No name entered!"
        else
            mkdir "$*"
            DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion "$*"
        fi
    }

# clears history so yeah.
history -c
history -w
sleep .8
cls