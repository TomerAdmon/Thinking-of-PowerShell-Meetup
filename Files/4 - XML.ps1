<#
<computers>
 <computer name="WIN8" cpu="4" memory="6"/>
 <computer name="LOCALHOST" cpu="8" memory="16"/>
</computers>
#>

## Read an XML and select specific node

[xml](Get-Content C:\MeetUP\PowerShell\xml.xml)

##select-xml
Select-Xml -Path 'C:\MeetUP\PowerShell\xml.xml' -XPath '//computer'


##convert the current time to an xml

$xml = Get-Date | Select-Object -Property Type, Date, Month | ConvertTo-Xml
write-host $xml.Objects.InnerXml