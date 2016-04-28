class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.references :user, index: true, foreign_key: true
    end
  end
end
