
declare -A pomo_options
pomo_options["work"]="60"
pomo_options["break"]="5"


pomodoro () {
  clear
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  spd-say -o rhvoice -y aleksandr-hq "$val session finished" 
  fi
}

alias wo="clear && pomodoro 'work'"
alias br="clear && pomodoro 'break'"

