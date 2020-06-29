class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.has_many :reviews, foreign_key: true
      t.has_many :instruments, :through :reviews, foreign_key: true

      t.timestamps
    end
  end
end
