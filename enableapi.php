
<?php

    $project = "student-00901";
$app = shell_exec("gcloud services enable bigtableadmin.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable bigtabletableadmin.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable bigtable.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable compute.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable appengine.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable bigquery.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable bigquerystorage.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable cloudbuild.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable cloudkms.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable cloudfunctions.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable compute.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable containerregistry.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable dataproc.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable logging.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable oslogin.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable pubsub.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable run.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable secretmanager.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable source.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable servicemanagement.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable serviceusage.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable sourcerepo.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable storage.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable sqladmin.googleapis.com --project=$project  2>&1");
$app = shell_exec("gcloud services enable container.googleapis.com --project=$project  2>&1");
//$app1 = shell_exec("gcloud services enable artifactregistry.googleapis.com --project=$project  2>&1");
echo $app;

?>


