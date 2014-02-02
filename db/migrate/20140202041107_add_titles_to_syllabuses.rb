class AddTitlesToSyllabuses < ActiveRecord::Migration
  def change
    add_column :syllabuses, :title, :string
  end
end
