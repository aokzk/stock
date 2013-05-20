# -*- coding: utf-8 -*-
require 'spec_helper'

describe Item do
  it { should have_many :taggings }
  it { should have_many :tags }
  it { should validate_presence_of :name }
  it { expect(create(:item)).to be_valid }

  describe "#none?" do
    subject { create(:item, quantity: quantity) }
    
    context "quantityが0の時、真であること" do
      let(:quantity) { 0 }
      its(:none?) { should_not be }
    end
    
    context "quantityが-1の時、偽であること" do
      let(:quantity) { -1 }
      its(:none?) { should be }
    end
  end
end
