class CreateVocabularies < ActiveRecord::Migration[5.2]
  def change
    create_table :vocabularies do |t|
      t.string     :title
      t.text       :content
      t.integer    :genre_id
      t.timestamps
    end
  end
end
