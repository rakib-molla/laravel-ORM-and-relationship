// relation ship with users and categories

            // Direct -> Has Relation -> hasOne, hasMany (Jokhon foreign key peter bahire thake)
            // Inverse-> Belongs Relation -> belongsTo (Jokhon foreign key peter bhitore thake)

            $products = Products::with('users', 'categories')->paginate(2);


image optimize package : 
https://spatie.be/docs/image/v3/image-manipulations/resizing-images


সহজভাবে মনে রাখার নিয়ম

👉 Foreign key নিজের table এ থাকলে → belongsTo
👉 Foreign key অন্য table এ থাকলে → hasMany







# 🚀 Laravel Products System - Relationship Documentation

এই প্রজেক্টে আমরা Laravel ব্যবহার করে একটি simple **Product Management System** তৈরি করেছি যেখানে Users, Categories এবং Products এর মধ্যে relationship দেখানো হয়েছে।

---

# 📦 Project Overview

এই সিস্টেমে ৩টি প্রধান table আছে:

- 🧑 Users
- 📂 Categories
- 📦 Products

প্রতিটি Product একটি User এবং একটি Category এর সাথে যুক্ত থাকে।

---

# 🗄️ Database Structure

## 🧑 users table

| Field | Type | Description |
|------|------|-------------|
| id | bigint | Primary Key |
| name | string | User name |
| email | string | Unique email |
| password | string | Encrypted password |
| created_at | timestamp | Created time |
| updated_at | timestamp | Updated time |

---

## 📂 categories table

| Field | Type | Description |
|------|------|-------------|
| id | bigint | Primary Key |
| name | string | Category name |
| description | text | Category details |
| user_id | bigint | Foreign Key (users) |
| created_at | timestamp | Created time |
| updated_at | timestamp | Updated time |

👉 একজন user অনেকগুলো category তৈরি করতে পারে।

---

## 📦 products table

| Field | Type | Description |
|------|------|-------------|
| id | bigint | Primary Key |
| name | string | Product name |
| price | decimal(8,2) | Product price |
| category_id | bigint | Foreign Key (categories) |
| user_id | bigint | Foreign Key (users) |
| created_at | timestamp | Created time |
| updated_at | timestamp | Updated time |

👉 প্রতিটি product একটি category এবং একটি user এর সাথে যুক্ত।

---

# 🔗 Relationship Explanation

## ✅ 1. Has Relationship (Direct)

👉 যখন foreign key অন্য table এ থাকে

- User → hasMany Products  
- Category → hasMany Products  

```php
User::hasMany(Product::class)
Category::hasMany(Product::class)



✅ 2. BelongsTo Relationship (Inverse)

👉 যখন foreign key নিজের table এ থাকে

Product → belongsTo User
Product → belongsTo Category
Product::belongsTo(User::class)
Product::belongsTo(Category::class)