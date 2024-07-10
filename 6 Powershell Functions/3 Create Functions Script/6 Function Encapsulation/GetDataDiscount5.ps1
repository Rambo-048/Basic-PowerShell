Function Get-Data([double]$discount,[int]$price)
{
	$discount * $price
} #end Get-Data

$discount1 = .10
$discount2 = .05
$discount3 = .02
$discount4 = .04
$discount5 = .05
$price = 100

$discountData1 = Get-Data -discount1 $discount -price $price
$discountData2 = Get-Data -discount2 $discount -price $price
$discountData3 = Get-Data -discount3 $discount -price $price
$discountData4 = Get-Data -discount4 $discount -price $price
$discountData4 = Get-Data -discount5 $discount -price $price

"Item 1"
"Price          : $price"
"Discount       : $discountData1"
"Discount Price : $($price-$discountData1)"

"Item 2"
"Price          : $price"
"Discount       : $discountData2"
"Discount Price : $($price-$discountData2)"

"Item 3"
"Price          : $price"
"Discount       : $discountData3"
"Discount Price : $($price-$discountData3)"

"Item 4"
"Price          : $price"
"Discount       : $discountData4"
"Discount Price : $($price-$discountData4)"

"Item 5"
"Price          : $price"
"Discount       : $discountData5"
"Discount Price : $($price-$discountData5)"

if($discountData1 -eq $discountData2)
{
	Write-Host "T R U E"
} else {
	Write-Host "F A L S E"
}

"Negasi 1 : $(discountData1 -eq $discountData2)"
"Negasi 2 : $(discountData2 -eq $discountData3)"
"Negasi 3 : $(discountData3 -eq $discountData4)"
"Negasi 4 : $(discountData1 -eq $discountData4)"
"Negasi 5 : $(discountData2 -eq $discountData5)"
