function Write-Pipeline {
   [CmdletBinding()]
   param(
     [Parameter(ValueFromPipeline)]
     [string]$String
   )

   Begin {
     Write-Host "Begin"
   }

   Process {
     Write-Host "Process: $String" 
   }

   End {
     Write-Host "End"
   }
}

"Really","Good" | Write-Data
