cas mySession sessopts=(caslib=casuser timeout=1800 locale="en_US");
/*****************************************************************************/
/*  Load a table ("sourceTableName") from the specified caslib               */
/*  ("sourceCaslib") to the target Caslib ("targetCaslib") and save it as    */
/*  "targetTableName".                                                       */
/*****************************************************************************/
proc casutil;
    droptable casdata="hmeqapp" incaslib="public" quiet; 
	load casdata="hmeqapp.sashdat" incaslib="public" 
	outcaslib="public" casout="hmeqapp" promote;
run;
quit;
