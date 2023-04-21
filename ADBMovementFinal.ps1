# Set the path to the local directory where the .adb files are stored

#$sourcePath = "C:\PS\ADBgeneration\*"


# Set the GitHub repository URL and clone it to the local system
#API Url (Invoke rest method)

$repoUrl = "https://github.com/ma1456/JFrog"

$repoPath = "C:\PS\Project1"

$repoOwner = "ma1456"
$repoName =  "JFrog"

git clone $repoUrl $repoPath


# Read the mapping of file names to folder names from a JSON file

$mapping = (Get-Content "C:\PS\ADBgeneration\map.json" -Raw | ConvertFrom-Json)

echo "mapping $mapping"

#foreach ($property in $mapping.PSObject.Properties) { $property.Name }

    
foreach ($property in $mapping.PSObject.Properties){ echo "Copying $property.Name $property.Value"Copy-Item -Path $property.Name -Destination $property.Value -Recurse -force}

#foreach($item in $mapping)#{ #   $sourceFile = $item.key  #  $targetFile = $item.value      #echo "sourceFile targetFile  $sourceFile $targetFile"#}

# Loop through all the .adb files in the source directory

Get-ChildItem $sourcePath -Filter *.adb | ForEach-Object {

$fileName = $_.Name

#echo "fileName $fileName"


##cloned local .adb path

$folderName = ""


# Determine the folder to place the file in based on the file name

if ($mapping.$fileName) {

$folderName = $mapping.$fileName

#echo "folderName $folderName"
}


# Create the folder if it doesn't exist

# $folderPath = Join-Path $repoPath $folderName

# if (-not (Test-Path $folderPath)) {

# New-Item -ItemType Directory -Path $folderPath | Out-Null

# }


# Copy the file to the folder in the cloned repository
#$targetpath = "C:\PS\ADBgeneration\"+$fileName

#echo "targetpath $targetpath"

#Copy-Item $targetpath $folderName


}

# Add and commit the changes to the repository

Set-Location $repoPath

#cd $sourcePath

#git status

#git pull

git add .

git commit -m "Added .adb file to repository"

git push -u origin main --porcelain

# Clean up by removing the cloned repository

#Remove-Item -Recurse -Force $repoPath

