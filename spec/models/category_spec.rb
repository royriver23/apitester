require 'spec_helper'

describe Category do
  it { should respond_to :title }
  it { should respond_to :description }
end
