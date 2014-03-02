require 'spec_helper'

describe User do
  it { should have_and_belong_to_many(:skills) }
  it { should have_and_belong_to_many(:goods) }
end
