class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.text :description
      t.integer :state
      t.references :list, index: true, foreign_key: true
    end
  end
end
