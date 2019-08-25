sqoop import \
 --connect "jdbc:mysql://virtual-client:3306/moon_db" \
 --username sqoop \
 --password sqoop \
 --table person_details \
 --target-dir /user/mf_goryacheva/person_details_$(date +%Y%m%d%H%M) \
 --num-mappers 1 \
 --hive-import \
 --null-string '\\N' \
 --null-non-string '\\N' \
 --hive-overwrite \
 --hive-table sqoop_db.person_details_gas \
 --hive-drop-import-delims