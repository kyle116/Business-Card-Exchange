class CreateBusinessCards < ActiveRecord::Migration[5.1]
  def change
    create_table :business_cards do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :contact #, foreign_key: true
      t.string :location
      t.date :date

      t.timestamps
    end
  end
end
