#テーブル設計

## users テーブル

| Column        | Type     | Options     |
| --------      | ------   | ----------- |
| nickname      | string   | null: false |
| name          | string   | null: false |
| password      | string   | null: false |
| mall address  | string   | null: false |
| birthday      | string   | null: false |
| furigana      | string   | null: false |

### Association

- has_many :purchases record
- hss_many :item

## items テーブル

| Column          | Type       | Options                        |
| ------          | ------     | -----------                    |
| product name    | string     | null: false                    |
| price           | integer    | null: false                    |
| category        | string     | null: false                    |
| status          | text       | null: false                    |
| seller          | string     | null: false                    |
| description     | text       | null: false                    |
| shipment source | string     | null: false                    |
| days to ship    | datetime   | null: false                    |
| delivery fee    | integer    | null: false                    |
| user            | references | null: false, foreign_key: true |

### Association

-has_one :purchase record
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
-has_many :shipping address


## shipping address テーブル

|Colum          | Type        |Options                         |
|___________    |_____________|__________                      |
|street address | text        | null: false                    |
|postal code    | string      | null: false                    |
|todoufuken     | string      | null: false                    |
|sikuchouson    | string      | null: false                    |
|banti          | string      | null: false                    |
|phone number   | integer     | null: false                    |
|purchase record| references  | null: false, foreign_key: true |

### Association

-belongs_to :purchase record
