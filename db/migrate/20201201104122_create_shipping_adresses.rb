class CreateShippingAdresses < ActiveRecord::Migration[6.0]
  def change
    create_table :shipping_adresses do |t|
      t.string :postal_code,     default: "",  null: false
      t.integer :prefecture_id,                   null: false
      t.string :city,            default: "",  null: false
      t.string :house_number,    default: "",  null: false
      t.string :buildeing_name,  default: "",  null: false
      t.string :phone_number,    default: "",  null: false
      t.references :purchase_record,           null: false,  foreign_key: true
      t.timestamps
    end
  end
end