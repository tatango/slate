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

Welcome to the Tatango API! The Tatango API is designed for developers, engineers, or anyone else who's comfortable creating custom-coded solutions or integrating with RESTful API's. If you think you may need some help integrating with the Tatango API, we invite you to check out our integration with <a href="https://zapier.com/" target="_blank">Zapier</a>.   

You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

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

# Campaigns

## List Campaigns

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

This endpoint retrieves a list of all campaigns owned by the current account.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists`

## Retrieve Campaign

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

This endpoint retrieves a specific campaign.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list to retrieve

## Configure Campaign Opt-In Type

> Setting the opt-in type to "double":
```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Put.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":24,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/<ID>/opt_in_settings" -d '{"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":24,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]}' -X PUT \
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
var data = JSON.stringify({"opt_in_type":"double","opt_in_requests":[{"collected_data":"zip_code","request_message":"Your zip code?","retry_message":"Wrong zip code, try again","follow_up":true,"follow_up_hour":2,"no_response_message":"Please let us know, what is your zip code?","success_action":"nextrequest"},{"collected_data":"email_address","request_message":"Your email?","retry_message":"Wrong email, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your email?","success_action":"nextrequest"},{"collected_data":"first_name","request_message":"Your name?","retry_message":"Wrong name, try again","follow_up":true,"follow_up_hour":24,"no_response_message":"Please let us know, what is your name?","success_action":"nextrequest"},{"collected_data":"yes","request_message":"Reply YES to join our awesome mailing list","retry_message":"Reply YES to join our awesome mailing list","follow_up":false,"follow_up_hour":24,"opt_in_message":"Welcome to our awesome mailing list.","second_opt_in_message":"Welcome back to our awesome mailing list.","success_action":"optinsubscriber"}]});
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

This endpoint configures an opt-in type to double.

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

## Creating a New Campaign

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"list":{"name":"My awesome campaign"}})
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/" -d '{"list":{"name":"My awesome campaign"}}' -X POST \
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
var data = JSON.stringify({"list":{"name":"My awesome campaign"}});
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
      "name":"My awesome campaign",
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

This endpoint creates a new campaign.

<aside class="success">
  <ul>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>The response from the API will be a 422 error with the response body looking like this: {"status":"error","error":"invalid keyword names: EXISTINGKW"}</p>
    </li>
    <li>
      <em>What happens if the keyword isn't available?</em>
      <p>Yes.  By utilizing <a href="#testing-keyword-availability-for-campaign">this</a> endpoint. The response will either be 200 OK {"status":"OK","keyword_name":"available"} or 200 OK  {"status":"OK","keyword_name":"unavailable","error":"Name is in use"}.</p>
    </li>
    <li>
      <em>Can I add multiple keywords to a campaign?</em>
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

## Destroying a Campaign

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
var data = JSON.stringify({"list":{"name":"My awesome campaign"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
  "status":"Campaign Destroyed"
}
```

This endpoint destroys a campaign.

### HTTP Request

`DELETE https://app.tatango.com/api/v2/lists/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list to delete

## Setting(Updating) Keywords for a Campaign

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

This endpoint sets or updates keywords for a campaign.

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

## Updating a Campaign

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

This endpoint updates a campaign.

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

# MomtReports

## Creating a New Momt Report

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

This endpoint creates a new Momt Report.

### HTTP Request

`POST https://app.tatango.com/api/v2/momt_reports`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
date_from | {:scope=>:momt_reports}
date_to | {:scope=>:momt_reports}
webhook_callback_url | {:scope=>:momt_reports}

## Getting Status of a Processed Momt Report

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

This endpoint gets the status of a processed Momt Report.

### HTTP Request

`GET https://app.tatango.com/api/v2/momt_reports/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of Momt Report to get status of

## Getting Status of a Unprocessed Momt Report

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

This endpoint gets the status of an unprocessed Momt Report.

### HTTP Request

`GET https://app.tatango.com/api/v2/momt_reports/ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of Momt Report to get status of

# Shortcodes

## Listing Available Shortcodes

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

This endpoint gets a list of available shortcodes.

### HTTP Request

`GET https://app.tatango.com/api/v2/shortcodes`

## Testing Keyword Availability for Campaign

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

This endpoint gets checks the availability of a keyword.

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

# Subscribers

## Adding Multiple Tags to Multiple Subscribers

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["some","funky","tagnames"]});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags" -d '{"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["some","funky","tagnames"]}' -X POST \
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
var data = JSON.stringify({"phone_numbers":["2145550762","7185550549","2125550838"],"tags":["some","funky","tagnames"]});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{  
   "status":"Tags were applied"
}
```

This endpoint applies multiple tags to multiple subscribers.

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/subscribers/add_tags`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
phone_numbers	| Phone numbers of subscribers
tags | Array of tags to add

## Adding a Subscriber

```ruby
require 'net/http'
require 'uri'

uri = URI.parse('https://app.tatango.com/api/v2/lists/ID/subscribers')
http = Net::HTTP.new(uri.host, uri.port)
request = Net:HTTP::Post.new(uri.request_url)
request.basic_auth("emailaddress@mydomain.com", "my_api_key")
request.body({"subscriber":{"phone_number":"2141234567"}});
response = http.request(request)
```

```shell
curl "https://app.tatango.com/api/v2/lists/ID/subscribers" -d '{"subscriber":{"phone_number":"2141234567"}}' -X POST \
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
var data = JSON.stringify({"subscriber":{"phone_number":"2141234567"}});
request.send(data);
```

> The above command returns JSON structured like this:

```json
{
   "status":"Subscriber being added to campaign pending confirmation",
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
      "carrier":0,
      "carrier_name":null,
      "tags":[

      ]
   }
}
```

This endpoint adds a subscriber to a list.

<aside class="success">
<h3>FAQ About This Endpoint</h3>
  <ul>
    <li>
      <em>What happens when we use the add subscriber API to add a home phone number?</em>
      <p>A user is subscribed to a campaign list when you use this endpoint with a phone number.</p>
    </li>
    <li>
      <em>What happens when we use the add subscriber API to add a phone number that is currently unsubscribed from the campaign?</em>
      <p>The user is subscribed to a campaign list when you use this endpoint with a phone number.</p>
    </li>
    <li>
      <em>What happens when we use add subscriber API to add phone number that isn’t in country of campaign?</em>
      <p>The user is subscribed to a campaign list when you use this endpoint with a phone number.</p>
    </li>
    <li>
      <em>What happens when we use add subscriber API to add a phone number that is currently subscribed to campaign?</em>
      <p>A 200 OK is returned and no changes are made the subscriber.</p>
    </li>
    <li>
      <em>Can I turn off the double opt-in (reply yes), and make it a single opt-in, so when the number is added, they just get a confirmation message? Also, can we bypass all alerts, and just add them.</em>
      <p>Not with this endpoint. You will need to change the Opt-In Type for the campaign. You can not bypass alerts with this endpoint.</p>
    </li>
    <li>
      <em>Can I request something other than a reply of YES to opt-in when opting into an API?</em>
      <p>No. The reply is currently configured to YES.</p>
    </li>
    <li>
      <em>Can I add a subscriber via API with custom data for that subscriber?</em>
      <p>Yes. The optional paramaters are listed for this API endpoint.</p>
    </li>
    <li>
      <em>For subscriber fields like name, birthday, etc., are there any limitations on what we can use, like character limit, only certain characters, etc?</em>
      <p>Yes. All optional parameters' limitations are noted.</p>
    </li>
    <li>
      <em>In what format can we send you phone numbers? Do we have to put +1 infront of number?</em>
      <p>The phone number should look as the examples indicate:  a continuous string of numbers with no dashes and no country code.</p>
    </li>
    <li>
      <em>If an account has multiple campaigns, and a phone number has opted-out, or been cleaned from one campaign, can we use the API to add them to a new campaign?</em>
      <p>Each campaign is a separate entity, yes.</p>
    </li>
  </ul>
</aside>

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/subscribers`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
subscriber[phone_number] | Phone number
subscriber[first_name] | (optional) First name - char(50)
subscriber[last_name] | (optional) Last name - char(50)
subscriber[email] | (optional) Email - char(50)
subscriber[birthdate] | (optional) Birthdate - int(6)
subscriber[zip_code] | (optional) ZIP code - char(6)
subscriber[gender] | (optional) Gender - char('Male' or 'Female')
tags | (optional) List of tags, comma separated, for example: 'foo,bar,baz'

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
      "carrier":0,
      "carrier_name":null,
      "tags":[

      ],
      "total_messages_received":0
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
      "content":"Hello!",
      "id":2,
      "sent_at":null,
      "status":"sending",
      "is_broadcast":true,
      "phone_number":null,
      "recipient_count":0,
      "success_count":0,
      "bounces_count":0,
      "pending_count":0,
      "clean_count":0,
      "unsubscribe_count":0
   }
}
```

This endpoint adds a subscriber to a list.

### HTTP Request

`GET https://app.tatango.com/api/v2/lists/ID/messages/MESSAGE_ID`

### URL Parameters

Parameter | Description
--------- | -----------
ID | ID of the list
MESSAGE_ID | ID of the message

## Sending Out a Message

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

## Sending Out a Message to Multiple Recipients

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

## Sending Out a Message to a Single Recipient

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
message[phone_number] | Phone number of target recipient

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
      "carrier":0,
      "carrier_name":null,
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
      "carrier":0,
      "carrier_name":null,
      "tags":[

      ]
   }
}
```

This endpoint updates a subscriber.

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
subscriber[phone_number] | Phone number
subscriber[first_name] | (optional) First name - char(50)
subscriber[last_name] | (optional) Last name - char(50)
subscriber[email] | (optional) Email - char(50)
subscriber[birthdate] | (optional) Birthdate - int(6)
subscriber[zip_code] | (optional) ZIP code - char(6)
subscriber[gender] | (optional) Gender - char('Male' or 'Female')
tags | (optional) List of tags, comma separated, for example: 'foo,bar,baz'

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

This endpoint gets a list of phone numbers.

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

This endpoint sends a Transactional SMS Message.

<aside class="success">
For example of webhook payload for reply, see https://gist.github.com/CodingFu/3e0c8b81514ebd92aadf77bbf156c89a
  <ul>
    <li>
      <em>Can I send an MMS (Image/Video) messages using transactional?</em>
      <p>Only SMS messages can be sent through this endpoint.</p>
    </li>
    <li>
      <em>Can I send transactional messages to people already in one of my campaigns?</em>
      <p>Yes. You can only send messages to people in your campaigns.</p>
    </li>
    <li>
      <em>Can I send transactional messages to people already in one of my campaigns?</em>
      <p>Yes. You can only send messages to people in your campaigns.</p>
    </li>
    <li>
     <em> Can I schedule an MMS (Image/Video) message from an API to my subscribers?</em>
      <p>You would need to schedule the SMS on your end and send to the API when you are ready to send it.</p>
    </li>
    <li>
      <em>Can I schedule a SMS or MMS message to a segmented group?</em>
      <p>You can select what numbers to send the message to and use the API to send to those numbers.</p>
    </li>

  </ul>
</aside>

### HTTP Request

`POST https://app.tatango.com/api/v2/transactional_messages`

### JSON Parameters (JSON Object)

Parameter | Description
--------- | -----------
transactional_message[number] | <span class="required">required</span> Phone number
transactional_message[content] | <span class="required">required</span> Message content
transactional_message[webhook_callback_url] | Webhook url (will send result of send to)

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

This endpoint updates a creates a new webhook for  a list

### HTTP Request

`POST https://app.tatango.com/api/v2/lists/ID/webhooks`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the list

# General FAQs

<ul>
  <li>
    <em>Where can I find the "ID of the list"?</em>
    <p>You can find the ID of all of your lists by calling the <a href="#listing-campaigns">Listing Campaigns"</a> endpoint.</p>
  </li>
  <li>
    <em>What are the differences between SMS and MMS?</em>
    <p>SMS (short message service) is a text-only message service. MMS (multimedia messaging service) is a service that allows the sender to send a multimedia message.</p>
  </li>

</ul>
