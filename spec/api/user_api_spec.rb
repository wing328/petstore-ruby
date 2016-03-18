=begin
Swagger Petstore

This is a sample server Petstore server.  You can find out more about Swagger at <a href=\"http://swagger.io\">http://swagger.io</a> or on irc.freenode.net, #swagger.  For this sample, you can use the api key \"special-key\" to test the authorization filters

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://github.com/swagger-api/swagger-codegen.git

License: Apache 2.0
http://www.apache.org/licenses/LICENSE-2.0.html

Terms of Service: http://swagger.io/terms/

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UserApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instact of UserApi' do
      @instance.should be_a(SwaggerClient::UserApi)
    end
  end

  # unit tests for create_user
  # Create user
  # This can only be done by the logged in user.
  # @param [Hash] opts the optional parameters
  # @option opts [User] :body Created user object
  # @return [nil]
  describe 'create_user test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for create_users_with_array_input
  # Creates list of users with given input array
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<User>] :body List of user object
  # @return [nil]
  describe 'create_users_with_array_input test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for create_users_with_list_input
  # Creates list of users with given input array
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<User>] :body List of user object
  # @return [nil]
  describe 'create_users_with_list_input test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for delete_user
  # Delete user
  # This can only be done by the logged in user.
  # @param username The name that needs to be deleted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for get_user_by_name
  # Get user by user name
  # 
  # @param username The name that needs to be fetched. Use user1 for testing.
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'get_user_by_name test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for login_user
  # Logs user into the system
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :username The user name for login
  # @option opts [String] :password The password for login in clear text
  # @return [String]
  describe 'login_user test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for logout_user
  # Logs out current logged in user session
  # 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'logout_user test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for update_user
  # Updated user
  # This can only be done by the logged in user.
  # @param username name that need to be deleted
  # @param [Hash] opts the optional parameters
  # @option opts [User] :body Updated user object
  # @return [nil]
  describe 'update_user test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
