# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Category.create!(name: 'ビール') if Rails.env.development?
Category.create!(name: '日本酒') if Rails.env.development?
Material.create!(name: '麦芽') if Rails.env.development?
Material.create!(name: 'ホップ') if Rails.env.development?
Material.create!(name: '水') if Rails.env.development?
ProducingArea.create!(name: '日本') if Rails.env.development?
ProducingArea.create!(name: 'アメリカ') if Rails.env.development?
Recipe.create!(name: 'ラガー') if Rails.env.development?
Recipe.create!(name: 'エール') if Rails.env.development?
Recipe.create!(name: 'ドライビール') if Rails.env.development?
Tag.create!(name: 'ピルスナー') if Rails.env.development?
Tag.create!(name: 'エール') if Rails.env.development?
Tag.create!(name: 'スタウト') if Rails.env.development?
Tag.create!(name: '強炭酸') if Rails.env.development?
Alcohol.create!(name: 'スーパードライ', degree: 5, description: '開発当時に進行していた日本の食生活の変化に対応したビールとして開発された。同時代の日本で販売されていたビールに比べ、苦味を抑え、甘さも少なくしたビールである。', producing_area_id: 1, category_id: 1, recipe_id: 1, created_at: '2018-03-31 09:07:46') if Rails.env.development?
Alcohol.create!(name: '一番搾り', degree: 5, description: '渋みが少なく、さっぱりとしたビール', producing_area_id: 1, category_id: 1, recipe_id: 1, created_at: '2018-03-31 09:08:46') if Rails.env.development?
Alcohol.create!(name: 'バドワイザー', degree: 5, description: '薄味で喉越し抜群、超定番のアメリカビール。', producing_area_id: 2, category_id: 1, recipe_id: 1, created_at: '2018-03-31 09:09:46') if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 1) if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 2) if Rails.env.development?
AlcoholsMaterial.create!(alcohol_id: 1, material_id: 3) if Rails.env.development?
AlcoholsTag.create!(alcohol_id: 1, tag_id: 1) if Rails.env.development?
AlcoholsTag.create!(alcohol_id: 1, tag_id: 4) if Rails.env.development?
User.create!(email: 'user1@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
User.create!(email: 'user2@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
Favorite.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
History.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Interest.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Recommend.create!(alcohol_id: 1, user_id: 1) if Rails.env.development?
Review.create!(alcohol_id: 1, user_id: 1, evaluation: 5, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
Review.create!(alcohol_id: 2, user_id: 1, evaluation: 4, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
Review.create!(alcohol_id: 3, user_id: 1, evaluation: 3, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
Review.create!(alcohol_id: 1, user_id: 2, evaluation: 1, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
Review.create!(alcohol_id: 2, user_id: 2, evaluation: 2, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
Review.create!(alcohol_id: 3, user_id: 2, evaluation: 5, sweetness: 0, acidity: 2, bitter: 3, richness: 3, kire: 4, fragrance: 4, title: '日本代表', content: '日本でビールといえばまずでてきます。') if Rails.env.development?
