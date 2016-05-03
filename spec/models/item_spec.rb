require 'rails_helper'

describe Item do
  let(:item) { create(:item) }

  it 'is valid with valid attributes' do
    expect(item).to be_valid
  end

  describe '#list_id' do
    it 'is required' do
      item.list_id = nil
      item.valid?
      expect(item.errors[:list_id].size).to eq(1)
    end
  end

  describe '#title' do
    it 'is required' do
      item.title = nil
      item.valid?
      expect(item.errors[:title].size).to eq(1)
    end
  end

  describe '#description' do
    it 'is not required' do
      item.description = nil
      item.valid?
      expect(item.errors[:description].size).to eq(0)
    end
  end

  describe '#state' do
    it 'is required' do
      item.state = nil
      item.valid?
      expect(item.errors[:state].size).to eq(1)
    end
  end
end
