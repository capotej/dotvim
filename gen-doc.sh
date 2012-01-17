#!/bin/sh

set -e

echo "Generating Documentation"

mkdir -p docs

for i in $( find .vim/bundle | grep -i README ); do
  number_of_slashes=$( awk "BEGIN {split(\"$i\",A,\"/\");print \"\",length(A)}" )
  project_name=$(echo $i | cut -d "/" -f $(($number_of_slashes - 1)))
  echo "  processing $project_name: $i"
  cat $i > docs/$project_name.txt
done



