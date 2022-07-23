if [ $# == 0 ]; then
  echo `git symbolic-ref -q HEAD | sed -e 's|^refs/heads/||'`
else
  echo `git -C $1 symbolic-ref -q HEAD | sed -e 's|^refs/heads/||'`
fi
