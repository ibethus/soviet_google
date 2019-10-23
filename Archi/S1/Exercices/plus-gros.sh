#! /bin/bash

echo "Repertoire:"
read repository
du -s ~/$repository/* | sort -rn | head -n 5