Function Reverse-String {
   [CmdletBinding()]
   param(
     [Parameter(ValueFromPipeline)]
     [string]$String
   )

   Process {
    $Array = $String.ToCharArray()
    [Array]::Reverse($Array)
    [string]::new($Array)
   }
}

"Hello","Hello" | Reverse-String
