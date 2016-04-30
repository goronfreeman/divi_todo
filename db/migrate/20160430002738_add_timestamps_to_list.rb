class AddTimestampsToList < ActiveRecord::Migration
  def change
    add_column :lists, :created_at, :datetime, null: false
    add_column :lists, :updated_at, :datetime, null: false
  end
end
