%dw 2.0
import * from dw::test::Asserts 
---
 payload must equalTo([
  {
    "employeeNumber": 10001,
    "lastName": "Patterson",
    "firstName": "Mary",
    "extension": "x4611",
    "email": "mpatterso@classicmodelcars.com",
    "officeCode": "1",
    "reportsTo": 1002,
    "jobTitle": "VP Sales"
  }
])