class RemoveSyllabiIdFromSyllabus < ActiveRecord::Migration
  def change
    remove_column :syllabuses, :syllabiID, :integer
    remove_column :syllabuses, :date_added, :date
    remove_column :syllabuses, :title, :string
  end
end
