class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :feature_request, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
