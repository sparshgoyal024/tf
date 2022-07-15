<?php


$project_id = ["student-00901"];
$dir= ["bq","bt","bt_null"];


foreach($project_id as $project) {
foreach($dir as $quotas) {
    $directory = $quotas.'_'.$project;


    if (!is_dir($directory)){
    $create_dir = shell_exec("mkdir $directory");

    $copy = shell_exec("cp -R $quotas/* $directory");
    chdir("$directory");
    $tf_init = shell_exec("terraform init -lock=false");
    echo $tf_init;
    echo "Init Done";
    $tf_plan = shell_exec("terraform plan -var='project=$project' -lock=false");    
    echo $tf_plan;
    echo "Plan Done";
    $tf_apply = shell_exec("terraform apply -auto-approve -var='project=$project' -lock=false");

    echo $tf_apply;
    chdir("../");
}

else {
    $copy = shell_exec("cp -R $quotas/* $directory");
    chdir("$directory");
    $tf_destroy = shell_exec("terraform destroy -auto-approve -var='project=$project'-lock=false");
    $tf_init = shell_exec("terraform init -lock=false");
    $tf_plan = shell_exec("terraform plan -var='project=$project' -lock=false");    
    $tf_apply = shell_exec("terraform apply -auto-approve -var='project=$project' -lock=false");
    echo $tf_destroy;
    chdir("../");
    
}}

}




?>