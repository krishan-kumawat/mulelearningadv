%dw 2.0
output application/xml
---
/*
 * add attribute in xml output
 */
product @(pid: payload.productId): {
	"name": payload.Name
}
 