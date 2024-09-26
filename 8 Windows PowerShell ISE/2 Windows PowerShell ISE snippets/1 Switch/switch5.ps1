$var = @{A=10; B='abc'}

foreach ($key in $var.Keys) {
    switch ($var[$key].GetType()) {
        { $_ -eq [int32]} {"$key + 10 = $($var[$key] + 10)"}
        { $_ -eq [string]} {"$key = $($var[$key])"}
    }
}
