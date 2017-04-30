# OT-Project; Windows credential dumpers

1. Start the batch file "start_testing" from the "test_tools_standalone folder" (both variants x86 and x64 folders)

2. Run "test_vss.bat" file to testing vss (used when testing prevention methods)

3. Run save_reg.bat file to save Windows registries

4. Use following commands in PowerShell  to automatically deploy Active Directory and to add users to AD:

				PS C:\Users\Administrator\Desktop> set-executionpolicy remotesigned

				PS C:\Users\Administrator\Desktop\_AD_DC > dcpromo /unattend:unettend_dc.txt

        PS C:\Users\Administrator\Desktop\_AD_DC\_AD_> .\ou_create.ps1

        PS C:\Users\Administrator\Desktop\_AD_DC\_AD_\AddUserstoGroup> .\create_bulk_users.ps1

        PS C:\Users\Administrator\Desktop\_AD_DC\_AD_\AddUserstoGroup> .\create_users_2.ps1


5. Escalate to SYSTEM permission by using following commands in Command prompt:

        CMD: cd  C:\Users\user01\Downloads\PSTools

        PSEXEC -i -s -d CMD

6. Check the "start_vms_test" folder and start the batch file "run_scenario_1.bat". This will help you to automatically start VMs and to push all the sets of credendials dumpers.
