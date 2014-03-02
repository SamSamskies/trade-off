require 'spec_helper'

describe Good do
  it { should have_and_belong_to_many(:users) }
end
