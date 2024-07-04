%dw 2.0
output application/json
---
{
  "errorCode": vars.httpStatus default 500,
  "errorType": error.errorType.namespace ++ ':' ++ error.errorType.identifier default 'None',
  "errorMessage": error.errorType.identifier default 'None',
  "errorDescription": error.muleMessage.typedValue.message default error.detailedDescription
}