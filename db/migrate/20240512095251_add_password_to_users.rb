# frozen_string_literal: true

# Migration to add password to the users attributes.
class AddPasswordToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_digest, :string
  end
end
