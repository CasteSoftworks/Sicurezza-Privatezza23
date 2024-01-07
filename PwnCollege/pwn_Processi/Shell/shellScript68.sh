null_args=()
for ((i=1; i<=213; i++)); do
    null_args+=("")
done

arguments=("${null_args[@]}" "bwujlvodeh")

/challenge/embryoio_level68 "${arguments[@]}"
