#テーブル設計

## users テーブル

| Column            | Type     | Options     |
| --------          | ------   | ----------- |
| email             | string   | null: false |
| nickname          | string   | null: false |
| birthday          | date     | null: false |
| encrypted_password| string   | null: false | 
| first_name        | string   | null: false |
| last_name         | string   | null: false |
| first_name_kana   | string   | null: false |
| last_name_kana    | string   | null: false |

### Association

- has_many :purchases_records
- has_many :item

## items テーブル

| Column             | Type       | Options                        |
| ------             | ------     | -----------                    |
| product_name       | string     | null: false                    |
| price              | integer    | null: false                    |
| category_id        | integer    | null: false                    |
| status_id          | integer    | null: false                    |
| description        | text       | null: false                    |
| prefecture_id      | integer    | null: false                    |
| days_to_ship_id    | integer    | null: false                    |
| delivery_fee_id    | integer    | null: false                    |
| user               | references | null: false, foreign_key: true |

### Association

-has_one :purchase_record
-belongs_to :user

## purchase_records テーブル

| Column  | Type       | Options                        |
| ------  | ---------- | ------------------------------ |
| user    |references  | null: false, foreign_key: true |
| item    |references  | null: false, foreign_key: true |

### Association

-belongs_to :item
-belongs_to :user
-has_one :shipping_address


## shipping address テーブル

|Colum             | Type        |Options                         |
|___________       |_____________|__________                      |
|postal_code       | string      | null: false                    |
|prefecture_id     | integer     | null: false                    |
|city              | string      | null: false                    |
|house_number      | string      | null: false                    |
|building_name     | string      |                                |
|phone_number      | string      | null: false                    |
|purchase_record   | references  | null: false, foreign_key: true |

### Association

-belongs_to :purchase_record


<% elsif @purchase_record%>