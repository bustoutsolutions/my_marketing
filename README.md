# my_marketing

MyMarketing - the Ruby gem for the MyMarketing Notifications

Virtuoso MyMarketing Notification API

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build my_marketing.gemspec
```

Then either install the gem locally:

```shell
gem install ./my_marketing-1.0.0.gem
```
(for development, run `gem install --dev ./my_marketing-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'my_marketing', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'my_marketing', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
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

## Documentation for API Endpoints

All URIs are relative to *https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MyMarketing::ConsumerApi* | [**consumers_post**](docs/ConsumerApi.md#consumers_post) | **POST** /consumers | Create a consumer
*MyMarketing::ConsumerApi* | [**consumers_virtuoso_id_put**](docs/ConsumerApi.md#consumers_virtuoso_id_put) | **PUT** /consumers/{virtuosoId} | Update a consumer
*MyMarketing::LoginApi* | [**login_get**](docs/LoginApi.md#login_get) | **GET** /login | Authentication
*MyMarketing::NotificationApi* | [**notifications_post**](docs/NotificationApi.md#notifications_post) | **POST** /notifications | Queue a notification


## Documentation for Models

 - [MyMarketing::ConsumerCreate](docs/ConsumerCreate.md)
 - [MyMarketing::ConsumerResponse](docs/ConsumerResponse.md)
 - [MyMarketing::ConsumerResult](docs/ConsumerResult.md)
 - [MyMarketing::ConsumerUpdate](docs/ConsumerUpdate.md)
 - [MyMarketing::CustomData](docs/CustomData.md)
 - [MyMarketing::LoginResponse](docs/LoginResponse.md)
 - [MyMarketing::LoginResult](docs/LoginResult.md)
 - [MyMarketing::Notification](docs/Notification.md)
 - [MyMarketing::NotificationResponse](docs/NotificationResponse.md)


## Documentation for Authorization

 All endpoints do not require authorization.
