sfdx force:org:create -f config/project-scratch-def.json -d 1 -s
sfdx force:package:install -w 20 -r -p 04t3k0000027AGeAAM
sfdx force:source:push
sfdx shane:user:psl -l User -g User -n datamask_DataMaskUserPsl
sfdx shane:user:permset:assign -l User -g User -n datamask
sfdx force:org:open