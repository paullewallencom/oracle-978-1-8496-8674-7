connect /as sysdba
select username, account_status from dba_users;
alter user hr account unlock;	# Unlock the locked account
alter user hr identified by hr;	# Open the expired account
