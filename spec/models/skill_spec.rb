require 'spec_helper'

describe Skill do
  it { should have_and_belong_to_many(:users) }
end
