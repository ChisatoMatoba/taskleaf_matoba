# frozen_string_literal: true

# Migration to create the tasks table
class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
