import json
import os

path = './JSON'
dir_list = os.listdir(path)
dest_file_name = './SQL/Codelists.sql'
code_list_id = 660
state = 'MO'
applicationId = 17
 
for file_name in dir_list:
    source_file_name = '{path}/{file_name}'.format(path=path, file_name=file_name)
    print('soruce file name is ', source_file_name)
    sql_entries = []

    with open(source_file_name, encoding='utf8') as f:
        data = json.load(f)

    start = 'IF NOT EXISTS ( select 1 from codelist WHERE name  =  \'{state} {file_name}\') THEN\nINSERT INTO codelist (id, name, description, disabled, created, createdBy, lastUpdated, lastupdatedby, metadata) VALUES ({code_list_id}, \'{state} {file_name}\',  \'{state} {file_name}\', false, now(), 1, now(), 1, \'{{ 'applicationId': {applicationId} }}\');\n'.format(file_name=file_name.split('.')[0], code_list_id=code_list_id, state=state, applicationId=applicationId)

    code_list_id+=1

    sql_entries.append(start)

    for obj in data:
        name = obj['name'] 
        value = obj['value']
        
        entry =  'INSERT INTO codelistvalue (codeListId, value, name, parentCodeListValueId, disabled, created, createdBy, lastUpdated, lastUpdatedBy) VALUES ((select id from codelist where name = \'{state} {file_name}\' limit 1), \'{value}\', \'{name}\', NULL, false, now(), 1, now(), 1);\n'.format(state=state, name=name.upper(), value=value, file_name=file_name.split('.')[0])
        
        sql_entries.append(entry)
    
    end = 'END IF;\n'
    
    sql_entries.append(end)

    for entry in sql_entries:
        f = open(dest_file_name, 'a')
        f.write(entry)
        f.close()


