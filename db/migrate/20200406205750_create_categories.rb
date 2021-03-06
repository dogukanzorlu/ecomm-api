# frozen_string_literal: true
class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :ancestry, index: true
      t.integer :position
      t.string :name, null: false

      t.timestamps
    end
  end
end
