class AddIdToSyllabuses < ActiveRecord::Migration
  def self.up
    add_column :syllabuses, :id, :primary_key
  end

  def self.down
    remove_column :syllabuses, :id
  end
end
