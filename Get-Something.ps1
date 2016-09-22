#requires -version 2
<#
.SYNOPSIS
  Use PowerShell to pull out specify TimeZone data from an object
.DESCRIPTION
  Use PowerShell to pull out specify TimeZone data from an object
.PARAMETER <Parameter_Name>
    <Brief description of parameter input required. Repeat this attribute if required>
.INPUTS
  <Inputs if any, otherwise state None>
.OUTPUTS
  <Outputs if any, otherwise state None - example: Log file stored in C:\Windows\Temp\<name>.log>
.NOTES
  Version:        1.0
  Author:         <Name>
  Creation Date:  <Date>
  Purpose/Change: Initial script development
  
.EXAMPLE
  $VerbosePreference = 'Continue'
    Get-TimeZoneDateTime("AUS Eastern Standard Time")

#>

#Function to post data to OMS
Function Get-TimeZoneDateTime($Zone){
    
    [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId([DateTime]::Now,$Zone) 
}

$TimeZone = Get-TimeZoneDateTime("AUS Eastern Standard Time")
Write-Output $TimeZone