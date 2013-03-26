class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :subject
      t.string :message_id
      t.datetime :message_date
      t.text :message_body

      t.timestamps
    end
  end
end
