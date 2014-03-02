require 'spec_helper'

describe User do
  it { should have_many(:skills) }
  it { should have_many(:goods) }
end
