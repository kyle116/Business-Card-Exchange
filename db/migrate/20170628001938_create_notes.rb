class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :location
      t.string :body
      t.belongs_to :business_card, foreign_key: true

      t.timestamps
    end
  end
end
