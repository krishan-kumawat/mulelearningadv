%dw 2.0
output application/json

import dwpractice::reusablefunc

import * from dwpractice::reusablefunc2

/*
 * Single line function 
 */
fun calculatePriceAfterDiscount(originalPrice, offerPrice)=
	originalPrice - offerPrice
	
/**
 * Multi-line function
 */
fun calculatePriceAfterDiscountWithMorePercentage(originalPrice, offerPrice, percentage) = do{
	var price = originalPrice - offerPrice
	var disPrice = price - (percentage/100 * price)
	---
	disPrice
}
---
{
	"Name": upper(payload.Name),
	"salePrice": calculatePriceAfterDiscount(payload.originalPrice, payload.offer.offerPrice),
	salePriceAfDis: calculatePriceAfterDiscountWithMorePercentage(payload.originalPrice, payload.offer.offerPrice, 10),
	"sum": reusablefunc::result(8, 9),
	"Square": square(5),
	"UpperNull": upper(Null)
}