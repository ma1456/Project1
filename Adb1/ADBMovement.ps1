# Define the source directory where the ADB files are located
$sourceDir ="C:\Users\saiprasadj\Music\JFrog"
$TargetDirectory = "https://github.com/ma1456/JFrog.git"
Write-Host "start script"
# Define the GitHub repository owner and name
$repoOwner = "ma1456"
$repoName =  "JFrog"


# Define the PAT token
$token = "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"  
git clone $TargetDirectory $sourceDir

# Loop through all the ADB files in the source directory
Get-ChildItem $sourceDir -Recurse -Filter "*.adb" | ForEach-Object {  
    # Extract the filename without extension
    $filename = $_.Name.Replace(".adb", "")
    Write-Host "Filename : $filename"


    # Determine the folder name based on the filename
    if ($filename -like "*JFrog*") {
        $folder = "JFrog"
        # Define the file path in the GitHub repository
    # https://github.com/ma1456/JFrog/tree/main/precompile/Engineering
    $filePath = "https://github.com/ma1456/JFrog/tree/main/precompile/Engineering/$filename.adb"
    Write-Host "url : $filePath"
    }
    elseif ($filename -like "*otc*") {
        $folder = "otc"
    }
    else {
        $folder = "other"
    }

 

    

    # Read the contents of the ADB file
    $content = Get-Content $_.FullName

 

    # Define the API endpoint to create or update the file in the GitHub repository
    $url = "$filePath"

    # Define the request body as a JSON object
    $body = @{
        message = "Add $filename.adb to $folder folder"
        content = [Convert]::ToBase64String([System.Text.Encoding]::UTF8.GetBytes($content))
    }
    $jsonBody = $body | ConvertTo-Json

 

    # Define the headers for the API request
    $headers = @{
        Authorization = "Bearer $token"
        Accept = "application/vnd.github.v3+json"
    }

 

    # Define the API request to create or update the file in the GitHub repository
 [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls, [Net.SecurityProtocolType]::Tls11, [Net.SecurityProtocolType]::Tls12, [Net.SecurityProtocolType]::Ssl3
  [Net.ServicePointManager]::SecurityProtocol = "Tls, Tls11, Tls12, Ssl3"
  #  $response = Invoke-RestMethod -Uri $url -Method Put -Headers $headers -Body $jsonBody
 $response = Invoke-RestMethod -Uri https://github.com/ma1456/JFrog 
#$b.Content | ConvertFrom-Json
cd $sourceDir
git pull
git add . 
git commit -m "Files moved from Windows machine to GitHubb $ADBMovement"
git push -u origin main --porcelain

    # Output the API response
    $response.content


}