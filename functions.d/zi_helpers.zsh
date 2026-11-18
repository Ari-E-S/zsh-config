# Show all entries in the ZINIT array
function zinit_config() {
  RAW_OUTPUT=${1:-0}
  RESET='\033[0m'
  for key in $(echo ${(k)ZINIT} | sed "s/ /\n/g" | sort); do
    echo -n "${RESET}$key -> '";
    if [[ ${RAW_OUTPUT} -eq 0 ]]; then
      echo -n "${ZINIT[$key]}";
    else
      echo -nE "${ZINIT[$key]}";
    fi
    echo "${RESET}'";
  done
}

# Pull changes from repo
alias zinit_pull="git -C ${ZDOTDIR} pull --ff-only"
alias zini_pull=zinit_pull
alias zi_pull=zinit_pull
