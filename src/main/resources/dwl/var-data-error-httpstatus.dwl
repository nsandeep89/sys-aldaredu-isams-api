%dw 2.0
import * from dw::core::Arrays
output application/json							
var identifier = upper(error.errorType.identifier)						
var errorNamesArray = ['UNAUTHORIZED','BAD_REQUEST', 'NOT_FOUND', 'METHOD_NOT_ALLOWED', 'NOT_ACCEPTABLE',  
						'PRECONDITION_FAILED', 'UNSUPPORTED_MEDIA_TYPE', 'NOT_IMPLEMENTED', 'SERVICE_UNAVAILABLE']
var errorNumberArray = [401,400, 404, 405, 406, 412, 415, 501, 503]
---					
if (errorNamesArray contains(identifier))
			errorNumberArray[indexOf(errorNamesArray, identifier)]
		else 
			500