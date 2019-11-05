=begin
#MyMarketing Notifications

#Virtuoso MyMarketing Notification API

OpenAPI spec version: 1.0.0
Contact: techappdev@virtuoso.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'

describe MyMarketing::Configuration do
  let(:config) { MyMarketing::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0")
    # MyMarketing.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://virtserver.swaggerhub.com/cgseattle/Notification/1.0.0")
      end
    end
  end
end