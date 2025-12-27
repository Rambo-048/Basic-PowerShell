$data = @{
    Data1 = 'LONELY'
    Data2 = 'SAD'
}

$data.ToString()

switch -Exact ($data)
{
    'System.Collections.Hashtable'
    {
        'Hashtable string'
    }
    'data'
    {
        'Hashtable value'
    }
}
