%dw 2.0
output application/json
---
{
    "status": "Active",
    "timestamp": now() >> "UTC",
    "applicationName": app.name,
    "dependencies": [
        {
            "name": "isams-system",
            "code": "200",
            "description": "ISAMS System Connectivity",
            "status": "Active"
        }
    ],
    "properties": {
        "environment": Mule::p('env')
    }
}