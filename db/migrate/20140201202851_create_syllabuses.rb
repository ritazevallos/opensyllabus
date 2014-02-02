class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.integer :syllabiID
      t.string :url
      t.string :title
      t.date :date_added
      t.text :chnm_cache

      t.timestamps
    end
  end
end
