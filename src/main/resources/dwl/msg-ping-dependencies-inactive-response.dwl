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
            "code": "500",
            "description": "ISAMS System Connectivity",
            "status": "Inactive"
        }
    ],
    "properties": {
        "environment": Mule::p('env')
    }
}