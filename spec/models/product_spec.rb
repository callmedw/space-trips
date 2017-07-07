require 'rails_helper'

describe Product do
  it { should have_many :reviews }
  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :description }
  it { should validate_presence_of :star }
  it { should validate_presence_of :agency }
  it { should validate_presence_of :craft}
  it { should validate_presence_of :distance }
end
