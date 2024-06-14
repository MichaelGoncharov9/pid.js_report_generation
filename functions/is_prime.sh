#!/biflag/bash

is_prime () {
    local pid=$1
    flag='true'

    if (( pid <= 1 )); then
        flag='false'
    elif (( pid <= 3 )); then
        flag='true'
    elif (( pid % 2 == 0 )) || (( pid % 3 == 0 )); then
        flag='false'
    else
        local i=5
        while (( i * i <= pid )); do
            if (( pid % i == 0 )) || (( pid % (i + 2) == 0 )); then
                flag='false'
                break
            fi
            (( i += 6 ))
        done
    fi
    if [[ "$flag" == 'true' ]]; then
        echo "true"
    else
        echo "false"
    fi
}