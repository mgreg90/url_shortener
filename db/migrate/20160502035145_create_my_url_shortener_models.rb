class CreateMyUrlShortenerModels < ActiveRecord::Migration
  def change
    create_table :my_url_shortener_models do |t|
      t.string :user_url,  null: false
      t.string :final_url

      t.timestamps null: false
    end
  end
end
