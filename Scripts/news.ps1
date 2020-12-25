#!/snap/bin/powershell

# Syntax:       ./news.ps1
# Description:	print the latest news
# Author:	Markus Fleschutz
# Source:	github.com/fleschutz/PowerShell
# License:	CC0
 
#$RSS_URL = "http://feeds.skynews.com/feeds/rss/world.xml"
$RSS_URL = "https://yahoo.com/news/rss/world"
# $RSS_URL = "https://rss.nytimes.com/services/xml/rss/nyt/HomePage.xml"

try {
	[xml]$FileContent = (Invoke-WebRequest -Uri $RSS_URL).Content

	write-output ""
	write-output "+++ $($FileContent.rss.channel.title) +++"
	write-output ""

	foreach ($item in $FileContent.rss.channel.item) {
		write-output "* $($item.title)"
	}
	exit 0
} catch {
	write-error "ERROR in line $($_.InvocationInfo.ScriptLineNumber): $($Error[0])"
	exit 1
}
