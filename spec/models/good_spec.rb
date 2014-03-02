require 'spec_helper'

describe Good do
  it { should have_many(:users) }
end
