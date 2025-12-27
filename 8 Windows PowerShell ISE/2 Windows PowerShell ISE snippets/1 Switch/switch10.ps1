$var = @{A=30; B='LONELY'}

foreach ($key in $var.Keys) {
    switch ($var[$key].GetType()) {
        { $_ -eq [int32]} {"$key + 30 = $($var[$key] + 30)"}
        { $_ -eq [string]} {"$key = $($var[$key])"}
    }
}
