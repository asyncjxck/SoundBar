# SoundBar

Your models must:
  [x] Include at least one `has_many`, at least one `belongs_to`, and at least two `has_many :through` relationships

  [] Include a `many-to-many` relationship implemented with `has_many :through` associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submitted by the app's user

  [] Include reasonable validations for the simple attributes. You don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.

[] You must include at least one class level ActiveRecord scope method. 

[x] Your scope method must be chainable, meaning that you must use ActiveRecord Query methods within it (such as `.where` and `.order`) rather than native ruby methods (such as `#find_all` or `#sort`).

[] Your application must provide standard user authentication, including signup, login, logout, and passwords.

[] Your authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...

[] You must include and make use of a nested resource with the appropriate RESTful URLs.

  [] You must include a nested new route with form that relates to the parent resource

  [x] You must include a nested index or show route

[x] Your forms should correctly display validation errors.

  [] Your fields should be enclosed within a `fields_with_errors` class

  [x] Error messages describing the validation failures must be present within the view.

[] Your application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.

[] Logic present in your controllers should be encapsulated as methods in your models.

[x] Your views should use helper methods and partials when appropriate.

[] Follow patterns in the Rails Style Guide and the Ruby Style Guide.

Do not use scaffolding to build your project. Your goal here is to learn. Scaffold is a way to get up and running quickly, but learning a lot is not one of the benefits of scaffolding.
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
