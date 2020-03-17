## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user



# userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|index:true,null:false,unique:true|
|mail|string|null:false|
|id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


### Association
- has_many :groups,through: :groups_users
  has_many :groups_users
- has_many :tweets
  has_many :comment

# groupテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|group_name|string|index:true,null:false,unique:true|
|group_id|integer|null: false, foreign_key: true|

### Association
- has_many :users,through: :groups_users
  has_many :groups_users
- has_many :tweets
  has_many :comment




# tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|text|string|index:true,null:false,unique:true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to  :group_users
  belongs_to  :users
  has_many :comment


# commemtsテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|text|string|index:true,null:false,unique:true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to  :group_users
  belongs_to  :users
  belongs_to :tweets



