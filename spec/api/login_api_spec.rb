=begin
#MyMarketing Notifications

#Virtuoso MyMarketing Notification API

OpenAPI spec version: 1.0.0
Contact: techappdev@virtuoso.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'

# Unit tests for MyMarketing::LoginApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LoginApi' do
  before do
    # run before each test
    @instance = MyMarketing::LoginApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LoginApi' do
    it 'should create an instance of LoginApi' do
      expect(@instance).to be_instance_of(MyMarketing::LoginApi)
    end
  end

  # unit tests for login_get
  # Authentication
  # Generate an encrpted token as described by the JavaScript on this fiddle: https://jsfiddle.net/VirtuosoEngineering/xyrzc06n/. Confirm the token generated by the JavaScript matches the token generated by your programming language before proceeding. See https://api.virtuoso.com/documentation for more information.
  # @param user API user name
  # @param auth_token Encrypted auth token generated as per instructions above
  # @param [Hash] opts the optional parameters
  # @return [LoginResponse]
  describe 'login_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end