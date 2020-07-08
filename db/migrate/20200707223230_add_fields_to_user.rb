# frozen_string_literal: true

# Adds username column to User
class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
  end
end
