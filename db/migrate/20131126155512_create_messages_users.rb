class CreateMessagesUsers < ActiveRecord::Migration
  def change
  	create_table :messages_tags, :id => false do |t|
      t.belongs_to :message
      t.belongs_to :tag
    end
  end
end
