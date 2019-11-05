# MyMarketing::NotificationApi

All URIs are relative to *https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notifications_post**](NotificationApi.md#notifications_post) | **POST** /notifications | Queue a notification


# **notifications_post**
> NotificationResponse notifications_post(body)

Queue a notification

Queues a notification to be sent on sendDate

### Example
```ruby
# load the gem
require 'my_marketing'

api_instance = MyMarketing::NotificationApi.new

body = MyMarketing::Notification.new # Notification | Notification that needs to be added to the queue


begin
  #Queue a notification
  result = api_instance.notifications_post(body)
  p result
rescue MyMarketing::ApiError => e
  puts "Exception when calling NotificationApi->notifications_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Notification**](Notification.md)| Notification that needs to be added to the queue | 

### Return type

[**NotificationResponse**](NotificationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



