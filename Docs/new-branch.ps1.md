# PowerShell Script new-branch.ps1

## Synopsis & Description
```powershell
new-branch.ps1 [<BranchName>] [<RepoDir>]
```

Creates and switches to a new branch in a Git repository.

## Syntax & Parameters
```powershell
/home/mf/PowerShell/Scripts/new-branch.ps1 [[-BranchName] <String>] [[-RepoDir] <String>] [<CommonParameters>]
```

```
-BranchName <String>
    
    Required?                    false
    Position?                    1
    Default value                
    Accept pipeline input?       false
    Accept wildcard characters?  false
```

```
-RepoDir <String>
    
    Required?                    false
    Position?                    2
    Default value                "$PWD"
    Accept pipeline input?       false
    Accept wildcard characters?  false
```

```
[<CommonParameters>]
    This cmdlet supports the common parameters: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, 
    WarningVariable, OutBuffer, PipelineVariable, and OutVariable.
```

## Example
```powershell
PS>.\new-branch.ps1 moonshot
```


## Notes
Author: Markus Fleschutz · License: CC0

## Related Links
https://github.com/fleschutz/PowerShell

*Generated from comment-based help of new-branch.ps1 by convert-ps2md.ps1*