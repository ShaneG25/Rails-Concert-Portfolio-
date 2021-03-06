class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :date 
      t.string :artist
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :venue, null: false, foreign_key: true 

      t.timestamps
    end
  end
end
