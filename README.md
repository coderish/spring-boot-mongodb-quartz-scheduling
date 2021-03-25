# spring-boot-mongodb-quartz-scheduling


## Features
**CREATE JOB**  
Method      : `POST: /api/v1/scheduler/job-group/:job-group/jobs`  
Status      : `201: Created`  
Body        :
```json
{
  "name": "testJ1",
  "orgCode": "SIN",
  "uniqueKey": "uniqueKey",
  "jobType": "QUERY_TEMPLATE",
  "triggers": [
    {
      "name": "testJ1",
      "group": "QUERY_TEMPLATE",
      "cron": "0/30 0/1 * 1/1 * ? *"
    }
  ]
}
```
Content-Type: `application/json`

**VIEW JOB**  
Method      : `GET: /api/v1/scheduler/job-group/:job-group/jobs/:job-name`  
Status      : `200: Ok`  
Body        : NULL  
Accept      : `application/json`

**UPDATE**  
Method      : `PUT: /api/v1/scheduler/job-group/:job-group/jobs/:job-name`  
Status      : `200: Ok`   
Body        :
```json
{
  "name": "testJ1",
  "orgCode": "SIN",
  "uniqueKey": "uniqueKey",
  "jobType": "QUERY_TEMPLATE",
  "data":
  {
    "propertyKey": "template-name",
    "propertyValue": "temp-1"
  }
,
  "triggers": [
    {
      "name": "testJ1",
      "group": "QUERY_TEMPLATE",
      "cron": "0/30 0/1 * 1/1 * ? *"
    }
  ]
}
```
Content-Type: `application/json`

**UPDATE (Pause)**  
Method      : `PATCH: /api/v1/scheduler/job-group/:job-group/jobs/:job-name/pause`  
Status      : `200: Ok`   
Body        : NULL  
Content-Type: `*/*`

**UPDATE (Resume)**  
Method      : `PATCH: /api/v1/scheduler/job-group/:job-group/jobs/:job-name/resume`  
Status      : `200: Ok`
Body        : NULL  
Content-Type: `*/*`

**DELETE**  
Method      : `DELETE: /api/v1/scheduler/job-group/:job-group/jobs/:job-name`  
Status      : `200: Ok`  
Body        : NULL  
Content-Type: `*/*`