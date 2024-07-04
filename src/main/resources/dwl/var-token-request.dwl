%dw 2.0
output urlencoded
---
{
	"grant_type": Mule::p('isams.token.grantype'),
	"client_id": Mule::p('secure::isams.token.clientId'),
	"client_secret": Mule::p('secure::ismas.token.clientsecret'),
	"scope": Mule::p('isams.token.scope')	
}