# OzzieWorkFlows  
## Inputs required:  
workflow.xml to define sqoop-node or hive-node or shell-node in HDFS aplication_path directory  
job.porperties file to define NameNode, JobTacker, queueName, oozie.use.system.libpath and oozie.wf.application.path in Local OS path  

## Executing the Oozie job:  
oozie job -oozie http://localhost:11000/oozie -config /home/maria_dev/job.properties -run  
  
## Procedure and preporatory steps:  
Copy MySQL connector java jars to Oozie libary folder.  
  hadoop fs -put /usr/share/java/mysql-connector-java.jar /user/oozie/share/lib/lib_20161025075203  
restart all ozzie components from Ambari.  
  hadoop fs -put workflow.sh /user/maria_dev  
  hadoop fs -put workflow01.xml /user/maria_dev/workflow.xml  
  hadoop fs -put oldmovies.sql /user/maria_dev  
