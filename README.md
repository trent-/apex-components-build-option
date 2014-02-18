apex-build-utilisation
======================

Query to find application components with a particular build option

Refer to: [build-utilisation.sql](build-utilisation.sql)

Just add filters so suit what you are searching for.

###Identify relevant views:

```sql
select *
from apex_dictionary
where apex_view_name != 'APEX_APPLICATION_SUPP_OBJ_BOPT'
and column_name = 'BUILD_OPTION'
```

which are listed in: [views list.txt](views list.txt)
