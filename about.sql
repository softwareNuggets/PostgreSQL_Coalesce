--coalesce   (ko-a-les)

--rule 1:  The COALESCE function returns the first arguement value that is not NULL
--rule 2:  The COALESCE function will return NULL, if the "last substituting available argument" is NULL


select coalesce(null,null,null,'hello')