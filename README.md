## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user



# usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index:true,null:false,unique:true|
|mail|string|null:false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to  :group_users
- has_many :tweets
  has_many :comment




# tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|index:true,null:false,unique:true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to  :group_users
  belongs_to  :users
  has_many :comment


  commemtsテーブル

|Column|Type|Options|
|------|----|-------|
|text|string|index:true,null:false,unique:true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to  :group_users
  belongs_to  :users
  belongs_to :tweets



