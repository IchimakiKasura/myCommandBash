#!bin/bash
source './.kasuHelp.sh'
# Use it freely if you want to
echo "╔═══════════════════════════╗
║ Ichimaki-chan commands :D ║
║   I love astolfo..        ║
║       I hate my life :DDD:║
╚═══════════════════════════╝

             made by ichimaki
			 
:type \"kasuHelp\" for help :>"


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

# got used to CMD ffs
alias cls='clear'

# shortcuts
alias nrun='node .'
alias pg='ping -t google.com'
alias kasuhelp='kasuHelp'

# lazy push
gitlazy() {
	if [ "$1" = "" ];then 
		echo "No comment Inputed so yeah defaulted to 'commitment are the best'"
		git add .
		git commit -m "commitment are the best"
		git push -u origin main
	else
		git add .
		git commit -m "$1"
		git push -u origin main
	fi
}
gitcreate() {
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

# lazy cloner
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