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

# Unit tests for MyMarketing::ConsumerApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ConsumerApi' do
  before do
    # run before each test
    @instance = MyMarketing::ConsumerApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConsumerApi' do
    it 'should create an instance of ConsumerApi' do
      expect(@instance).to be_instance_of(MyMarketing::ConsumerApi)
    end
  end

  # unit tests for consumers_post
  # Create a consumer
  # Create a consumer record
  # @param body Create a consumer record
  # @param [Hash] opts the optional parameters
  # @return [ConsumerResponse]
  describe 'consumers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for consumers_virtuoso_id_put
  # Update a consumer
  # Update a consumer record based on virtuosoId.
  # @param virtuoso_id Virtuoso ID for this consumer that was received as part of /consumer POST response
  # @param body Update an existing Consumer record
  # @param [Hash] opts the optional parameters
  # @return [ConsumerResponse]
  describe 'consumers_virtuoso_id_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
