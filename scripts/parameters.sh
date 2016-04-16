name=$1

if [[ -n "$name" ]]; then
    echo "Got $name Parameter."
else
    echo "argument error"
fi