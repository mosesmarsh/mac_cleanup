DBS=`psql -t -c "SELECT datname FROM pg_database WHERE datistemplate = false;"`
for arg in $DBS
do
  if [ "$arg" != "postgres" ] && [ "$arg" != "gSchool" ]
  then
    `dropdb $arg`
  else
    echo $arg
  fi
done
