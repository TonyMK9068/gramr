class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :email, :null => false, :default => ""
      t.timestamps
    end
  end
end
