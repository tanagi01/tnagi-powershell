﻿<#
.SYNOPSIS
	get-sha1.ps1 [<file>]
.DESCRIPTION
	Prints the SHA1 checksum of the given file
.EXAMPLE
	PS> .\get-sha1.ps1 C:\MyFile.txt
.NOTES
	Author: Markus Fleschutz · License: CC0
.LINK
	https://github.com/fleschutz/PowerShell
#>

param([string]$file = "")

try {
	if ($file -eq "" ) { $file = read-host "Enter the filename" }

	$Result = get-filehash $file -algorithm SHA1

	"✔️ SHA1 hash is" $Result.Hash
	exit 0
} catch {
	write-error "⚠️ Error in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}