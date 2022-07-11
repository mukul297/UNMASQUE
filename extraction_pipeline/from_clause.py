import sys
try:
	import psycopg2
except ImportError:
	pass

sys.path.append('../')

import reveal_globals
import executable



def getCoreRelations(method = 'rename'):
	print("inside -- from_clause.getCoreRelations")
	#GET ALL TABLE NAMES IN THE DATABASE INSTANCE
	if reveal_globals.global_db_engine != 'Microsoft SQL Server':
		try:
			cur = reveal_globals.global_conn.cursor()
			cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' and TABLE_CATALOG='tpch';")
			# cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' and TABLE_CATALOG='" + reveal_globals.global_db_instance + "';")
			res = cur.fetchall()			
			cur.close()
			for val in res:
				reveal_globals.global_all_relations.append(val[0])
		except Exception as error:
			print("Can not obtain table names. Error: " + str(error))
			return False
	if reveal_globals.global_all_relations == []:
		print("No table in the selected instance. Please select another instance.")
		return False
	core_relations = []
	if method == 'rename': 
		if 'temp' in reveal_globals.global_all_relations:
			cur = reveal_globals.global_conn.cursor()
			cur.execute('drop table temp;')
			cur.close()
		for tabname in reveal_globals.global_all_relations:
			try:
				cur = reveal_globals.global_conn.cursor()
				#rename current table x to temp
				if reveal_globals.global_db_engine != 'Microsoft SQL Server':
					cur.execute('Alter table ' + tabname + ' rename to temp;')
				cur.close()
				#create an empty table with name x
				#UNCOMMENT THIS FOR EMPTY TABLRE LOGIC
				
				cur = reveal_globals.global_conn.cursor()
				if reveal_globals.global_db_engine != 'Microsoft SQL Server':
					cur.execute('Create table ' + tabname + ' (like temp including constraints including indexes);')
				cur.close()
				
				#check the result
				new_result = executable.getExecOutput()
				reveal_globals.global_no_execCall = reveal_globals.global_no_execCall + 1
				if len(new_result) <= 1:
					core_relations.append(tabname)
				#revert the changes
				#UNCOMMENT THIS FOR EMPTY TABLE LOGIC
				
				cur = reveal_globals.global_conn.cursor()
				cur.execute('drop table ' + tabname + ';')
				cur.close()
				
				cur = reveal_globals.global_conn.cursor()
				if reveal_globals.global_db_engine != 'Microsoft SQL Server':
					cur.execute('Alter table temp rename to ' + tabname + ';')
				cur.close()
			except Exception as error:
				print("Error Occurred in table extraction. Error: " + str(error))
				exit(1)
	else: 
		cur = reveal_globals.global_conn.cursor()
		cur.execute("set statement_timeout to '2s'")
		cur.close()
		if 'temp' in reveal_globals.global_all_relations:
			cur = reveal_globals.global_conn.cursor()
			cur.execute('drop table temp;')
			cur.close()
		for tabname in reveal_globals.global_all_relations:
			try:
				cur = reveal_globals.global_conn.cursor()
				if reveal_globals.global_db_engine != 'Microsoft SQL Server':
					cur.execute('Alter table ' + tabname + ' rename to temp;')
				cur.close()
				try:
					new_result = executable.getExecOutput()
					reveal_globals.global_no_execCall = reveal_globals.global_no_execCall + 1
					if len(new_result) <= 1:
						core_relations.append(tabname)
				except psycopg2.Error as e:
					if e.pgcode == '42P01':
						core_relations.append(tabname)
					elif e.pgcode != '57014':
						raise
				cur = reveal_globals.global_conn.cursor()
				if reveal_globals.global_db_engine != 'Microsoft SQL Server':
					cur.execute('Alter table temp rename to ' + tabname + ';')
				cur.close()
			except Exception as error:
				
				print("Error Occurred in table extraction. Error: " + str(error))
				exit(1)

		cur = reveal_globals.global_conn.cursor()
		cur.execute("set statement_timeout to '0s'")
		cur.close()

	print(core_relations)
	return sorted(core_relations)


