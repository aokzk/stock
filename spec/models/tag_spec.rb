require 'spec_helper'

describe Tag do
  it { should have_many :taggings }
  it { should have_many :items }
  it { expect(create(:tag)).to be_valid }
end
