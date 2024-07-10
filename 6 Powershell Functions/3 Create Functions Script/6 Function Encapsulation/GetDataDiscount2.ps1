Function Get-Data([double]$discount,[int]$price)
{
	$discount * $price
} #end Get-Data

$discount = .05
$price = 100

$discountData = Get-Data -discount $discount -price $price

"Price          : $price"
"Discount       : $discountData"
"Discount Price : $($price-$discountData)"

