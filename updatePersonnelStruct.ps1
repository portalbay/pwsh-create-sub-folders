$root_path = "C:/project_path/code/Personnel File"
$new_folder_name="Example"

 

$employee_dirs = Get-ChildItem  -Directory -Path $root_path| Select-Object Name

foreach ($e in $employee_dirs){
    $o_path = $e.Name
    $o_result = "" 
    $new_directory = $root_path + "\" + $e.Name + "\" + $new_folder_name
    #Write-Host($e.Name + " -- " + $new_directory)

    If (!(test-path $new_directory)){
        $o_result = "New: \" + $new_folder_name
        New-Item -ItemType Directory -Path $new_directory | Out-Null
    }
    else {
        $o_result ="Skipping "  
    }

        Write-Host ($o_path + ", " + $o_result)


}
