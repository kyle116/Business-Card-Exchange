class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :job_title
      t.string :phone_number
      t.string :email
      t.string :website
      t.string :address
      t.string :company_name
      t.string :password_digest
      t.string :username

      t.timestamps
    end
  end
end
