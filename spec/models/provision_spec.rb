require 'spec_helper'

describe Provision do
  it { should have_and_belong_to_many(:users) }
end
