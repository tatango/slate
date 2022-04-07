# Errors

The tatango API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid.
401 | Unauthorized -- Your API key is wrong.
403 | Forbidden -- You are not authorized for this request.
404 | Not Found -- The specified endpoint could not be found.
405 | Method Not Allowed -- You tried to access an endpoint with an invalid method.
406 | Not Acceptable -- You requested a format that isn't JSON.
410 | Gone -- The requested resource has been removed from our servers.
422 | Unprocessable Entity - There was a problem of some sort with either the JSON or request parameters you supplied. Usually, this error will be accompanied by a detailed description of the problem.
429 | Too Many Requests -- You're requesting too many resources! Slow down!
500 | Internal Server Error -- We had a problem with our server. Try again later.
502 | Bad Gateway -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
