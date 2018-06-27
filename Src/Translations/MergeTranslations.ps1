$MasterFile = get-item 'C:\Users\Waldo\Dropbox (Personal)\GitHub\MostUselessAppEver\Translations\Most Useless App Ever.g.xlf'

$SlaveFiles = Get-ChildItem $MasterFile.Directory | where Name -ne $MasterFile.Name
foreach ($SlaveFile in $SlaveFiles) {   
    $MasterXml = New-Object System.Xml.XmlDocument
    $SlaveXml = New-Object System.Xml.XmlDocument

    $SlaveXml.PreserveWhitespace = $true;
    $MasterXml.PreserveWhitespace = $true;

    $MasterXml.Load($MasterFile.FullName)
    $SlaveXml.Load($SlaveFile.FullName)

    $AllTranslations = $MasterXml.xliff.file.body.group.'trans-unit' 
    foreach ($Translation in $AllTranslations){
        $missingTrans = $SlaveXml.xliff.file.body.group.'trans-unit' | where id -eq $Translation.id
        if ($missingTrans -eq $null){
            $newNode = $SlaveXml.ImportNode($Translation,$true)
            $SlaveXml.xliff.file.body.group.AppendChild($newNode) 
        }
    }

    $AllTranslations = $SlaveXml.xliff.file.body.group.'trans-unit'
    foreach ($Translation in $AllTranslations){
        $missingTrans = $MasterXml.xliff.file.body.group.'trans-unit' | where id -eq $Translation.id
        if ($missingTrans -eq $null){
            $SlaveXml.xliff.file.body.group.RemoveChild($Translation)
        }
    }
    
    $SlaveXml.Save($SlaveFile.FullName)
}
