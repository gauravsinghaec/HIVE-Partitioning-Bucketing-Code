SET hive.exec.dynamic.partition = true;

SET hive.exec.dynamic.partition.mode = nonstrict;

INSERT OVERWRITE TABLE T_USER_LOG_DYN 
PARTITION(DT,COUNTRY) 
SELECT USER_ID,NAME,SITE,DT,COUNTRY FROM T_USER_LOG_SRC
;

