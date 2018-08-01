class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.references :user, index: true, foreign_key: true
      t.references :topic, index: true, foreign_key: true

      t.timestamps
    end
  end
end
