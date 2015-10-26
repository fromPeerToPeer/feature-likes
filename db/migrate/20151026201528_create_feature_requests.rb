class CreateFeatureRequests < ActiveRecord::Migration
  def change
    create_table :feature_requests do |t|
      t.string :title
      t.boolean :granted, default: false

      t.timestamps null: false
    end
  end
end
