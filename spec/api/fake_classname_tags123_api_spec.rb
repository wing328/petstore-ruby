=begin
#OpenAPI Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.0.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Petstore::FakeClassnameTags123Api
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FakeClassnameTags123Api' do
  before do
    # run before each test
    @api_instance = Petstore::FakeClassnameTags123Api.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FakeClassnameTags123Api' do
    it 'should create an instance of FakeClassnameTags123Api' do
      expect(@api_instance).to be_instance_of(Petstore::FakeClassnameTags123Api)
    end
  end

  # unit tests for test_classname
  # To test class name in snake case
  # To test class name in snake case
  # @param client client model
  # @param [Hash] opts the optional parameters
  # @return [Client]
  describe 'test_classname test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
