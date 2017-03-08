# Add Postgres to the path
export PATH="/Users/datascientist/Applications/Postgres.app/Contents/Versions/9.4/bin/:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# Add Homebrew stuff to the path
export PATH="/usr/local/bin:$PATH"

# Add Anaconda to the path
export PATH="/Users/datascientist/anaconda2/bin:$PATH"

# Add Spark to the path
export SPARK_HOME=/usr/local/spark
export PATH="$SPARK_HOME/bin:$PATH"

# Make Python aware of Spark (& Spark's py4j)
export PYTHONPATH="$PYTHONPATH:$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.8.2.1-src.zip"
