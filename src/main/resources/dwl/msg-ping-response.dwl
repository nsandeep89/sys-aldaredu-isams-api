%dw 2.0
output application/json
---
{
  appName: app.name,
  appVersion: Mule::p('app.version'),
  mule_env: Mule::p('env'),
  mule_server: mule.version,
  status: "200",
  message: "active",
  timestamp: now() >> "UTC"
}