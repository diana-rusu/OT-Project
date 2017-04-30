# OT-Project; Automatically test Windows credential dumpers

1. Start with the "start_testing" file from the "test_tools_standalone" folder (available in both variants x86 and x64 system type)

2. Run "test_vss.bat" file to test vss (used when testing prevention methods)

3. Run save_reg.bat file to save Windows registries

4. Use following commands in PowerShell to automatically deploy Active Directory and to add groups & users to it:
 
PS> $PATH > set-executionpolicy remotesigned
	
	PS> $PATH\_AD_DC > dcpromo /unattend:unettend_dc.txt

	PS> $PATH\_AD_DC\_AD_> .\ou_create.ps1

	PS> $PATH\_AD_DC\_AD_\AddUserstoGroup> .\create_bulk_users.ps1

	PS> $PATH\_AD_DC\_AD_\AddUserstoGroup> .\create_users_2.ps1


5. Escalate to SYSTEM permission by using following commands in Command prompt:

        $PATH\PSTool > PSEXEC -i -s -d CMD        

6. Check the "start_vms_test" folder and start the batch file "run_scenario_1.bat". This will help you to automatically start VMs and to push all the sets of credendials dumpers.
