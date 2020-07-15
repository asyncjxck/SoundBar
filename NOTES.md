# SoundBar
```
one model needs to have at least two foreign keys plus other attributes
```

Instrument resell. Users can list items, comment on/review other listed items.
---
1. Based on type of instrument: 
  * String
  * Percussion
  * Keyboard
2. Sub-Divided into brands: 
  * String: C.F. Martin, Taylor, Franz Hoffman, Fender, Ibanez, Other
  * Percussion: Sonor, Gretsch, Pearl, Ludwig, British Drum Company
  * Keyboard: Yamaha, Casio, Roland, Kawai, Korg
---
---
### User
	 * Name
	 * Email
	 * Password
```ruby
		* has_many :reviews		  
		* has_many :instruments # created
		* has_many :brands, through: :instruments
		* has_many :categories, through: :instruments
    * has_many :reviewed_instruments, through: :reviews, source: :instrument # reviewed
    * has_one :cart
```
### Category
	* Name
```ruby
		* has_many :brands
		* has_many :instruments, through: :brands
```
### Brand
	 * Name
	 * Instrument category
```ruby
		* has_many :instruments
		* has_many :reviews, through: :instruments
		* belongs_to :category
```
### Instrument
	* Model
	* Instrument Type
	* Description
	* Price
```ruby
		* belongs_to :brand # (brand_id)
		* belongs_to :category # (category_id)
		* belongs_to :user # (user_id) creator
		* has_many :reviews 
    * has_many :users, through: :users # reviewer
    * has_one_and_belongs_to_many :cart
```
### Review
	* Rating
	* Title
	* Content
```ruby
		* belongs_to :user # (user_id)
		* belongs_to :instrument # (instrument_id)
```
### Cart
```ruby
    * has_one :user
```
 
* scope method: filter instruments by brand/price/category/rating
* model method: return avg rating of instruments in brand
