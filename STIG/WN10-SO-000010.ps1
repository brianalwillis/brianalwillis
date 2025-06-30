<#
.SYNOPSIS
    This PowerShell script ensures the built-in guest account is disabled.

.NOTES
    Author          : Briana Willis
    LinkedIn        : linkedin.com/in/brianalwillis
    GitHub          : github.com/brianalwillis
    Date Created    : 6-30-2025
    Last Modified   : 6-30-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000010

.TESTED ON
    Date(s) Tested  : 
    Tested By       :
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\__remediation_template(STIG-ID-WN10-AU-000500).ps1 
#>

# Run this script as Administrator

# Disable the built-in Guest account
Disable-LocalUser -Name "Guest"

# Optional: Confirm the account is now disabled
$guest = Get-LocalUser -Name "Guest"
Write-Output "Guest account is enabled: $($guest.Enabled)"
