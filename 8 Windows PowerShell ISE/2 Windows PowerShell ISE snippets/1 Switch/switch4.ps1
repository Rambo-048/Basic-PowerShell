$data = @{
    Data1 = 'ABC'
    Data2 = 'abc'
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
