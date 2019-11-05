# MyMarketing::ConsumerApi

All URIs are relative to *https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumers_post**](ConsumerApi.md#consumers_post) | **POST** /consumers | Create a consumer
[**consumers_virtuoso_id_put**](ConsumerApi.md#consumers_virtuoso_id_put) | **PUT** /consumers/{virtuosoId} | Update a consumer


# **consumers_post**
> ConsumerResponse consumers_post(body)

Create a consumer

Create a consumer record

### Example
```ruby
# load the gem
require 'my_marketing'

api_instance = MyMarketing::ConsumerApi.new

body = MyMarketing::ConsumerCreate.new # ConsumerCreate | Create a consumer record


begin
  #Create a consumer
  result = api_instance.consumers_post(body)
  p result
rescue MyMarketing::ApiError => e
  puts "Exception when calling ConsumerApi->consumers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ConsumerCreate**](ConsumerCreate.md)| Create a consumer record | 

### Return type

[**ConsumerResponse**](ConsumerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **consumers_virtuoso_id_put**
> ConsumerResponse consumers_virtuoso_id_put(virtuoso_id, body)

Update a consumer

Update a consumer record based on virtuosoId.

### Example
```ruby
# load the gem
require 'my_marketing'

api_instance = MyMarketing::ConsumerApi.new

virtuoso_id = 8.14 # Float | Virtuoso ID for this consumer that was received as part of /consumer POST response

body = MyMarketing::ConsumerUpdate.new # ConsumerUpdate | Update an existing Consumer record


begin
  #Update a consumer
  result = api_instance.consumers_virtuoso_id_put(virtuoso_id, body)
  p result
rescue MyMarketing::ApiError => e
  puts "Exception when calling ConsumerApi->consumers_virtuoso_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **virtuoso_id** | **Float**| Virtuoso ID for this consumer that was received as part of /consumer POST response | 
 **body** | [**ConsumerUpdate**](ConsumerUpdate.md)| Update an existing Consumer record | 

### Return type

[**ConsumerResponse**](ConsumerResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



