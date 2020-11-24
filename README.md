#テーブル設計

## users テーブル

| Column        | Type     | Options     |
| --------      | ------   | ----------- |
| nickname      | string   | null: false |
| name          | string   | null: false |
| birthday      | date     | null: false |
| furigana      | string   | null: false |
| first_name    | string   | null: false |
| gender_name   | string   | null: false |

### Association

- has_many :purchases_records
- hss_many :items

## items テーブル

| Column          | Type       | Options                        |
| ------          | ------     | -----------                    |
| product_name    | string     | null: false                    |
| price           | integer    | null: false                    |
| category        | string     | null: false                    |
| status          | text       | null: false                    |
| seller          | string     | null: false                    |
| description     | text       | null: false                    |
| shipment_source | string     | null: false                    |
| days_to_ship    | datetime   | null: false                    |
| delivery_fee    | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

-has_one :purchase_record
-belongs_to :user

## purchase records テーブル

| Column  | Type       | Options                        |
| ------  | ---------- | ------------------------------ |
| buyer   | string     | null: false                    |
| when    | string     | null: false                    |
| buy     | string     | null: false                    |
| user    |references  | null: false, foreign_key: true |

### Association

-has_one :item
-belongs_to :user
-has_many :shipping_address


## shipping address テーブル

|Colum          | Type        |Options                         |
|___________    |_____________|__________                      |
|street_address | text        | null: false                    |
|postal_code    | string      | null: false                    |
|prefecture     | integer     | null: false                    |
|city           | string      | null: false                    |
|house_number   | string      | null: false                    |
|building_name  | string      | null: false  
|phone_number   | string      | null: false                    |
|purchase_record| references  | null: false, foreign_key: true |
|user           | references  | null: false, foreign_key: true |

### Association

-belongs_to :purchase record
