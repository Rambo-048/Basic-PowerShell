Function Get-Data([double]$discount,[int]$price)
{
	$discount * $price
} #end Get-Data

$discount1 = .10
$discount2 = .05
$price = 100

$discountData1 = Get-Data -discount1 $discount -price $price
$discountData2 = Get-Data -discount2 $discount -price $price

"Item 1"
"Price          : $price"
"Discount       : $discountData1"
"Discount Price : $($price-$discountData1)"

"Item 2"
"Price          : $price"
"Discount       : $discountData2"
"Discount Price : $($price-$discountData2)"

if($discountData1 -eq $discountData2)
{
	Write-Host "T R U E"
} else {
	Write-Host "F A L S E"
}

"Negasi 	: $(discountData1 -eq $discountData2)"
