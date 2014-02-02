class RemoveIdFromSyllabuses < ActiveRecord::Migration
  def change
    remove_column :syllabuses, :id, :integer
  end
end
