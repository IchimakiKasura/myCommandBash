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
        ║ gp              ║ git push                          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ ga              ║ git add                           ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gb              ║ git branc                         ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gl              ║ git clone                         ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gc              ║ git init                          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gm              ║ git commit                        ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ e               ║ shortcut to echo command          ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ n               ║ shortcut to npm command           ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ na              ║ npm init -y                       ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ ni              ║ npm install                       ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nu              ║ npm unistall                      ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nout            ║ npm outdated                      ║      
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ nupd            ║ npm update                        ║      
        ╚═════════════════╩═══════════════════════════════════╝     

        ╔═════════════════╦═══════════════════════════════════╗     
        ║ other commands  ╠═══════════════════════════════════╣     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitlazy         ║ git push but faster               ║     
        ╠═════════════════╬═══════════════════════════════════╣     
        ║ gitcreate       ║ git init but automatic            ║     
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
        alias nrun='node .'
        alias ndot=nrun
        alias nd=nrun

    #pings
        alias pg='ping'
        alias pgg='ping -t google.com'
        #this is where my custom ping/speedtest are.
        alias adPing='node "C:\Users\Administrator\Desktop\programming stuff\github repo\myCommandBash\index.js"'
        alias adping=adPing
        alias ADPING=adPing

    #help
        alias kasuhelp='kasuHelp'

    #git lol
        alias g='git'
        alias gp='git push'
        alias gc='git init'
        alias ga='git add'
        alias gb='git branch'
        alias gm='git commit'
        alias gl='git clone'

    #wa
        alias e='echo'
    
    #npm
        alias n='npm'
        alias na='npm init -y'
        alias ni='npm install'
        alias nu='npm uninstall'
        alias np='npm publish'
        alias nout='npm outdated'
        alias nupd='npm update'

# git shortcut

    #git push automatic
    gpa() {
        if [ "$1" = "" ];then 
            echo "No comment Inputed so yeah defaulted to 'commitment are the best'"
            echo ""
            echo "================================================================="
            git add .
            git commit -m "commitment are the best"
            git push -u origin main
        else
            git add .
            git commit -m "$1"
            git push -u origin main
        fi
    }

    #git init automatic
    gca() {
        if [ "$1" != "" ];then 
            git init
            git remote add origin "$1"
            git branch -M main
            echo "# 👋 Hey, This is a README.md lol" > readme.md
            git add .
            git commit -m "First Commit"
            git push -u origin main
        fi
    }

# git cloner but throw error is changed when entered none lol or etc
    cl() {
        if [ "$1" = "" ]
        then 
            echo "Bruh? where's the rest?"
        else
            git clone "$1"
            DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion $1 "cl"
        fi
    }

# cmd's md lol
    md() {
        if [ "$1" = "" ]
        then 
            echo "No name entered!"
        else
            mkdir "$1"
            DoesTheCommandReallyExecutedOrNotHeresTheAnswerToYourQuestion $1
        fi
    }