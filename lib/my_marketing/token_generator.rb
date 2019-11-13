require 'openssl'
require 'time'
require 'base64'
module MyMarketing
  class TokenGenerator
    attr_accessor :last_request_at

    attr_accessor :last_token

    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
      @login_api = LoginApi.new(@api_client)
    end

    def generate_token
      cipher = OpenSSL::Cipher::AES.new(256, :CBC)
      cipher.encrypt
      cipher.key = Base64.decode64(@api_client.config.aes_key)
      cipher.iv = Base64.decode64(@api_client.config.aes_iv)

      encrypted = cipher.update(plaintext_token) + cipher.final
      Base64.encode64(encrypted)
    end

    def plaintext_token
    "{'APIKey':'#{@api_client.config.api_key}','CurrentTimeUtc':'#{Time.now.utc.iso8601(2)}'}"
    end

    def decode(str)
      cipher = OpenSSL::Cipher::AES.new(256, :CBC)
      cipher.decrypt
      cipher.key = Base64.decode64(@api_client.config.aes_key)
      cipher.iv = Base64.decode64(@api_client.config.aes_iv)
      cipher.update(Base64.decode64(str)) + cipher.final
    end

    def login
      response = @login_api.login_get(@api_client.config.username, generate_token)
      @last_request_at = Time.now
      @last_token = response.result.bearer_token
    end

    def current_token
      if @last_token.nil? || (Time.now - @last_request_at > 60)
        login
      end
      @last_token
    end

    def update_from_response(body)
      if body.respond_to?(:token)
        @last_request_at = Time.now
        @last_token = body.token
      end
    end
  end
end
