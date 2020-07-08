# frozen_string_literal: true

# Creates Posts table
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :body

      t.timestamps
    end
  end
end
