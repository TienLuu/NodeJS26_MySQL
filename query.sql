-- 5 người đẫ like nhà hàng nhiều nhất
SELECT users.user_id, users.full_name, COUNT(like_res.res_id) AS total_like FROM users
INNER JOIN like_res
	ON users.user_id = like_res.user_id
GROUP BY users.user_id, users.full_name
ORDER BY total_like DESC
	LIMIT 5;


-- Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT restaurants.res_id, restaurants.res_name, COUNT(like_res.res_id) as total_like FROM restaurants
INNER JOIN like_res
	ON restaurants.res_id = like_res.res_id
GROUP BY restaurants.res_id, restaurants.res_name
ORDER BY total_like DESC
	LIMIT 2;

-- Tìm người đã đặt hàng nhiều nhất
SELECT users.user_id, SUM(orders.amount) as total_order FROM users
INNER JOIN orders
	ON users.user_id = orders.user_id
GROUP BY users.user_id
ORDER BY total_order DESC
	LIMIT 1;

-- Tìm người dùng không hoạt động trong hệ thống
SELECT users.user_id, users.full_name FROM users
LEFT JOIN like_res
	ON users.user_id = like_res.user_id
LEFT JOIN orders
	ON users.user_id = orders.user_id
LEFT JOIN rate_res
	ON users.user_id = rate_res.user_id
	WHERE like_res.res_id is null && rate_res.res_id is null && orders.food_id is null;

-- Tính trung bình sub_food của một food
SELECT foods.food_id, foods.food_name, AVG(sub_food.sub_price) as avgSubFood_price FROM sub_food
INNER JOIN foods
	ON foods.food_id = sub_food.food_id
GROUP BY foods.food_id, foods.food_name;