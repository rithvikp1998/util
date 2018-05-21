#load colors
autoload colors && colors
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval $COLOR='%{$fg_no_bold[${(L)COLOR}]%}'  #wrap colours between %{ %} to avoid weird gaps in autocomplete
        eval BOLD_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done
eval RESET='%{$reset_color%}'
NEWLINE=$'\n'
PROMPT="${NEWLINE} ${BOLD_GREEN}%m ${BOLD_RED}@ ${BOLD_GREEN}%d ${NEWLINE} ${BOLD_MAGENTA}-> ${RESET}"