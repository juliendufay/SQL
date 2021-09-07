/* pour sauvegarder*/

mysqldump --user=root --databases gescom_afpa > c:\backup\eval\eval.sql

/* pour restaurer */

mysql --user=root gescom_afpa < c:\backup\eval\eval.sql
