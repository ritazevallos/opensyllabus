class AddTopicIdToSyllabuses < ActiveRecord::Migration
  def change
    add_column :syllabuses, :topic_id, :integer
  end
end
