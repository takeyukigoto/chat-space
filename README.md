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
|name|string|null:false|
|mail|string|null:false|




### Association
- has_many :groups,through: :groups_users
  has_many :groups_users
- has_many :tweets
  

# groupsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|

### Association
- has_many :users,through: :groups_users
  has_many :groups_users
- has_many :tweets
  




# tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|image|text|string|
|text|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
  belongs_to  :user
  belongs_to :group





