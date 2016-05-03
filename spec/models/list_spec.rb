require 'rails_helper'

describe List do
  let(:list) { create(:list) }

  it 'is valid with valid attributes' do
    expect(list).to be_valid
  end

  describe '#user_id' do
    it 'is required' do
      list.user_id = nil
      list.valid?
      expect(list.errors[:user_id].size).to eq(1)
    end
  end

  describe '#title' do
    it 'is required' do
      list.title = nil
      list.valid?
      expect(list.errors[:title].size).to eq(1)
    end
  end

  describe '#description' do
    it 'is not required' do
      list.description = nil
      list.valid?
      expect(list.errors[:description].size).to eq(0)
    end
  end

  it 'destroys dependent items' do
    item = create(:item)
    list = List.find(item.list_id)
    expect { list.destroy }.to change { Item.count }.by(-1)
  end
end
