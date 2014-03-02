require 'spec_helper'

describe Skill do
  it { should have_many(:users) }
end
