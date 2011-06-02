require 'spec_helper'
require 'typhoeus/simple'

describe Typhoeus::Simple do
  it "should have a VERSION constant" do
    subject.const_get('VERSION').should_not be_empty
  end
  
  it "should add get and get_parsed methods to Kernel" do
    Kernel.method_defined?(:get).should be_true
    Kernel.method_defined?(:get_parsed).should be_true
  end
  
end
