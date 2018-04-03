---
title: Tatango API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - ruby
  - javascript

includes:
  - errors

search: true
---
# Before You Start

title: Before You Start

Welcome to the Tatango API! The Tatango API is designed for developers, engineers, or anyone else who's comfortable creating custom-coded solutions or integrating with RESTful APIS. If you're not familiar with API concepts like HTTP response codes, REST endpoints, and JSON, try <a href="https://zapier.com/apps/tatango/integrations" target="_blank">Zapier</a>.   
 
You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.


# Authentication

Note: You can access your API key <a href="http://help.tatango.com/api/api-keys">here</a>.

> To authorize, use this code:

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/example-endpoint')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
# With shell, you can just pass the correct email and api key with each request
curl -u emailaddress@mydomain.com:my_api_key https://app.tatango.com/api/v2/example-endpoint
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/example-endpoint", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> Make sure to replace `my_api_key` with your API key, which can be obtained by logging into <a href="https://app.tatango.com/" target="_blank">https://app.tatango.com</a>.

Tatango authenticates API requests by validating an API key that must be passed with each API call.  We use the built-in HTTP basic authentication scheme supported by most HTTP libraries.  Use your login email as the username and the API key as the password.



# Accounts

## Get Current Account

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/accounts')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/accounts/me" -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/accounts/me", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
  {
    "status":"OK",
    "account": {
      "id":37,
      "email":"myemail36@gmail.com",
      "username":"boowebb36"
    }
  }

```

This endpoint retrieves the current account, as specified by the API key used to authenticate.

### HTTP Request

`GET https://app.tatango.com/api/accounts/me`

<aside class="success">
You will receive a 200 status on success
</aside>
<aside class="error">
<strong>Disabled API Key</strong>
<p>
{"status":"error","error":"This API key is disabled"}
</p>
</aside>
<aside class="error">
<strong>Invalid API Key</strong>
<p>{"status":"error","error":"API key authorization failure"}</p>
</aside>

# Lists

## List all Lists

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists" -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "per_page":10,
   "count":3,
   "page":1,
   "pages_count":1,
   "lists":[  
      {  
         "email_digest":"myemail12@gmail.com",
         "email_subscribe":null,
         "email_unsubscribe":null,
         "first_optin_message":"",
         "id":7,
         "message_already_subscribed":null,
         "message_help":null,
         "message_reply":null,
         "message_stop":null,
         "message_yes":null,
         "name":"Mobile Campaign",
         "second_optin_message":"",
         "keyword_names":[  

         ],
         "counts":{  
            "subscribers":0,
            "unsubscribed":0,
            "cleaned":0
         },
         "opt_in_type":"single",
         "opt_in_requests":[  

         ]
      },
      {  
         "email_digest":"myemail14@gmail.com",
         "email_subscribe":null,
         "email_unsubscribe":null,
         "first_optin_message":"",
         "id":8,
         "message_already_subscribed":null,
         "message_help":null,
         "message_reply":null,
         "message_stop":null,
         "message_yes":null,
         "name":"Pizza Campaign",
         "second_optin_message":"",
         "keyword_names":[  

         ],
         "counts":{  
            "subscribers":0,
            "unsubscribed":0,
            "cleaned":0
         },
         "opt_in_type":"single",
         "opt_in_requests":[  

         ]
      },
      {  
         "email_digest":"myemail15@gmail.com",
         "email_subscribe":null,
         "email_unsubscribe":null,
         "first_optin_message":"",
         "id":9,
         "message_already_subscribed":null,
         "message_help":null,
         "message_reply":null,
         "message_stop":null,
         "message_yes":null,
         "name":"Pizza Campaign",
         "second_optin_message":"",
         "keyword_names":[  
            "NEWHOTELS"
         ],
         "counts":{  
            "subscribers":0,
            "unsubscribed":0,
            "cleaned":0
         },
         "opt_in_type":"single",
         "opt_in_requests":[  

         ]
      }
   ]
}
```

This endpoint retrieves a list of all lists owned by the current account.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists`

## Retrieve List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/<ID>')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/<ID>" -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/<ID>", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "list":{  
      "email_digest":"myemail2@gmail.com",
      "email_subscribe":null,
      "email_unsubscribe":null,
      "first_optin_message":"",
      "id":2,
      "message_already_subscribed":null,
      "message_help":null,
      "message_reply":null,
      "message_stop":null,
      "message_yes":null,
      "name":"Book Campaign",
      "second_optin_message":"",
      "keyword_names":[  

      ],
      "counts":{  
         "subscribers":0,
         "unsubscribed":0,
         "cleaned":0
      },
      "opt_in_type":"single",
      "opt_in_requests":[  

      ]
   }
}

```

This endpoint retrieves a specific list.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list to retrieve

## Configure List Opt-In Type

> Setting the opt-in type to "double":

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":null,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings" -d '{"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":null,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":null,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"Opt in settings updated",
   "opt_in_type":"double",
   "opt_in_requests":[  
      {  
         "bypass_opt_in_response":false,
         "collected_data":"zip_code",
         "created_at":"2016-09-07T14:10:41-07:00",
         "follow_up":true,
         "follow_up_hour":2,
         "id":1,
         "list_id":10,
         "no_response_message":"Please let us know, what is your zip code?",
         "opt_in_message":null,
         "request_message":"Your zip code?",
         "retry_message":"Wrong zip code, try again",
         "second_opt_in_message":null,
         "success_action":"nextrequest",
         "updated_at":"2016-09-07T14:10:41-07:00"
      },
      {  
         "bypass_opt_in_response":false,
         "collected_data":"email_address",
         "created_at":"2016-09-07T14:10:41-07:00",
         "follow_up":true,
         "follow_up_hour":24,
         "id":2,
         "list_id":10,
         "no_response_message":"Please let us know, what is your email?",
         "opt_in_message":null,
         "request_message":"Your email?",
         "retry_message":"Wrong email, try again",
         "second_opt_in_message":null,
         "success_action":"nextrequest",
         "updated_at":"2016-09-07T14:10:41-07:00"
      },
      {  
         "bypass_opt_in_response":false,
         "collected_data":"first_name",
         "created_at":"2016-09-07T14:10:41-07:00",
         "follow_up":true,
         "follow_up_hour":24,
         "id":3,
         "list_id":10,
         "no_response_message":"Please let us know, what is your name?",
         "opt_in_message":null,
         "request_message":"Your name?",
         "retry_message":"Wrong name, try again",
         "second_opt_in_message":null,
         "success_action":"nextrequest",
         "updated_at":"2016-09-07T14:10:41-07:00"
      },
      {  
         "bypass_opt_in_response":false,
         "collected_data":"yes",
         "created_at":"2016-09-07T14:10:41-07:00",
         "follow_up":false,
         "follow_up_hour":24,
         "id":4,
         "list_id":10,
         "no_response_message":null,
         "opt_in_message":"Welcome to our awesome mailing list.",
         "request_message":"Reply YES to join our awesome mailing list",
         "retry_message":"Reply YES to join our awesome mailing list",
         "second_opt_in_message":"Welcome back to our awesome mailing list.",
         "success_action":"optinsubscriber",
         "updated_at":"2016-09-07T14:10:41-07:00"
      }
   ]
}
```
> Setting the opt-in type to "single":

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"opt_in_type":"single","first_optin_message":"Welcome","second_optin_message":"Welcome back"})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings" -d '{"opt_in_type":"single","first_optin_message":"Welcome","second_optin_message":"Welcome back"}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"opt_in_type":"single","first_optin_message":"Welcome","second_optin_message":"Welcome back"});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{  
   "opt_in_type":"single",
   "first_optin_message":"Welcome",
   "second_optin_message":"Welcome back"
}
```

This endpoint configures an opt-in type for a list.

### HTTP Request

`PUT https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list to change


### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
opt_in_type | Opt in type (may be either "single" or "double")
first_optin_message | First opt in message (only used with single opt-ins)
second_optin_message | Second opt in message (only used with single opt-ins)
opt_in_requests	| Array of opt in requests (only used with double opt-ins)
opt_in_requests[request_message]	| message that will be sent to subscriber
opt_in_requests[retry_message]	| message that will be sent to subscriber if he will respond with invalid data
opt_in_requests[follow_up]	| send follow up message if customer doesn't respond?
opt_in_requests[follow_up_hour]	| follow up customer in how many hours/
opt_in_requests[no_response_message]	| content of follow up message
opt_in_requests[success_action]	| "nextrequest" or "optinsubscriber". should be "optinsubscriber" in last opt in request
opt_in_requests[opt_in_message]	| First opt in message
opt_in_requests[second_opt_in_message]	| Second opt in message

## Creating a New List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"list":{"name":"My awesome list"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/" -d '{"list":{"name":"My awesome list"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"list":{"name":"My awesome list"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"List created",
   "list":{
      "email_digest":"myemail18@gmail.com",
      "email_subscribe":null,
      "email_unsubscribe":null,
      "first_optin_message":"",
      "id":11,
      "message_already_subscribed":null,
      "message_help":null,
      "message_reply":null,
      "message_stop":null,
      "message_yes":null,
      "name":"My awesome list",
      "second_optin_message":"",
      "keyword_names":[

      ],
      "counts":{
         "subscribers":0,
         "unsubscribed":0,
         "cleaned":0
      },
      "opt_in_type":"single",
      "opt_in_requests":[

      ]
   }
}
```

This endpoint creates a new list.

<aside class="success">
  <ul>
    <li>
      <em>What are the limitations for a keyword?</em>
      <p>A keyword must contain at least two characters.</p>
    </li>
    <li>
       <em>Are keywords case sensitive?</em>
       <p>No. The system checks for duplicate keywords by transforming all keywords to uppercase before performing matching algorithms.</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>The response from the API will be a 422 error with the response body looking like this: {"status":"error","error":"invalid keyword names: EXISTINGKW"}</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>Yes.  By utilizing <a href="#testing-keyword-availability-for-list">this</a> endpoint. The response will either be 200 OK {"status":"OK","keyword_name":"available"} or 200 OK  {"status":"OK","keyword_name":"unavailable","error":"Name is in use"}.</p>
    </li>
    <li>
      <em>Can I add multiple keywords to a list?</em>
      <p>Yes.  The keyword_names parameter would need to be an array, like this: {"keyword_names":["TEST","KEYWORD","NAMES"]}, of valid, not-already used, keywords.</p>
    </li>
    <li>
      <em>What is a REPLY Response?</em>
      <p>REPLY Response is the response sent to the subscriber if they respond to the message with the word REPLY.</p>
    </li>
  </ul>
</aside>

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
list[name] | List name
list[message_yes] | API Opt-In Confirmation Request
list[message_help] | HELP Response
list[message_stop] | STOP Response
list[message_reply] | REPLY Response
list[message_already_subscribed] | Already Subscribed Response
list[first_optin_message] | First Opt In Message
list[second_optin_message] | Second Opt In Message
list[email_digest] | Email to send email digest to. Leave blank if you dont want to receive
list[email_subscribe] | Email to send subscribe notifications to. Leave blank if you dont want to receive
list[email_unsubscribe] | Email to send unsubscribe notifications to. Leave blank if you dont want to receive

## Destroying a List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Delete.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID" -d '' -X DELETE \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("DELETE", "https://app.tatango.com/api/v2/lists/", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"list":{"name":"My awesome list"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
  "status":"List Destroyed"
}
```

This endpoint destroys a list.

### HTTP Request

`DELETE https://app.tatango.com/api/v2/lists/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list to delete

## Setting(Updating) Keywords for a List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/<ID>/keywords')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"keyword_names":["TEST","KEYWORD","NAMES"]}
)
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/<ID>/keywords" -d '{"keyword_names":["TEST","KEYWORD","NAMES"]}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"keyword_names":["TEST","KEYWORD","NAMES"]});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Keywords changed",
   "keyword_names":[
      "TEST",
      "KEYWORD",
      "NAMES"
   ]
}
```

This endpoint sets or updates keywords for a list.

### HTTP Request

`PUT https://app.tatango.com/api/v2/lists/<ID>/keywords`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list to change


### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
keyword_names	| Array of keyword names

<aside class="success">
  <ul>
    <li>
      <em>What are the limitations for a keyword?</em>
      <p>A keyword must contain at least two characters.</p>
    </li>
    <li>
       <em>Are keywords case sensitive?</em>
       <p>No. The system checks for duplicate keywords by transforming all keywords to uppercase before performing matching algorithms.</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>The response from the API will be a 422 error with the response body looking like this: {"status":"error","error":"invalid keyword names: EXISTINGKW"}</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>Yes.  By utilizing <a href="#testing-keyword-availability-for-list">this</a> endpoint. The response will either be 200 OK {"status":"OK","keyword_name":"available"} or 200 OK  {"status":"OK","keyword_name":"unavailable","error":"Name is in use"}.</p>
    </li>
  </ul>
</aside>

## Updating a List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"list":{"name":"Name"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/" -d '{"list":{"name":"Name"}}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"list":{"name":"Name"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "list":{
      "email_digest":"myemail0@gmail.com",
      "email_subscribe":null,
      "email_unsubscribe":null,
      "first_optin_message":"",
      "id":1,
      "message_already_subscribed":null,
      "message_help":null,
      "message_reply":null,
      "message_stop":null,
      "message_yes":null,
      "name":"Name",
      "second_optin_message":"",
      "keyword_names":[

      ],
      "counts":{
         "subscribers":0,
         "unsubscribed":0,
         "cleaned":0
      },
      "opt_in_type":"single",
      "opt_in_requests":[

      ]
   }
}
```

This endpoint updates a list.

### HTTP Request

`PUT https://app.tatango.com/api/v2/lists/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list to change

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
list[name] | List name
list[message_yes] | API Opt-In Confirmation Request
list[message_help] | HELP Response
list[message_stop] | STOP Response
list[message_reply] | REPLY Response
list[message_already_subscribed] | Already Subscribed Response
list[first_optin_message] | First Opt In Message
list[second_optin_message] | Second Opt In Message
list[email_digest] | Email to send email digest to. Leave blank if you dont want to receive
list[email_subscribe] | Email to send subscribe notifications to. Leave blank if you dont want to receive
list[email_unsubscribe] | Email to send unsubscribe notifications to. Leave blank if you dont want to receive

#Subscribers

## Adding a Subscriber

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"subscriber":{"phone_number":"2141234567","first_name":"John","last_name":"Doe","email":"johndoe@domain.com","birthdate":"19780728","zip_code":"52421","gender":"Male"},"my_custom_field":{"custom_key":"custom_value"}});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers" -d '{"subscriber":{"phone_number":"2141234567","first_name":"John","last_name":"Doe","email":"johndoe@domain.com","birthdate":"19780728","zip_code":"52421","gender":"Male"},"my_custom_field":{"custom_key":"custom_value"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/subscribers", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"subscriber":{"phone_number":"2141234567","first_name":"John","last_name":"Doe","email":"johndoe@domain.com","birthdate":"19780728","zip_code":"52421","gender":"Male"},"my_custom_field":{"custom_key":"custom_value"}});
request.send(data);
```

> The above command returns possible JSON responses structured like this:

```json
{
   "status":"Subscriber being added to list pending confirmation",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}

{
   "status":"Subscriber has been added - no opt-in message was sent due to list settings.",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}

{
   "status":"Subscriber has already been sent opt-in message for this campaign.",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}

{
   "status":"Subscriber is already subscribed to this campaign.",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}

{
   "status":"Subscriber being added to campaign pending confirmation.",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}
```

This endpoint adds a subscriber to a list.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/subscribers`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
subscriber[phone_number] | The wireless phone number of the subscriber.
subscriber[first_name] | (optional) First name - char(50)
subscriber[last_name] | (optional) Last name - char(50)
subscriber[email] | (optional) Email - char(50)
subscriber[birthdate] | (optional) Birthdate - int(8)
subscriber[zip_code] | (optional) ZIP code - char(6)
subscriber[gender] | (optional) Gender - char('Male' or 'Female')
tags | (optional) List of tags, comma separated, for example: 'vip customer, card holder, daily alerts'

### Responses Explained

Key | Description
--------- | -----------
phone_number | The wireless phone number of the subscriber.
cleaned_at | If this subscriber was automatically unsubscribed from a list, then the date and time of that action will be displayed here.
subscribed_at | The data that this subscriber first subscribed to this specific list.
opted_out_at | The data that this subscriber last unsubscribed from this specific list.
opt_in_method | The original opt-in method used by this subscriber to opt-in to this specific list.
keyword_name | If the subscriber opted-in by texting a keyword, that keyword they used will be displayed here.
carrier | The ID of the wireless carrier for this specific subscriber.
carrier_name | The name of the wireless carrier for this specific subscriber.

<aside>
<h3>FAQ About This Endpoint</h3>
  <ul>
    <li>
      <em>What happens when we use the add subscriber API to add a home phone number (i.e. non-cellular)?</em>
      <p>You will receive the message "Bad phone number: landline or unreachable carrier" with the status code 422.</p>
    </li>
    <li>
      <em>What happens when we use the add subscriber API to add a phone number that is currently unsubscribed from the list?</em>
      <p>We will initiate the process of resubscribing the phone number to the list.</p>
    </li>
    <li>
      <em>What happens when we use the add subscriber API to add a phone number that is already subscribed to the list?</em>
      <p>A 200 OK is returned and no changes are made the subscriber.</p>
    </li>
    <li>
      <em>Can I turn off the double opt-in (reply yes), and make it a single opt-in, so when the number is added, they just get a confirmation message?</em>
      <p>Yes - you will need to change the Opt-In Type for the list. You can not bypass alerts with this endpoint.</p>
    </li>
    <li>
      <em>Can I request something other than a reply of YES to opt-in when opting into an API?</em>
      <p>No. The reply is currently configured to YES.</p>
    </li>
    <li>
      <em>Can I add a subscriber via API with custom data for that subscriber?</em>
      <p>Yes. The optional parameters are listed for this API endpoint.</p>
    </li>
    <li>
      <em>For subscriber fields like name, birthday, etc., are there any limitations on what we can use, like character limit, only certain characters, etc?</em>
      <p>Yes. All optional parameters' limitations are noted - see the JSON parameters above.</p>
    </li>
    <li>
      <em>In what format should phone numbers be sent?</em>
      <p>The phone number should be a continuous string of ten digits - with no dashes and no country code (e.g. "2065551111").</p>
    </li>
    <li>
      <em>If an account has multiple lists, and a phone number has opted-out, or been cleaned from one list, can we use the API to add them to a new list?</em>
      <p>Yes - each list is a separate entity.</p>
    </li>
  </ul>
</aside>

## Getting a Subscriber

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"John",
      "last_name":"Doe",
      "email":"johndoe@mydomain.com",
      "birthdate":"19780728",
      "zip_code":"5124",
      "gender":"Male",
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":null,
      "optin_in_progress":false,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ],
      "total_messages_received":12540
   }
}
```

This endpoint returns information about a current subscriber.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list
SUBSCRIBER_ID | ID of the subscriber

### Responses Explained

Key | Description
--------- | -----------
phone_number | The wireless phone number of the subscriber.
cleaned_at | If this subscriber was automatically unsubscribed from a list, then the date and time of that action will be displayed here.
subscribed_at | The data that this subscriber first subscribed to this specific list.
opted_out_at | The data that this subscriber last unsubscribed from this specific list.
opt_in_method | The original opt-in method used by this subscriber to opt-in to this specific list.
keyword_name | If the subscriber opted-in by texting a keyword, that keyword they used will be displayed here.
carrier | The ID of the wireless carrier for this specific subscriber.
carrier_name | The name of the wireless carrier for this specific subscriber.
total_messages_received | The total amount of mass messages this specific subscriber has received over their lifetime from this specific list.

## Updating a Subscriber

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"subscriber":{"first_name":"John","last_name":"Doe"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID" -d '{"subscriber":{"first_name":"John","last_name":"Doe"}}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify('{"subscriber":{"first_name":"John","last_name":"Doe"}}');
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Subscriber has been updated.",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"John",
      "last_name":"Doe",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:54-07:00",
      "opted_out_at":"2016-09-06T16:00:00-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}
```

This endpoint updates a subscriber.

### Responses Explained

Key | Description
--------- | -----------
phone_number | The wireless phone number of the subscriber.
cleaned_at | If this subscriber was automatically unsubscribed from a list, then the date and time of that action will be displayed here.
subscribed_at | The data that this subscriber first subscribed to this specific list.
opted_out_at | The data that this subscriber last unsubscribed from this specific list.
opt_in_method | The original opt-in method used by this subscriber to opt-in to this specific list.
keyword_name | If the subscriber opted-in by texting a keyword, that keyword they used will be displayed here.
carrier | The ID of the wireless carrier for this specific subscriber.
carrier_name | The name of the wireless carrier for this specific subscriber.

<aside class="success">
  <h3>FAQS About This Endpoint</h3>
    <ul>
      <li>
        <em>If I add tags to an existing subscriber, does that add the tags to existing, or replace existing?</em>
        <p>If there are tags already, then they are updated, else, they are added.</p>
      </li>
      <li>
        <em>Can I update custom subscriber data for a subscriber?</em>
        <p>Yes, the paramaters are listed below.</p>
      </li>
    </ul>
</aside>

### HTTP Request

`PUT https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list
SUBSCRIBER_ID | ID of the subscriber

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
ID | ID of the list
subscriber[phone_number] | The wireless phone number of the subscriber.
subscriber[first_name] | (optional) First name - char(50)
subscriber[last_name] | (optional) Last name - char(50)
subscriber[email] | (optional) Email - char(50)
subscriber[birthdate] | (optional) Birthdate - int(6)
subscriber[zip_code] | (optional) ZIP code - char(6)
subscriber[gender] | (optional) Gender - char('Male' or 'Female')
tags | (optional) List of tags, comma separated, for example: 'vip customer, card holder, daily alerts'

## Adding Multiple Tags to Multiple Subscribers

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["local_news","sports_news","celebrity_news","weather_news"]});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags" -d '{"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["local_news","sports_news","celebrity_news","weather_news"]}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["local_news","sports_news","celebrity_news","weather_news"]});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"Tags were applied"
}
```

This endpoint applies multiple tags to multiple subscribers. The tags are added to any tags already applied, not replaced.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
phone_numbers	| The wireless phone numbers of the subscribers.
tags | Array of tags to add

## Unsubscribing a Subscriber

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Delete.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID" -d '' -X DELETE \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("DELETE", "https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"successfully unsubscribed",
   "subscriber":{
      "phone_number":"2141234567",
      "first_name":"",
      "last_name":"",
      "email":"",
      "birthdate":"",
      "zip_code":"",
      "gender":null,
      "cleaned_at":null,
      "subscribed_at":"2016-09-07T14:10:53-07:00",
      "opted_out_at":"2016-09-07T14:10:54-07:00",
      "optin_in_progress":true,
      "opt_in_method":"api",
      "keyword_name":null,
      "carrier":77,
      "carrier_name":"Verizon",
      "tags":[

      ]
   }
}
```

This endpoint unsubscribes a subscriber.

### HTTP Request

`DELETE https://app.tatango.com/api/v2/lists/ID/subscribers/SUBSCRIBER_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list
SUBSCRIBER_ID | ID of the subscriber

### Responses Explained

Key | Description
--------- | -----------
phone_number | The wireless phone number of the subscriber.
cleaned_at | If this subscriber was automatically unsubscribed from a list, then the date and time of that action will be displayed here.
subscribed_at | The data that this subscriber first subscribed to this specific list.
opted_out_at | The data that this subscriber last unsubscribed from this specific list.
opt_in_method | The original opt-in method used by this subscriber to opt-in to this specific list.
keyword_name | If the subscriber opted-in by texting a keyword, that keyword they used will be displayed here.
carrier | The ID of the wireless carrier for this specific subscriber.
carrier_name | The name of the wireless carrier for this specific subscriber.

## Get a List of Phone Numbers

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/subscribers", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "per_page":10,
   "count":1,
   "page":1,
   "pages_count":1,
   "phone_numbers":[
      "2145550816"
   ]
}
```

This endpoint gets a list of subscribed phone numbers for the requested list.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/subscribers`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

## Get a List of Unsubscribed Phone Numbers

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/cleaned')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/cleaned" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/subscribers/cleaned", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "per_page":10,
   "count":1,
   "page":1,
   "pages_count":1,
   "phone_numbers":[
      "2145550816"
   ]
}
```

This endpoint gets a list of unsubscribed phone numbers.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/subscribers/cleaned`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

# Messaging 

## Sending Message to Entire List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/messages')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"message":{"content":"Hello, world!"}});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/messages" -d '{"message":{"content":"Hello, world!"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/messages", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"message":{"content":"Hello, world!"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "message":{
      "id":4
   }
}
```

This endpoint sends a message.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/messages`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list


### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
message[content] | Message content

## Sending Message to Subset of List (Single Numbers)

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/messages')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"message":{"content":"Hello, John!","phone_number":"9258642505"}});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/messages" -d '{"message":{"content":"Hello, John!","phone_number":"9258642505"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/messages", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"message":{"content":"Hello, John!","phone_number":"9258642505"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "message":{
      "id":3
   }
}
```

This endpoint sends a message to a single recipient.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/messages`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list


### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
message[content] | Message content
message[phone_number] | The wireless phone number of the subscriber.

## Sending Message to Subset of List (Multiple Numbers)

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/messages')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"message":{"content":"Hello, John!","phone_numbers":["9258642505","9258642508"]}});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/messages" -d '{"message":{"content":"Hello, John!","phone_numbers":["9258642505","9258642508"]}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/messages", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"message":{"content":"Hello, John!","phone_numbers":["9258642505","9258642508"]}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "message":{
      "id":3
   }
}
```

This endpoint sends a message to multiple recipients.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/messages`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list


### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
message[content] | Message content
message[phone_numbers] | Array of phone numbers of target recipients

## Querying an Existing Message

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/messages/MESSAGE_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/messages/MESSAGE_ID" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/messages/MESSAGE_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "message":{
      "content":"AMCE Retail: Save $20 off this weekend when you spend more than $100 in-store. Show this text message to redeem. Reply STOP to end.",
      "id":14523,
      "sent_at":"2016-09-07T14:10:53-07:00",
      "status":"sent",
      "is_broadcast":true,
      "phone_number":null,
      "recipient_count":679571,
      "success_count":675232,
      "bounces_count":4339,
      "pending_count":0,
      "clean_count":2342,
      "unsubscribe_count":1362
   }
}
```

This endpoint retrieves a message.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/messages/MESSAGE_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list
MESSAGE_ID | ID of the message

### Responses Explained

Key | Description
--------- | -----------
content | The actual content of the message that was sent to subscribers.
id | A unique ID that identifies this specific message.
sent_at | The date/time this message completed it's send.
status | The status of the message.
is_broadcast |	
phone_number | The wireless phone number of the subscriber.
recipient_count | The number of recipients the message was sent to.
success_count | The number of recipients that succesfully received the message on their mobile phones.
bounces_count | The number of recipients that did not receive the message on their mobile phones.
pending_count | 
clean_count | The number of recipients that Tatango automatically unsubscribed from your list due to our 
unsubscribe_count | The number of recipients that unsubscribed from the list, in response to the message that was sent to them.

# Message Log (MOMT) Reports

## Creating a New MOMT Report

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/momt_reports')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"date_from":"2016-08-08T22:10:41+01:00","date_to":"2016-09-07T22:10:41+01:00","webhook_callback_url":"http://requestb.in/1d60vok1"})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/momt_reports" -d '{"date_from":"2016-08-08T22:10:41+01:00","date_to":"2016-09-07T22:10:41+01:00","webhook_callback_url":"http://requestb.in/1d60vok1"}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/momt_reports", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"date_from":"2016-08-08T22:10:41+01:00","date_to":"2016-09-07T22:10:41+01:00","webhook_callback_url":"http://requestb.in/1d60vok1"});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "momt_report":{
      "account_id":22,
      "campaign":null,
      "carrier":null,
      "counts_calculated":false,
      "created_at":"2016-09-07T14:10:41-07:00",
      "date_from":"2016-08-08T22:10:41+01:00",
      "date_range":"json",
      "date_to":"2016-09-07T22:10:41+01:00",
      "direction":null,
      "id":3,
      "import_completed_at":null,
      "import_started_at":null,
      "is_csv":false,
      "mo_count":0,
      "mt_count":0,
      "percent_complete":0,
      "phone_number":null,
      "processed_rows":0,
      "run_errors":null,
      "s3_url":null,
      "shortcode":null,
      "status_array":null,
      "total_rows":null,
      "type":null,
      "updated_at":"2016-09-07T14:10:41-07:00",
      "webhook_callback_url":null
   }
}
```

This endpoint creates a new MOMT Report.

### HTTP Request

`POST https://app.tatango.com/api/v2/momt_reports`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
date_from | {:scope=>:momt_reports}
date_to | {:scope=>:momt_reports}
webhook_callback_url | {:scope=>:momt_reports}

## Getting Status of a Processed MOMT Report

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/momt_reports/ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/momt_reports/ID" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/momt_reports", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "momt_report":{  
      "account_id":20,
      "campaign":null,
      "carrier":null,
      "counts_calculated":true,
      "created_at":"2016-09-07T14:10:41-07:00",
      "date_from":"2016-08-28T22:10:41.597+01:00",
      "date_range":"json",
      "date_to":"2016-09-07T22:10:41.597+01:00",
      "direction":null,
      "id":1,
      "import_completed_at":null,
      "import_started_at":null,
      "is_csv":false,
      "mo_count":0,
      "mt_count":0,
      "percent_complete":0,
      "phone_number":null,
      "processed_rows":0,
      "run_errors":null,
      "s3_url":null,
      "shortcode":null,
      "status_array":null,
      "total_rows":0,
      "type":null,
      "updated_at":"2016-09-07T14:10:41-07:00",
      "webhook_callback_url":null
   }
}
```

This endpoint gets the status of a processed MOMT Report.

### HTTP Request

`GET https://app.tatango.com/api/v2/momt_reports/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of MOMT Report to get status of

## Getting Status of a Unprocessed MOMT Report

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/momt_reports/ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/momt_reports/ID" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/momt_reports", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "momt_report":{  
      "account_id":21,
      "campaign":null,
      "carrier":null,
      "counts_calculated":false,
      "created_at":"2016-09-07T14:10:41-07:00",
      "date_from":"2016-08-28T22:10:41.712+01:00",
      "date_range":"json",
      "date_to":"2016-09-07T22:10:41.712+01:00",
      "direction":null,
      "id":2,
      "import_completed_at":null,
      "import_started_at":null,
      "is_csv":false,
      "mo_count":0,
      "mt_count":0,
      "percent_complete":0,
      "phone_number":null,
      "processed_rows":0,
      "run_errors":null,
      "s3_url":null,
      "shortcode":null,
      "status_array":null,
      "total_rows":null,
      "type":null,
      "updated_at":"2016-09-07T14:10:41-07:00",
      "webhook_callback_url":null
   }
}
```

This endpoint gets the status of an unprocessed MOMT Report.

### HTTP Request

`GET https://app.tatango.com/api/v2/momt_reports/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of MOMT Report to get status of

# Shortcodes

## Listing Account Short Codes

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/shortcodes')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/shortcodes" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/shortcodes", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "shortcodes":["33733"]
}
```

This endpoint gets a list of short codes provisioned on your account.

### HTTP Request

`GET https://app.tatango.com/api/v2/shortcodes`

## Testing Keyword Availability on Short Code

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/shortcodes/ID/test_keyword')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"keyword_name":"TEST"});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/shortcodes/ID/test_keyword" -d '{"keyword_name":"TEST"}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/shortcodes/ID/test_keyword", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"keyword_name":"TEST"});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"OK",
   "keyword_name":"available"
}
```

This endpoint gets checks the availability of a keyword on the account's short code.

### HTTP Request

`POST https://app.tatango.com/api/v2/momt_reports/ID`

<aside class="error">
<strong>Name is in Use</strong>
<p>
{
  "status":"OK",
  "keyword_name":"unavailable",
  "error":"Name is in use"
}
</p>
</aside>

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the shortcode

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
keyword_name | Keyword name to test

<aside class="success">
  <ul>
    <li>
      <em>What are the limitations for a keyword?</em>
      <p>A keyword must contain at least two characters.</p>
    </li>
    <li>
       <em>Are keywords case sensitive?</em>
       <p>No. The system checks for duplicate keywords by transforming all keywords to uppercase before performing matching algorithms.</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>The response from the API will be a 422 error with the response body looking like this: {"status":"error","error":"invalid keyword names: EXISTINGKW"}</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>Yes.  By utilizing <a href="#testing-keyword-availability-for-list">this</a> endpoint. The response will either be 200 OK {"status":"OK","keyword_name":"available"} or 200 OK  {"status":"OK","keyword_name":"unavailable","error":"Name is in use"}.</p>
    </li>
  </ul>
</aside>

# Transactional Messages

## Send Transactional SMS Message

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/transactional_messages')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"transactional_message":{"number":"2835550430","content":"Test me!"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/transactional_messages" -d '{"transactional_message":{"number":"2835550430","content":"Test me!"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/transactional_messages", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify('{"transactional_message":{"number":"2835550430","content":"Test me!"}}');
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Message successfully sent.",
   "transactional_message":{
      "id":1,
      "number":"2835550430",
      "content":"Test me!",
      "status":"pending"
   }
}
```

> An example tatango transactional message reply

```json
{
  "type":"transactional_message_reply",
  "transactional_message_id":589733,
  "received_at":"2016-08-20T15:12:37-07:00",
  "phone_number":"3474437987",
  "carrier":383,
  "carrier_name":"AT&T",
  "content":"I replied to transactional"
}
```

This endpoint sends a Transactional SMS Message.



### HTTP Request

`POST https://app.tatango.com/api/v2/transactional_messages`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
transactional_message[number] | <span class="required">required</span> Phone number
transactional_message[content] | <span class="required">required</span> Message content
transactional_message[webhook_callback_url] | Webhook url (will send result of send to)

<aside class="success">
Example of webhook payload reply listed to the right.
  <ul>
    <li>
      <em>Can I send an MMS (Image/Video) messages using transactional?</em>
      <p>Only SMS messages can be sent through this endpoint.</p>
    </li>
  </ul>
</aside>

## Send Message with Disabled Transactional SMS

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/transactional_messages')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"transactional_message":{"number":"2835550430","content":"Test me!"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/transactional_messages" -d '{"transactional_message":{"number":"2835550430","content":"Test me!"}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/transactional_messages", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify('{"transactional_message":{"number":"2835550430","content":"Test me!"}}');
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Message successfully sent.",
   "transactional_message":{
      "id":1,
      "number":"2835550430",
      "content":"Test me!",
      "status":"pending"
   }
}
```

This endpoint sends a message with disabled Transactional SMS.

### HTTP Request

`POST https://app.tatango.com/api/v2/transactional_messages`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
transactional_message[number] | <span class="required">required</span> Phone number
transactional_message[content] | <span class="required">required</span> Message content

# Webhooks

## Creating a New Webhook for a List

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/webhooks')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"webhook":{"callback_url":"http://localhost.dev/null?api_key=foo_bar_baz","subscribe":true,"unsubscribe":true,"message_sent":false}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID" -d '{"webhook":{"callback_url":"http://localhost.dev/null?api_key=foo_bar_baz","subscribe":true,"unsubscribe":true,"message_sent":false}}' -X POST \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("POST", "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"webhook":{"callback_url":"http://localhost.dev/null?api_key=foo_bar_baz","subscribe":true,"unsubscribe":true,"message_sent":false}};
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Webhook created",
   "webhook":{
      "callback_url":"http://localhost.dev/null?api_key=foo_bar_baz",
      "created_at":"2016-09-07T14:11:13-07:00",
      "enabled":true,
      "id":4,
      "list_id":29,
      "message_sent":false,
      "subscribe":true,
      "unsubscribe":true,
      "updated_at":"2016-09-07T14:11:13-07:00"
   }
}
```

This endpoint creates a webhook for a list

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/webhooks`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list

## Updating a Webhook

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"webhook":{"callback_url":"http://mynewapi.com/?ref=tatango","subscribe":true,"unsubscribe":false,"message_sent":false}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID" -d '{"webhook":{"callback_url":"http://mynewapi.com/?ref=tatango","subscribe":true,"unsubscribe":false,"message_sent":false}}' -X PUT \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("PUT", "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
var data = JSON.stringify({"webhook":{"callback_url":"http://mynewapi.com/?ref=tatango","subscribe":true,"unsubscribe":false,"message_sent":false}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Webhook updated",
   "webhook":{
      "callback_url":"http://mynewapi.com/?ref=tatango",
      "created_at":"2016-09-07T14:11:13-07:00",
      "enabled":true,
      "id":9,
      "list_id":33,
      "message_sent":false,
      "subscribe":true,
      "unsubscribe":false,
      "updated_at":"2016-09-07T14:11:13-07:00"
   }
}
```

This endpoint updates a webhook

### HTTP Request

`PUT https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list
WEBHOOK_ID | The ID of the webhook

## Showing a Webhook

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "webhook":{
      "callback_url":"http://localhost/dev/null",
      "created_at":"2016-09-07T14:11:13-07:00",
      "enabled":true,
      "id":5,
      "list_id":30,
      "message_sent":false,
      "subscribe":true,
      "unsubscribe":false,
      "updated_at":"2016-09-07T14:11:13-07:00"
   }
}
```

This endpoint shows a webhook.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list
WEBHOOK_ID | The ID of the webhook

<aside class="error">
If the webhook does not exist you will get a 404 response with this body:

{"status":"error","error":"Webhook not found"}
</aside>

## Listing Webhooks

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/webhooks')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Get.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/webhooks" -d '' -X GET \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("GET", "https://app.tatango.com/api/v2/lists/ID/webhooks", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "per_page":10,
   "count":3,
   "page":1,
   "pages_count":1,
   "webhooks":[
      {
         "callback_url":"http://localhost/dev/null",
         "created_at":"2016-09-07T14:11:13-07:00",
         "enabled":true,
         "id":6,
         "list_id":31,
         "message_sent":false,
         "subscribe":true,
         "unsubscribe":false,
         "updated_at":"2016-09-07T14:11:13-07:00"
      },
      {
         "callback_url":"http://localhost/dev/null",
         "created_at":"2016-09-07T14:11:13-07:00",
         "enabled":true,
         "id":7,
         "list_id":31,
         "message_sent":false,
         "subscribe":true,
         "unsubscribe":false,
         "updated_at":"2016-09-07T14:11:13-07:00"
      },
      {
         "callback_url":"http://localhost/dev/null",
         "created_at":"2016-09-07T14:11:13-07:00",
         "enabled":true,
         "id":8,
         "list_id":31,
         "message_sent":false,
         "subscribe":true,
         "unsubscribe":false,
         "updated_at":"2016-09-07T14:11:13-07:00"
      }
   ]
}
```

This endpoint lists webhooks.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/webhooks`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list

<aside class="error">
If the list does not exist you will get a 404 response with this body:

{"status":"error","error":"List not found"}
</aside>

## Destroying a Webhook

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Delete.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID" -d '' -X DELETE \
	-H "Accept: application/json" \
	-H "Content-Type: application/json" \
	-u emailaddress@mydomain.com:my_api_key \
	-H "Host: example.org" \
	-H "Cookie: "
```

```javascript
var request = new XMLHttpRequest();
request.open("DELETE", "https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID", false);
request.setRequestHeader("Authorization", "Basic " + btoa("emailaddress@mydomain.com:my_api_key"));
request.send(null);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Webhook destroyed"
}
```

This endpoint destroys a webhook.

### HTTP Request

`DELETE https://app.tatango.com/api/v2/lists/ID/webhooks/WEBHOOK_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list
WEBHOOK_ID | The ID of the webhook

# General FAQs

<ul>
  <li>
    <em>Where can I find the "ID of the list"?</em>
    <p>You can find the ID of all of your lists by calling the <a href="#listing-all-lists">Listing all Lists"</a> endpoint.</p>
  </li>
  <li>
    <em>What are the differences between SMS and MMS?</em>
    <p>SMS (short message service) is a text-only message service. MMS (multimedia messaging service) is a service that allows the sender to send a multimedia message.</p>
  </li>
</ul>

# Carrier IDs

This section provides a list of carrier ID and names (US and Canada) for any response that includes `carrier` and `carrierName`

## United States Carriers

Carrier Name | Carrier ID
--------- | -----------
Alaska Communications Systems (ACS) | 592
ASTAC | 10242
AT&T | 383
Atlantic Tele-Network International (ATNI) | 10542
bandwidth.com (includes Republic Wireless) | 766
Blue Wireless | 11264
Bluegrass Cellular | 562
Boost Mobile | 534
Boost-CDMA | 586
Brightlink | 10212
C Spire Wireless (aka Cellular South) | 386
Carolina West Wireless | 564
CellCom | 587
Cellular One of N.E. Arizona | 566
Chariton Valley Cellular | 701
Chat Mobility | 619
Cleartalk (Flat Wireless) | 656
Copper Valley Telecom | 802
Cordova | 10282
Cross Wireless | 618
Duet Wireless | 696
East Kentucky Network (Appalachian Wireless) | 570
Enflick | 10262
Fair Point Communications | 803
GCI Communications | 603
Google Voice | 798
Illinois Valley Cellular | 574
Inland Cellular | 575
Inteliquent | 10232
Interop All Carriers | 697
IWireless | 477
Jasper Wireless | 11284
Leaco Rural Telephone Cooperative | 783
Level 3 (internal only) | 801
Ligado Networks | 11251
Limitless Mobile | 588
MetroPCS (GSM) | 788
Mid-Rivers Communications | 834
MobileNation/SI Wireless | 773
Mosaic Telecom | 658
MTA Wireless/Matanuska Kenai | 774
MTPCS Cellular One (Cellone Nation) | 655
Nemont CDMA | 796
Nemont US UMTS | 873
NewCore Wireless US | 11287
Nex Tech Communications | 578
Northwest Missouri Cellular | 620
Panhandle Wireless | 626
Peoples Wireless | 694
Pine Belt | 10352
Pine Cellular | 580
Pioneer Cellular | 621
Plateau Wireless | 651
Rock Wireless | 11252
Rural Independent Network Alliance (RINA) | 567
Shelcomm | 11293
SouthernLINC | 763
Sprint | 34
SRT Communications | 780
T-Mobile | 79
Thumb Cellular | 604
TracFone (AT&T) | 556
Triangle Communications US | 11290
Triangle Wireless | 10272
Union Telephone | 549
Union Wireless | 11286
United States Cellular Corp | 56
United Wireless | 602
Verizon | 77
Viaero US | 11289
Viaero Wireless | 650
Virgin Mobile | 525
West Central Wireless | 559

## Canadian Carriers

Carrier Name | Carrier ID
--------- | -----------
Aliant | 509
Bell Mobility | 80
Eastlink Wireless | 799
Execulink | 10573
Fido (Microcell) | 138
Freedom Canada | 11292
Mobilicity | 654
MTS | 510
NorthernTel | 512
Rogers | 75
Sasktel | 102
Telebec | 511
Telus | 70
Videotron | 615
Virgin Mobile | 537
WIND | 653
