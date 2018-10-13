## productsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|
|text|text|
|genre_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|

### Association
- belongs_to :genre
- belongs_to :user
- has_many   :images


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique:true|
|password|string|null: false|

### Association
- has_many :products


## imagesテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|
|products_id|references|null: false, foreign_key: true|

### Association
- belongs_to :products


## genresテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|

### Association
- has_many :products
