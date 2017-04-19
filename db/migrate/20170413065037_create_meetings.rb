class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.references :user, foreign_key: true
      t.references :hrservice, foreign_key: true
      t.date :date
      t.string :payment_status

      t.timestamps
    end
  end
end
