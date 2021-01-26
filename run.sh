# Xoa folder input va output tren  hdfs
hadoop fs -rm -r output
hadoop fs -rm -r input

# Tao folder input tren HDFS
hadoop fs -mkdir -p input

# Dua du lieu data.txt vao folder input tren HDFS
hdfs dfs -put /home/hadoopuser/data.txt input

# Thuc thi count word project
hadoop jar /home/hadoopuser/wordCountProject.jar PackageDemo.runner input output

# Hien thi ket qua oe folder ouput
echo -e "\nKet qua:"
hdfs dfs -cat output/part-00000

