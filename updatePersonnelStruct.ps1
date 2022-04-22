$hr_path = "C:/project_path/code/Personnel File"

 

$employee_dirs = Get-ChildItem  -Directory -Path $hr_path| Select-Object Name

foreach ($e in $employee_dirs){
    $o_path = $e.Name
    $o_result = "" 
    $new_directory = $hr_path + "\" + $e.Name + "\Discipline"
    #Write-Host($e.Name + " -- " + $new_directory)

    If (!(test-path $new_directory)){
        $o_result = "New: \Discipline"
        New-Item -ItemType Directory -Path $new_directory | Out-Null
    }
    else {
        $o_result ="Skipping "  
    }

        Write-Host ($o_path + ", " + $o_result)


}
