#require 'selenium-webdriver'
require_relative 'spec_helper'
require_relative '../pages/login'

#This is a test that is calling method on logi page object

describe 'Login' do

  before(:each) do
    @login = Login.new(@driver)
  end

  it 'succeeded' do
    @login.with('tomsmith', 'SuperSecretPassword!')
    expect(@login.success_message_present?).to eql true
  end

  it 'failed' do
    @login.with('asdf', 'asdf')
    expect(@login.failure_message_present?).to eql true
    #expect(@login.success_message_present?).to eql false
  end

end
