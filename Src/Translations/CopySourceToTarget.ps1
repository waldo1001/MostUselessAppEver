$TranslationFile = get-item 'C:\Users\Waldo\Dropbox (Personal)\GitHub\MostUselessAppEver\Translations\Most Useless App Ever.g.NLD.xlf'

$TranslationXml = New-Object System.Xml.XmlDocument
$TranslationXml.PreserveWhitespace = $true;
$TranslationXml.Load($TranslationFile.FullName)

$AllTranslations = $TranslationXml.xliff.file.body.group.'trans-unit' 

foreach ($Translation in $AllTranslations) {
    if (-not $Translation.target) {
        $newnode = $TranslationXml.CreateElement('target','urn:oasis:names:tc:xliff:document:1.2')
        $newnode.InnerText = $Translation.source

        $null = $Translation.AppendChild($newNode)
    }
}

#Settings object will instruct how the xml elements are written to the file
$settings = New-Object System.Xml.XmlWriterSettings
$settings.Indent = $true
$settings.NewLineChars ="`r`n"
$settings.Encoding = New-Object System.Text.UTF8Encoding( $false )

$XmlWriter = [System.Xml.XmlWriter]::Create($TranslationFile.FullName, $settings)
$TranslationXml.Save( $XmlWriter )
$XmlWriter.Dispose()

#$TranslationXml.Save($TranslationFile.FullName)