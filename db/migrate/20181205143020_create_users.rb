class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :zip
      t.string :phone
      t.string :email
      t.string :bio

      t.timestamps
    end
  end
end
