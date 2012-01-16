class AddCommentsToCommand < ActiveRecord::Migration
  def self.up
    add_column :commands, :test_text, :string
    add_column :commands, :test_output, :string
    add_column :commands, :test_failed, :integer
  end

  def self.down
    remove_column :commands, :test_failed
    remove_column :commands, :test_output
    remove_column :commands, :test_text
  end
end