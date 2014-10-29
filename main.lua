function love.load()
	gamemode = "play"
	local Quad = love.graphics.newQuad
	rng = love.math.newRandomGenerator(os.time())
	--item images
	--sword images
	sworditem = love.graphics.newImage("assets/sword.png")
	pizzasworditem = love.graphics.newImage("assets/pizza-sword.png")
	bearsworditem = love.graphics.newImage("assets/bear-sword.png")
	eightballsworditem = love.graphics.newImage("assets/8ball-sword.png")
	balloonsworditem = love.graphics.newImage("assets/sword-balloon.png")
	dollsworditem = love.graphics.newImage("assets/doll-sword.png")
	robotsworditem = love.graphics.newImage("assets/robot-sword.png")
	clocksworditem = love.graphics.newImage("assets/clock-sword.png")
	candysworditem = love.graphics.newImage("assets/candy-sword.png")
	pigsworditem = love.graphics.newImage("assets/pig-sword.png")
	
	--robot images
	robotitem = love.graphics.newImage("assets/robot.png")
	robot8ballitem = love.graphics.newImage("assets/robot-8ball.png")
	robotballoonitem = love.graphics.newImage("assets/robot-balloon.png")
	bearrobotitem = love.graphics.newImage("assets/bear-robot.png")
	robotcandyitem = love.graphics.newImage("assets/robot-candy.png")
	robotclockitem = love.graphics.newImage("assets/robot-clock.png")
	dollrobotitem = love.graphics.newImage("assets/doll-robot.png")
	pigrobotitem = love.graphics.newImage("assets/pig-robot.png")
	pizzarobotitem = love.graphics.newImage("assets/pizza-robot.png")
	
	--pizza images
	pizzaitem = love.graphics.newImage("assets/pizza.png")
	eightballpizzaitem = love.graphics.newImage("assets/8ball-pizza.png")
	pizzaballoonitem = love.graphics.newImage("assets/pizza-balloon.png")
	bearpizzaitem = love.graphics.newImage("assets/bear-pizza.png")
	pizzacandyitem = love.graphics.newImage("assets/pizza-candy.png")
	pizzaclockitem = love.graphics.newImage("assets/pizza-clock.png")
	dollpizzaitem = love.graphics.newImage("assets/doll-pizza.png")
	pigpizzaitem = love.graphics.newImage("assets/pig-pizza.png")
	
	--pig images
	pigitem = love.graphics.newImage("assets/pig.png")
	pig8ballitem = love.graphics.newImage("assets/pig-8ball.png")
	pigballoonitem = love.graphics.newImage("assets/pig-balloon.png")
	pigbearitem = love.graphics.newImage("assets/pig-bear.png")
	pigcandyitem = love.graphics.newImage("assets/pig-candy.png")
	pigclockitem = love.graphics.newImage("assets/pig-clock.png")
	pigdollitem = love.graphics.newImage("assets/pig-doll.png")
	
	--doll images
	dollitem = love.graphics.newImage("assets/doll.png")
	doll8ballitem = love.graphics.newImage("assets/doll-8ball.png")
	dollballoonitem = love.graphics.newImage("assets/doll-balloon.png")
	beardollitem = love.graphics.newImage("assets/bear-doll.png")
	dollcandyitem = love.graphics.newImage("assets/doll-candy.png")
	dollclockitem = love.graphics.newImage("assets/doll-clock.png")
	
	--clock images
	clockitem = love.graphics.newImage("assets/clock.png")
	eightballclockitem = love.graphics.newImage("assets/8ball-clock.png")
	clockballoonitem = love.graphics.newImage("assets/clock-balloon.png")
	bearclockitem = love.graphics.newImage("assets/bear-clock.png")
	candyclockitem = love.graphics.newImage("assets/candy-clock.png")
	
	--candy images
	candyitem = love.graphics.newImage("assets/candy.png")
	eightballcandyitem = love.graphics.newImage("assets/8ball-candy.png")
	candyballoonitem = love.graphics.newImage("assets/candy-balloon.png")
	bearcandyitem = love.graphics.newImage("assets/bear-candy.png")
	
	--bear images
	bearitem = love.graphics.newImage("assets/bear.png")
	bear8ballitem = love.graphics.newImage("assets/bear-8ball.png")
	bearballoonitem = love.graphics.newImage("assets/bear-balloon.png")
	
	--balloon images
	balloonitem = love.graphics.newImage("assets/balloon.png")
	eightballballoonitem = love.graphics.newImage("assets/8ball-balloon.png")
	
	--8ball image
	eightballitem = love.graphics.newImage("assets/8ball.png")
	
	--friend images
	pig = love.graphics.newImage("assets/piggybank-sprite.png")
	pig_pizza = love.graphics.newImage("assets/piggybank-pizza-sprite.png")
	bear = love.graphics.newImage("assets/bear-sprite.png")
	doll = love.graphics.newImage("assets/doll-sprite.png")
	pizza_bear = love.graphics.newImage("assets/bear-pizza-sprite.png")
	pig_bear = love.graphics.newImage("assets/piggybank-bear-sprite.png")
	robot = love.graphics.newImage("assets/robot-sprite.png")
	pig_robot = love.graphics.newImage("assets/piggybank-robot-sprite.png")
	bear_robot = love.graphics.newImage("assets/bear-robot-sprite.png")
	pizza_robot = love.graphics.newImage("assets/pizza-robot-sprite.png")
	bear_sword = love.graphics.newImage("assets/bear-sword-sprite.png")
	pig_8ball = love.graphics.newImage("assets/piggybank-8ball-sprite.png")
	robot_8ball = love.graphics.newImage("assets/robot-8ball-sprite.png")
	bear_8ball = love.graphics.newImage("assets/bear-8ball-sprite.png")
	bear_candy = love.graphics.newImage("assets/bear-candy-sprite.png")
	pig_candy = love.graphics.newImage("assets/piggybank-candy-sprite.png")
	robot_candy = love.graphics.newImage("assets/robot-candy-sprite.png")
	doll_pizza = love.graphics.newImage("assets/doll-pizza-sprite.png")
	doll_sword = love.graphics.newImage("assets/doll-sword-sprite.png")
	doll_robot = love.graphics.newImage("assets/doll-robot-sprite.png")
	doll_8ball = love.graphics.newImage("assets/doll-8ball-sprite.png")
	doll_candy = love.graphics.newImage("assets/doll-candy-sprite.png")
	pig_doll = love.graphics.newImage("assets/piggybank-doll-sprite.png")
	bear_doll = love.graphics.newImage("assets/bear-doll-sprite.png")
	doll_clock = love.graphics.newImage("assets/doll-clock-sprite.png")
	bear_clock = love.graphics.newImage("assets/bear-clock-sprite.png")
	pig_clock = love.graphics.newImage("assets/piggybank-clock-sprite.png")
	robot_clock = love.graphics.newImage("assets/robot-clock-sprite.png")
	balloon = love.graphics.newImage("assets/balloon-sprite.png")
	balloon_8ball = love.graphics.newImage("assets/8ball-balloon-sprite.png")
	bear_balloon = love.graphics.newImage("assets/bear-balloon-sprite.png")
	pig_balloon = love.graphics.newImage("assets/piggybank-balloon-sprite.png")
	clock_balloon = love.graphics.newImage("assets/clock-balloon-sprite.png")
	sword_balloon = love.graphics.newImage("assets/sword-balloon-sprite.png")
	pizza_balloon = love.graphics.newImage("assets/pizza-balloon-sprite.png")
	robot_balloon = love.graphics.newImage("assets/robot-balloon-sprite.png")
	doll_balloon = love.graphics.newImage("assets/doll-balloon-sprite.png")
	
	--enemy images
	slime = love.graphics.newImage("assets/slime.png")
	minislime = love.graphics.newImage("assets/mini-slime.png")
	faker = love.graphics.newImage("assets/faker.png")
	
	--floor images
	floor_1 = love.graphics.newImage("assets/floor.png")
	--block images
	block_image_1 = love.graphics.newImage("assets/block1.png")
	block_image_2 = love.graphics.newImage("assets/block2.png")
	block_image_3 = love.graphics.newImage("assets/block3.png")
	block_image_4 = love.graphics.newImage("assets/block4.png")
	block_image_5 = love.graphics.newImage("assets/block5.png")
	block_image_6 = love.graphics.newImage("assets/block6.png")
	--door images
	door_up = love.graphics.newImage("assets/door_up.png")
	door_down = love.graphics.newImage("assets/door_down.png")
	door_left = love.graphics.newImage("assets/door_left.png")
	door_right = love.graphics.newImage("assets/door_right.png")
	--heart images
	fullheart = love.graphics.newImage("assets/fullheart.png")
	emptyheart = love.graphics.newImage("assets/emptyheart.png")
	levelparams = {
		name = "Arcade",
		number = 1,
		size = 10
	}
	createLevel()
	player = {
		x = 200,
		y = 200,
		currenthealth = 3,
		maxhealth = 3,
		attack = 1,
		defense = 0,
		button = false,
		counter = 0,
		quarters = 0,
		width = 50,
		height = 50,
		speed = 3,
		moving = false,
		timer = 0,
		currentframe = 1,
		items = {},
		itemselect = 1,
		friends = {},
		flight = false,
		image = love.graphics.newImage("assets/char-sprite.png"),
		attackimage_lr = love.graphics.newImage("assets/char-attack-lr-sprite.png"),
		attackimage_up = love.graphics.newImage("assets/char-attack-up-sprite.png"),
		attackimage_dn = love.graphics.newImage("assets/char-attack-dn-sprite.png"),
		facing = "right"
	}
	quads = {
		Quad(0, 0, 50, 50, 200, 50),
		Quad(50, 0, 50, 50, 200, 50),
		Quad(100, 0, 50, 50, 200, 50),
		Quad(150, 0, 50, 50, 200, 50)
	}
	miniquads = {
		Quad(0, 0, 25, 25, 100, 25),
		Quad(25, 0, 25, 25, 100, 25),
		Quad(50, 0, 25, 25, 100, 25),
		Quad(75, 0, 25, 25, 100, 25)
	}
	attackQuads = {
		Quad(0, 0, 50, 50, 300, 50),
		Quad(50, 0, 50, 50, 300, 50),
		Quad(100, 0, 50, 50, 300, 50),
		Quad(150, 0, 50, 50, 300, 50),
		Quad(200, 0, 50, 50, 300, 50),
		Quad(250, 0, 50, 50, 300, 50)
	}
	blockquads = {
		Quad(0, 0, 60, 62, 120, 62),
		Quad(60, 0, 60, 62, 120, 62)
	}
	sword = {
		x = 0,
		y = 0,
		width = 50,
		height = 20,
		counter = 0,
		button = false,
		dir = nil,
		imagelr = love.graphics.newImage("assets/yoyo-sprite.png"),
		imageup = love.graphics.newImage("assets/yoyo-up-sprite.png"),
		imagedn = love.graphics.newImage("assets/yoyo-dn-sprite.png"),
		currentframe = 1,
		lrquads = {
			Quad(0, 0, 50, 20, 50, 120),
			Quad(0, 20, 50, 20, 50, 120),
			Quad(0, 40, 50, 20, 50, 120),
			Quad(0, 60, 50, 20, 50, 120),
			Quad(0, 80, 50, 20, 50, 120),
			Quad(0, 100, 50, 20, 50, 120)
		},
		upquads = {
			Quad(0, 0, 20, 50, 120, 50),
			Quad(20, 0, 20, 50, 120, 50),
			Quad(40, 0, 20, 50, 120, 50),
			Quad(60, 0, 20, 50, 120, 50),
			Quad(80, 0, 20, 50, 120, 50),
			Quad(100, 0, 20, 50, 120, 50)
		}
	}
	--fonts
	font = love.graphics.newFont(12)
	font2 = love.graphics.newFont(36)
	--buttons for the shop
	buybutton = {
		x = 20,
		y = 100,
		width = 150,
		height = 150,
		selected = true
	}
	shop = {
		{num = 1, name = "Pizza", cost = .5, sell = .25, selected = true, x = player.x, y = player.y, width = 50, height = 50},
		{num = 2, name = "8-Ball", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 3, name = "Piggy Bank", cost = 1, sell = .5, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 4, name = "Teddy Bear", cost = 1, sell = .5, selected = false, x = player.x, y = player.y, width = 50, height = 50, health = 1},
		{num = 5, name = "Toy Robot", cost = 1, sell = .5, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 6, name = "Toy Sword", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 7, name = "Candy", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 8, name = "Doll", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 9, name = "Stopwatch", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50},
		{num = 10, name = "Balloon", cost = .5, sell = .25, selected = false, x = player.x, y = player.y, width = 50, height = 50}
	}
	sellbutton = {
		x = 245,
		y = 100,
		width = 150,
		height = 150,
		selected = false
	}
	sellselection = 1
	mergeselection1 = nil
	mergeselection2 = nil
	mergebutton = {
		x = 470,
		y = 100,
		width = 150,
		height = 150,
		selected = false
	}
end

function love.update(dt)
	if dt < 1/30 then
		love.timer.sleep(1/60 - dt)
	end
	if gamemode == "play" then
		--player movement
		if sword.button == false then
			if love.keyboard.isDown("up") then
				local next_y = player.y - player.speed
				if tryplayermovement(player.x, next_y) == false then
					player.y = next_y
					player.moving = true
				end
			end
			if love.keyboard.isDown("down") then
				local next_y = player.y + player.speed
				if tryplayermovement(player.x, next_y) == false then
					player.y = next_y
					player.moving = true
				end
			end
			if love.keyboard.isDown("left") then
				local next_x = player.x - player.speed
				if tryplayermovement(next_x, player.y) == false then
					player.x = next_x
					player.moving = true
				end
				player.facing = "left"
			end
			if love.keyboard.isDown("right") then
				local next_x = player.x + player.speed
				if tryplayermovement(next_x, player.y) == false then
					player.x = next_x
					player.moving = true
				end
				player.facing = "right"
			end
			if sword.button == true or not (love.keyboard.isDown("right") or love.keyboard.isDown("left") or love.keyboard.isDown("up") or love.keyboard.isDown("down")) then
				player.moving = false
				player.currentframe = 1
			end
		end
		if player.speed < 1 then
			player.speed = 1
		end
		if player.itemselect > #player.items then
			player.itemselect = #player.items
		end
		if #player.items == 0 then
			player.itemselect = 1
		end
		--friend movement
		for i, friend in ipairs(player.friends) do
			local distance_x
			local distance_y
			if i == 1 then
				distance_x = player.x - friend.x
				distance_y = player.y - friend.y
				if math.abs(distance_x) > 55 then
				if friend.moving ~= nil then
					friend.moving = true
				end
				if friend.x < player.x then
					friend.x = friend.x + player.speed
					friend.facing = "right"
				else
					friend.x = friend.x - player.speed
					friend.facing = "left"
				end
				if math.abs(distance_y) > 0 then
					if friend.y < player.y then
						friend.y = friend.y + player.speed
					else
						friend.y = friend.y - player.speed
					end
				end
			end
			if math.abs(distance_y) > 55 then
			if friend.moving ~= nil then
					friend.moving = true
				end
				if friend.y < player.y then
					friend.y = friend.y + player.speed
				else
					friend.y = friend.y - player.speed
				end
				if math.abs(distance_x) > 0 then
					if friend.x < player.x then
						friend.x = friend.x + player.speed
						friend.facing = "right"
					else
						friend.x = friend.x - player.speed
						friend.facing = "left"
					end
				end
			end
			if math.abs(distance_y) <= 55 and math.abs(distance_x) <= 55 then
				if friend.moving ~= nil then
					friend.moving = false
					friend.currentframe = 1
				end
			end
			else
				distance_x = player.friends[i - 1].x - friend.x
				distance_y = player.friends[i - 1].y - friend.y
				if math.abs(distance_x) > 55 then
				if friend.moving ~= nil then
					friend.moving = true
				end
				if friend.x < player.friends[i - 1].x then
					friend.x = friend.x + player.speed
					friend.facing = "right"
				else
					friend.x = friend.x - player.speed
					friend.facing = "left"
				end
				if math.abs(distance_y) > 0 then
					if friend.y < player.friends[i - 1].y then
						friend.y = friend.y + player.speed
					else
						friend.y = friend.y - player.speed
					end
				end
			end
			if math.abs(distance_y) > 55 then
			if friend.moving ~= nil then
					friend.moving = true
				end
				if friend.y < player.friends[i - 1].y then
					friend.y = friend.y + player.speed
				else
					friend.y = friend.y - player.speed
				end
				if math.abs(distance_x) > 0 then
					if friend.x < player.friends[i - 1].x then
						friend.x = friend.x + player.speed
						friend.facing = "right"
					else
						friend.x = friend.x - player.speed
						friend.facing = "left"
					end
				end
			end
			if math.abs(distance_y) <= 55 and math.abs(distance_x) <= 55 then
				if friend.moving ~= nil then
					friend.moving = false
					friend.currentframe = 1
				end
			end
			end
		end
		--player animation
		if player.moving == true and sword.button == false then
			player.timer = player.timer + dt
			if player.timer > 0.15 then
				player.timer = 0
				player.currentframe = player.currentframe + 1
				if player.currentframe > 4 then
					player.currentframe = 1
				end
			end
		end
		--friend animation
		for i, friend in ipairs(player.friends) do
			if friend.timer ~= nil then
				if friend.moving ~= nil and friend.moving == true then
					friend.timer = friend.timer + dt
					if friend.timer > 0.15 then
						friend.timer = 0
						friend.currentframe = friend.currentframe + 1
						if friend.currentframe > 4 then
							friend.currentframe = 1
						end
					end
				end
				if friend.moving == nil then
					friend.timer = friend.timer + dt
					if friend.timer > 0.15 then
						friend.timer = 0
						friend.currentframe = friend.currentframe + 1
						if friend.currentframe > 4 then
							friend.currentframe = 1
						end
					end
				end
			end
		end
		--enemy animation
		if grid[starti][startj].enemies ~= nil then
			for i, enemy in ipairs(grid[starti][startj].enemies) do
				if enemy.frozen == false then
					if enemy.name == "slime" then
						if enemy.timer ~= nil then
							enemy.timer = enemy.timer + dt
							if enemy.nextdir == "up" then
									enemy.y = enemy.y - enemy.speed
								elseif enemy.nextdir == "down" then
									enemy.y = enemy.y + enemy.speed
								elseif enemy.nextdir == "left" then
									enemy.x = enemy.x - enemy.speed
								elseif enemy.nextdir == "right" then
									enemy.x = enemy.x + enemy.speed
								end
							if enemy.timer > 0.1 then
								enemy.timer = 0
								enemy.currentframe = enemy.currentframe + 1
								if enemy.currentframe > 4 then
									enemy.currentframe = 1
								end
							end
						end
					elseif enemy.name == "mini-slime" then
						if enemy.timer ~= nil then
							enemy.timer = enemy.timer + dt
							if enemy.nextdir == "up" then
									enemy.y = enemy.y - enemy.speed
								elseif enemy.nextdir == "down" then
									enemy.y = enemy.y + enemy.speed
								elseif enemy.nextdir == "left" then
									enemy.x = enemy.x - enemy.speed
								elseif enemy.nextdir == "right" then
									enemy.x = enemy.x + enemy.speed
								end
							if enemy.timer > 0.1 then
								enemy.timer = 0
								enemy.currentframe = enemy.currentframe + 1
								if enemy.currentframe > 4 then
									enemy.currentframe = 1
								end
							end
						end
					elseif enemy.name == "faker" then
						enemy.currentframe = enemy.currentframe + 1
						if enemy.currentframe > 2 then
							enemy.currentframe = 1
						end
					end
				end
			end
		end
		--sword stays onscreen for limited time
		if sword.button == true then
			sword.counter = sword.counter + 1
			if sword.counter % 3 == 0 then
				sword.currentframe = sword.currentframe + 1
				player.currentframe = player.currentframe + 1
			end
			if sword.counter >= 18 then
				sword.counter = 0
				sword.currentframe = 1
				player.currentframe = 1
				sword.button = false
				if grid[starti][startj].enemies ~= nil then
					for i, enemy in ipairs(grid[starti][startj].enemies) do
						if enemy.button == true then
							enemy.button = false
						end
					end
				end
			end
		end
		--check if sword hit enemies
		if grid[starti][startj].enemies ~= nil then
			if sword.button == true then
				for i, enemy in ipairs(grid[starti][startj].enemies) do
					if sword.y + sword.height > enemy.y and
					sword.y < enemy.y + enemy.height and
					sword.x < enemy.x + enemy.width and
					sword.x + sword.width > enemy.x then
						if sword.dir == "right" then
							enemy.x = enemy.x + 1
						elseif sword.dir == "left" then
							enemy.x = enemy.x - 1
						elseif sword.dir == "up" then
							enemy.y = enemy.y - 1
						elseif sword.dir == "down" then
							enemy.y = enemy.y + 1
						end
						if enemy.button == false or (enemy.name == "boss2" and enemy.enemycount == 0) then
							attackEffects(enemy)
							enemy.health = enemy.health - player.attack
							enemy.button = true
						end
					end
				end
			end
		end
		--check if player hit enemies
		if grid[starti][startj].enemies ~= nil then
			for i, enemy in ipairs(grid[starti][startj].enemies) do
				if player.y + player.height > enemy.y and
				player.y < enemy.y + enemy.height and
				player.x + player.width > enemy.x and
				player.x < enemy.x + enemy.width then
					local moved = false
						if player.x < enemy.x then
							local next_x = player.x - player.speed
							if tryplayermovement(next_x, player.y) == false and moved == false then
								if enemy.air == nil or enemy.air == false then
									player.x = next_x
									moved = true
								end
							end
						end
						if player.x > enemy.x then
							local next_x = player.x + player.speed
							if tryplayermovement(next_x, player.x) == false and moved == false then
								if enemy.air == nil or enemy.air == false then
									player.x = next_x
									moved = true
								end
							end
						end
						if player.y < enemy.y then
							local next_y = player.y - player.speed
							if tryplayermovement(player.x, next_y) == false and moved == false then
								if enemy.air == nil or enemy.air == false then
									player.y = next_y
									moved = true
								end
							end
						end
						if player.y > enemy.y then
							local next_y = player.y + player.speed
							if tryplayermovement(player.x, next_y) == false and moved == false then
								if enemy.air == nil or enemy.air == false then
									player.y = next_y
									moved = true
								end
							end
						end
					takedamage(enemy)
				end
				if enemy.shots ~= nil then
					for i, shot in ipairs(enemy.shots) do
						if player.y + player.height > shot.y and
						player.y < shot.y + shot.height and
						player.x + player.width > shot.x and
						player.x < shot.x + shot.width then
							table.remove(enemy.shots, i)
							takedamage(enemy)
						end
					end
				end
			end
			if player.button == true and player.counter < 200 then
				player.counter = player.counter + 1
			else
				player.counter = 0
				player.button = false
			end
		end
		--check if player ran into blocks
		if grid[starti][startj].blocks ~= nil then
			for i, block in ipairs(grid[starti][startj].blocks) do
				for i, enemy in ipairs(grid[starti][startj].enemies) do
				if enemy.y + enemy.height > block.y and
				enemy.y < block.y + block.height and
				enemy.x < block.x + block.width and
				enemy.x + enemy.width > block.x then
					if enemy.x > block.x then
						local next_x = enemy.x + 1
						if trymovement(next_x, enemy.y) == false then
							enemy.x = enemy.x + 1
						end
					else
						local next_x = enemy.x - 1
						if trymovement(next_x, enemy.y) == false then
							enemy.x = enemy.x - 1
						end
					end
					if enemy.y > block.y then
						local next_y = enemy.y + 1
						if trymovement(enemy.x, next_y) == false then
							enemy.y = enemy.y + 1
						end
					else
						local next_y = enemy.y - 1
						if trymovement(enemy.x, next_y) == false then
							enemy.y = enemy.y - 1
						end
					end
				end
			end
			end
		end
		--keep inbounds and move rooms
		if player.y < 100 then
			player.y = 100
			if (startj - 1) >= 0 and grid[starti][startj - 1] ~= nil and grid[starti][startj - 1].roomtype ~= nil and player.x >= (love.graphics.getWidth() / 2) - 60 and player.x <= (love.graphics.getWidth() / 2) + 40 then
				if grid[starti][startj].completed == true then
					player.y = 450 - player.height
					if player.friends ~= nil then
						for i, friend in ipairs(player.friends) do
							friend.y = player.y
							friend.x = player.x
						end
					end
					grid[starti][startj - 1].current = true
					grid[starti][startj].current = false
					startj = startj - 1
				end
			end
		end
		if player.y > 450 - player.height then
			player.y = 450 - player.height
			if (startj + 1) < 7 and grid[starti][startj + 1] ~= nil and grid[starti][startj + 1].roomtype ~= nil and player.x >= (love.graphics.getWidth() / 2) - 60 and player.x <= (love.graphics.getWidth() / 2) + 40 then
				if grid[starti][startj].completed == true then
					player.y = 100
					if player.friends ~= nil then
						for i, friend in ipairs(player.friends) do
							friend.y = player.y
							friend.x = player.x
						end
					end
					grid[starti][startj + 1].current = true
					grid[starti][startj].current = false
					startj = startj + 1
				end
			end
		end
		if player.x < 20 then
			player.x = 20
			if (starti - 1) >= 0 and grid[starti - 1][startj] ~= nil and grid[starti - 1][startj].roomtype ~= nil and player.y >= 200 and player.y <= 275 then
				if grid[starti][startj].completed == true then
					player.x = love.graphics.getWidth() - player.width - 20
					if player.friends ~= nil then
						for i, friend in ipairs(player.friends) do
							friend.y = player.y
							friend.x = player.x
						end
					end
					grid[starti - 1][startj].current = true
					grid[starti][startj].current = false
					starti = starti - 1
				end
			end
		end
		if player.x > love.graphics.getWidth() - player.width - 20 then
			player.x = love.graphics.getWidth() - player.width - 20
			if (starti + 1) < 7 and grid[starti + 1][startj] ~= nil and grid[starti + 1][startj].roomtype ~= nil and player.y >= 200 and player.y <= 275 then
				if grid[starti][startj].completed == true then
					player.x = 20
					if player.friends ~= nil then
						for i, friend in ipairs(player.friends) do
							friend.y = player.y
							friend.x = player.x
						end
					end
					grid[starti + 1][startj].current = true
					grid[starti][startj].current = false
					starti = starti + 1
				end
			end
		end
		--PLACEHOLDER: enemy slowly walks toward player location
		if grid[starti][startj].enemies ~= nil then
			for i, enemy in ipairs(grid[starti][startj].enemies) do
				if enemy.name == "zombie" then
					if enemy.frozen == false then
						if enemy.x > player.x then
							local next_x = enemy.x - enemy.speed
							if trymovement(next_x, enemy.y) == false then
								enemy.x = enemy.x - enemy.speed
							end
						else
							local next_x = enemy.x + enemy.speed
							if trymovement(next_x, enemy.y) == false then
								enemy.x = enemy.x + enemy.speed
							end
						end
						if enemy.y > player.y then
							local next_y = enemy.y - enemy.speed
							if trymovement(enemy.x, next_y) == false then
								enemy.y = enemy.y - enemy.speed
							end
						else
							local next_y = enemy.y + enemy.speed
							if trymovement(enemy.x, next_y) == false then
								enemy.y = enemy.y + enemy.speed
							end
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--slime enemy
				if enemy.name == "slime" then
					if enemy.frozen == false then
						if enemy.counter < 65 then
							enemy.counter = enemy.counter + 1
						else
							enemy.counter = 0
							local rand = rng:random(0, 3)
							if rand == 0 then
								local next_y = enemy.y - 20;
								if trymovement(enemy.x, next_y) == false then
									enemy.nextdir = "up"
								else
									enemy.nextdir = "none"
								end
							elseif rand == 1 then
								local next_y = enemy.y + 20;
								if trymovement(enemy.x, next_y) == false then
									enemy.nextdir = "down"
								else
									enemy.nextdir = "none"
								end
							elseif rand == 2 then
								local next_x = enemy.x - 20;
								enemy.facing = "left"
								if trymovement(next_x, enemy.y) == false then
									enemy.nextdir = "left"
								else
									enemy.nextdir = "none"
								end
							else
								local next_x = enemy.x + 20;
								enemy.facing = "right"
								if trymovement(next_x, enemy.y) == false then
									enemy.nextdir = "right"
								else
									enemy.nextdir = "none"
								end
							end
						end
					else
						enemy.nextdir = "none"
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--mini-slime
				if enemy.name == "mini-slime" then
					if enemy.frozen == false then
						if enemy.counter < 30 then
							enemy.counter = enemy.counter + 1
						else
							enemy.counter = 0
							local rand = rng:random(0, 3)
							if rand == 0 then
								local next_y = enemy.y - 40;
								if trymovement(enemy.x, next_y) == false then
									enemy.nextdir = "up"
								else
									enemy.nextdir = "none"
								end
							elseif rand == 1 then
								local next_y = enemy.y + 40;
								if trymovement(enemy.x, next_y) == false then
									enemy.nextdir = "down"
								else
									enemy.nextdir = "none"
								end
							elseif rand == 2 then
								local next_x = enemy.x - 40;
								if trymovement(next_x, enemy.y) == false then
									enemy.nextdir = "left"
								else
									enemy.nextdir = "none"
								end
							else
								local next_x = enemy.x + 40;
								if trymovement(next_x, enemy.y) == false then
									enemy.nextdir = "right"
								else
									enemy.nextdir = "none"
								end
							end
						end
					else
						enemy.nextdir = "none"
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--lasermouth
				if enemy.name == "lasermouth" then
					if enemy.frozen == false then
						if enemy.counter > 0 then
							enemy.counter = enemy.counter + 1
							if enemy.counter > 60 then
								if enemy.attackdir == "up" then
									if player.x >= enemy.x and player.x <= enemy.x + enemy.width and player.y < enemy.y then
										takedamage(enemy)
									end
								elseif enemy.attackdir == "down" then
									if player.x >= enemy.x and player.x <= enemy.x + enemy.width and player.y > enemy.y then
										takedamage(enemy)
									end
								end
							end
							if enemy.counter > 120 then
								enemy.attackdir = "none"
								enemy.counter = 0 
							end
						else
							if enemy.nextdir == "right" then
								local next_x = enemy.x + 1
								if trymovement(next_x, enemy.y) == false and next_x < love.graphics.getWidth() - enemy.width - 20 then
									enemy.x = enemy.x + 1
								else
									enemy.nextdir = "left"
								end
							end
							if enemy.nextdir == "left" then
								local next_x = enemy.x - 1
								if trymovement(next_x, enemy.y) == false and next_x > 20 then
									enemy.x = enemy.x - 1
								else
									enemy.nextdir = "right"
								end
							end
							if player.x >= enemy.x and player.x <= enemy.x + enemy.width then
								if player.y < enemy.y then
									enemy.attackdir = "up"
								else
									enemy.attackdir = "down"
								end
								enemy.counter = enemy.counter + 1
							end
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--faker
				if enemy.name == "faker" then
					if enemy.frozen == false then
						if math.abs(enemy.x - player.x) + math.abs(enemy.y - player.y) < 150 and enemy.counter == 0 then
							enemy.nextx = player.x
							enemy.nexty = player.y
							enemy.counter = enemy.counter + 1
						end
						if enemy.counter > 0 and enemy.counter < 100 then
							enemy.x = enemy.x + (enemy.nextx - enemy.x) / 100
							enemy.y = enemy.y + (enemy.nexty - enemy.y) / 100
						end
						if enemy.counter > 0 then
							enemy.counter = enemy.counter + 1
						end
						if enemy.counter > 200 then
							enemy.counter = 0
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--boss 1
				if enemy.name == "boss" then
					enemy.counter = enemy.counter + 1
					if enemy.frozen == false then
						if enemy.jumps >= 0 then
							if enemy.air == false and enemy.counter == 0 then
								enemy.air = true
							end
							if enemy.air == true and enemy.counter < 100 then
								enemy.x = player.x - (enemy.width / 2)
								enemy.y = player.y - (enemy.height / 2) 
							end
							if enemy.air == true and enemy.counter > 200 then
								enemy.air = false
							end
							if enemy.counter > 500 and enemy.jumps >= 0 then
								enemy.jumps = enemy.jumps - 1
								if enemy.jumps > 0 then
									enemy.counter = -1
								end
							end
						else
							enemy.air = false
							if enemy.counter == 600 or enemy.counter == 700 or enemy.counter == 800 then
								local rise = (player.y + (player.height / 2)) - (enemy.y + (enemy.height/2))
								local run = (player.x + (player.width / 2)) - (enemy.x + (enemy.width/2))
								local angle = math.atan(rise/run)
								if player.x + (player.width / 2) < enemy.x + (enemy.width / 2) then
									angle = angle - math.pi
								end
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle})	
							end
							if enemy.counter == 1000 then
								enemy.jumps = 3
								enemy.counter = -1
							end
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						enemy.counter = enemy.counter - 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
					for i, shot in ipairs(enemy.shots) do
						shot.x = shot.x + (shot.speed * math.cos(shot.angle))
						shot.y = shot.y + (shot.speed * math.sin(shot.angle))
						if shot.y < 100 or shot.y > 450 - shot.height or shot.x < 20 or shot.x > love.graphics.getWidth() - shot.width - 20 then
							table.remove(enemy.shots, i)
						end
					end
				end
				--boss 2
				if enemy.name == "boss2" then
					if enemy.check == true then
						table.insert(grid[starti][startj].enemies, {name = "mini-boss2", x = enemy.x + 45, y = enemy.y, width = 60, height = 60, health = 8, speed = 2, next_x = 0, next_y = 0, button = false, counter = 0, currentframe = 1, frozen = false, frozentimer = 0, distance = 2, angle = 330})
						table.insert(grid[starti][startj].enemies, {name = "mini-boss2", x = enemy.x, y = enemy.y + 120, width = 60, height = 60, health = 8, speed = 2, next_x = 0, next_y = 0, button = false, counter = 0, currentframe = 1, frozen = false, frozentimer = 0, distance = 2, angle = 210})
						table.insert(grid[starti][startj].enemies, {name = "mini-boss2", x = enemy.x + 150, y = enemy.y + 120, width = 60, height = 60, health = 8, speed = 2, next_x = 0, next_y = 0, button = false, counter = 0, currentframe = 1, frozen = false, frozentimer = 0, distance = 2, angle = 90})
						enemy.check = false
					else
						if enemy.frozen == false then
							if enemy.xDir == "right" then
								local nextx = enemy.x + 1
								if trymovement(nextx, enemy.y) == false and nextx < love.graphics.getWidth() - enemy.width - 20 then
									enemy.x = nextx
								else
									enemy.xDir = "left"
								end
							else
								local nextx = enemy.x - 1
								if trymovement(nextx, enemy.y) == false and nextx > 20 then
									enemy.x = nextx
								else
									enemy.xDir = "right"
								end
							end
							if enemy.yDir == "down" then
								local nexty = enemy.y + 1
								if trymovement(enemy.x, nexty) == false and nexty < 450 - enemy.height then
									enemy.y = nexty
								else
									enemy.yDir = "up"
								end
							else
								local nexty = enemy.y - 1
								if trymovement(enemy.x, nexty) == false and nexty > 100 then
									enemy.y = nexty
								else
									enemy.yDir = "down"
								end
							end
						else
							enemy.frozentimer = enemy.frozentimer + 1
							if enemy.frozentimer > 300 then
								enemy.frozentimer = 0
								enemy.frozen = false
							end
						end
						for i, mini in ipairs(grid[starti][startj].enemies) do
							if mini.name == "mini-boss2" then
								if enemy.xDir == "right" then
									mini.x = mini.x + 1
								else
									mini.x = mini.x - 1
								end
								if enemy.yDir == "down" then
									mini.y = mini.y + 1
								else
									mini.y = mini.y - 1
								end
							end
						end
					end
				end
				if enemy.name == "mini-boss2" then
					enemy.x = enemy.x + enemy.distance * math.cos(math.rad(enemy.angle))
					enemy.y = enemy.y + enemy.distance * math.sin(math.rad(enemy.angle))
					enemy.angle = enemy.angle + 1
					if enemy.angle == 360 then
						enemy.angle = 0
					end
				end
				--boss 3
				if enemy.name == "boss3" then
					if enemy.frozen == false then
						if enemy.nextDir == "up" then
							local next_y = enemy.y - enemy.speed
							if enemy.y == player.y then
								enemy.speed = 8
								enemy.nextDir = "left"
							end
							if trymovement(enemy.x, next_y) == false and next_y > 100 then
								enemy.y = next_y
							else
								enemy.speed = 4
								enemy.nextDir = "left"
							end
						elseif enemy.nextDir == "left" then
							local next_x = enemy.x - enemy.speed
							if trymovement(next_x, enemy.y) == false and next_x > 20 then
								enemy.x = next_x
							else
								enemy.speed = 4
								enemy.nextDir = "down"
							end
						elseif enemy.nextDir == "down" then
							local next_y = enemy.y + enemy.speed
							if enemy.y == player.y then
								enemy.speed = 8
								enemy.nextDir = "right"
							end
							if trymovement(enemy.x, next_y) == false and next_y < 450 - enemy.height then
								enemy.y = next_y
							else
								enemy.speed = 4
								enemy.nextDir = "right"
							end
						elseif enemy.nextDir == "right" then
							local next_x = enemy.x + enemy.speed
							if trymovement(next_x, enemy.y) == false and next_x < love.graphics.getWidth() - enemy.width - 20 then
								enemy.x = next_x
							else
								enemy.speed = 4
								enemy.nextDir = "up"
							end
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--boss 4
				if enemy.name == "boss4" then
					enemy.counter = enemy.counter + 1
					if enemy.frozen == false then
						if enemy.rush == true then
							enemy.x = enemy.x + (enemy.speed * math.cos(enemy.angle))
							enemy.y = enemy.y + (enemy.speed * math.sin(enemy.angle))
						end
						for i, shot in ipairs(enemy.shots) do
							shot.x = shot.x + (shot.speed * math.cos(shot.angle))
							shot.y = shot.y + (shot.speed * math.sin(shot.angle))
							if shot.y < 100 or shot.y > 450 - shot.height or shot.x < 20 or shot.x > love.graphics.getWidth() - shot.width - 20 then
								table.remove(enemy.shots, i)
							end
						end
						if enemy.counter == 1 then
							enemy.air = true
						end
						if enemy.counter == 200 then
							enemy.x = rng:random(20, love.graphics.getWidth() - enemy.width - 20)
							enemy.y = rng:random(100, 450 - enemy.height)
							enemy.air = false
						end
						if enemy.counter == 350 then
							local rand = rng:random(0, 2)
							if rand == 0 then
								local rand2 = rng:random(0, 3)
								if rand2 == 0 then
									table.insert(grid[starti][startj].enemies, {name = "slime", x = enemy.x, y = enemy.y, width = 50, height = 50, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
								elseif rand2 == 1 then
									table.insert(grid[starti][startj].enemies, {name = "zombie", x = enemy.x, y = enemy.y, width = 50, height = 50, health = 2, speed = 1, button = false, frozen = false, frozentimer = 0})
								elseif rand2 == 2 then
									table.insert(grid[starti][startj].enemies, {name = "lasermouth", x = enemy.x, y = enemy.y, width = 50, height = 50, health = 5, speed = 1, button = false, counter = 0, nextdir = "right", attackdir = "none", frozen = false, frozentimer = 0})
								else
									table.insert(grid[starti][startj].enemies, {name = "faker", x = enemy.x, y = enemy.y, width = 60, height = 60, health = 4, speed = 2, button = false, counter = 0, nextx = x, nexty = y, currentframe = 1, frozen = false, frozentimer = 0})
								end
							elseif rand == 1 then
								local rise = (player.y + (player.height / 2)) - (enemy.y + (enemy.height/2))
								local run = (player.x + (player.width / 2)) - (enemy.x + (enemy.width/2))
								local angle = math.atan(rise/run)
								if player.x + (player.width / 2) < enemy.x + (enemy.width / 2) then
									angle = angle - math.pi
								end
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle})
							elseif rand == 2 then
								local rise = (player.y + (player.height / 2)) - (enemy.y + (enemy.height/2))
								local run = (player.x + (player.width / 2)) - (enemy.x + (enemy.width/2))
								enemy.angle = math.atan(rise/run)
								if player.x + (player.width / 2) < enemy.x + (enemy.width / 2) then
									enemy.angle = enemy.angle - math.pi
								end
								enemy.rush = true
							end							
						end
						if enemy.counter == 400 then
							enemy.counter = 0
							enemy.rush = false
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						enemy.counter = enemy.counter - 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
				--boss 5
				if enemy.name == "boss5" then
					enemy.counter = enemy.counter + 1
					for i, shot in ipairs(enemy.shots) do
						shot.x = shot.x + (shot.speed * math.cos(shot.angle))
						shot.y = shot.y + (shot.speed * math.sin(shot.angle))
						if shot.y < 100 or shot.y > 450 - shot.height or shot.x < 20 or shot.x > love.graphics.getWidth() - shot.width - 20 then
							table.remove(enemy.shots, i)
						end
					end
					if enemy.frozen == false then
						if enemy.counter < 250 then
							if enemy.x > player.x then
								local next_x = enemy.x - enemy.speed
								if trymovement(next_x, enemy.y) == false then
									enemy.x = enemy.x - enemy.speed
								end
							else
								local next_x = enemy.x + enemy.speed
								if trymovement(next_x, enemy.y) == false then
									enemy.x = enemy.x + enemy.speed
								end
							end
							if enemy.y > player.y then
								local next_y = enemy.y - enemy.speed
								if trymovement(enemy.x, next_y) == false then
									enemy.y = enemy.y - enemy.speed
								end
							else
								local next_y = enemy.y + enemy.speed
								if trymovement(enemy.x, next_y) == false then
									enemy.y = enemy.y + enemy.speed
								end
							end
						end
						if enemy.counter == 350 then
							--local rand = rng:random(0,5)
							local rand = 0
							if rand == 0 then
								--quickly rushes to the other side of the room
								if enemy.counter == 350 then
									if player.x < enemy.x then
										enemy.nextDir = "left"
									else
										enemy.nextDir = "right"
									end
									enemy.rush = true
								end
							elseif rand == 1 then
								--spawns 8 directional shots
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = 0})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = math.pi / 4})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = math.pi / 2})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = (3 * math.pi) / 4})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = math.pi})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = (5 * math.pi) / 4})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = (3 * math.pi) / 2})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = (7 * math.pi) / 4})
							elseif rand == 2 then
								--spawns 3 horizontal lasers
							elseif rand == 3 then
								--spawns 5 vertical lasers
							elseif rand == 4 then
								--spawns 5 shots that follow the players location
								if enemy.counter == 350 or enemy.counter == 360 or enemy.counter == 370 or enemy.counter == 380 or enemy.counter == 390 then
									local rise = (player.y + (player.height / 2)) - (enemy.y + (enemy.height/2))
									local run = (player.x + (player.width / 2)) - (enemy.x + (enemy.width/2))
									local angle = math.atan(rise/run)
									if player.x + (player.width / 2) < enemy.x + (enemy.width / 2) then
										angle = angle - math.pi
									end
									table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle})
								end
							elseif rand == 5 then
								--spawns 5 shots at the same time (like a spread-shot) toward the player
								local rise = (player.y + (player.height / 2)) - (enemy.y + (enemy.height/2))
								local run = (player.x + (player.width / 2)) - (enemy.x + (enemy.width/2))
								local angle = math.atan(rise/run)
								if player.x + (player.width / 2) < enemy.x + (enemy.width / 2) then
									angle = angle - math.pi
								end
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle - .2})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle - .4})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle + .4})
								table.insert(enemy.shots, {x = enemy.x + (enemy.width/2), y = enemy.y + (enemy.height/2), width = 10, height = 10, speed = 3, angle = angle + .2})
							end
						end
						if enemy.counter < 400 and enemy.rush == true then
							if enemy.nextDir == "left" then
								local next_x = enemy.x - 10
								if trymovement(next_x, enemy.y) == false then
									enemy.x = enemy.x - 10
								else
									enemy.counter = 0
									enemy.rush = false
								end
							else
								local next_x = enemy.x + 10
								if trymovement(next_x, enemy.y) == false then
									enemy.x = enemy.x + 10
								else
									enemy.counter = 0
									enemy.rush = false
								end
							end
						end
						if enemy.counter == 400 then
							enemy.counter = 0
							enemy.rush = false
						end
					else
						enemy.frozentimer = enemy.frozentimer + 1
						enemy.counter = enemy.counter - 1
						if enemy.frozentimer > 300 then
							enemy.frozentimer = 0
							enemy.frozen = false
						end
					end
				end
			end
		end
		--keep enemies inbounds
		if grid[starti][startj].enemies ~= nil then
			for i, enemy in ipairs(grid[starti][startj].enemies) do
				if enemy.x < 20 then
					enemy.x = 20
				end
				if enemy.x > love.graphics.getWidth() - enemy.width - 20 then
					enemy.x = love.graphics.getWidth() - enemy.width - 20
				end
				if enemy.y < 100 then
					enemy.y = 100
				end
				if enemy.y > 450 - enemy.height then
					enemy.y = 450 - enemy.height
				end
			end
		end
		--if the enemy is killed, remove it
		if grid[starti][startj].enemies ~= nil then
			for i, enemy in ipairs(grid[starti][startj].enemies) do
				if enemy.health <= 0 then
					local rand = rng:random(0, 2)
					if rand == 2 then
						rand = rng:random(0, 2)
						if rand == 0 then
							table.insert(grid[starti][startj].items, {name = "Heart", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
						elseif rand == 1 then
							table.insert(grid[starti][startj].items, {name = "Quarter", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = 0, sell = 0})
						elseif rand == 2 then
							local rand2 = rng:random(0, 9)
							if rand2 == 0 then 
								table.insert(grid[starti][startj].items, {name = "Pizza", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 1 then
								table.insert(grid[starti][startj].items, {name = "Teddy Bear", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 2 then
								table.insert(grid[starti][startj].items, {name = "Piggy Bank", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 3 then
								table.insert(grid[starti][startj].items, {name = "Toy Robot", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 4 then
								table.insert(grid[starti][startj].items, {name = "Toy Sword", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 5 then
								table.insert(grid[starti][startj].items, {name = "Doll", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 6 then
								table.insert(grid[starti][startj].items, {name = "Candy", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 7 then
								table.insert(grid[starti][startj].items, {name = "Stopwatch", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 8 then
								table.insert(grid[starti][startj].items, {name = "8-Ball", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 9 then
								table.insert(grid[starti][startj].items, {name = "Balloon", x = enemy.x, y = enemy.y, width = 50, height = 50, cost = .5, sell = .25})
							end
						end
					end
					if enemy.name == "mini-boss2" then
						for i, boss in ipairs(grid[starti][startj].enemies) do
							if boss.name == "boss2" then
								boss.enemycount = boss.enemycount - 1
							end
						end
					end
					if enemy.name == "boss" then
					table.insert(grid[i][j].enemies, {name = "slime", x = enemy.x, y = enemy.y, width = 50, height = 50, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
					table.insert(grid[i][j].enemies, {name = "slime", x = enemy.x + 50, y = enemy.y, width = 50, height = 50, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
					table.insert(grid[i][j].enemies, {name = "slime", x = enemy.x, y = enemy.y + 50, width = 50, height = 50, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
					table.insert(grid[i][j].enemies, {name = "slime", x = enemy.x + 50, y = enemy.y + 50, width = 50, height = 50, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
					end
					if enemy.name == "slime" then
						table.insert(grid[starti][startj].enemies, {name = "mini-slime", x = enemy.x, y = enemy.y, width = enemy.width / 2, height = enemy.height / 2, health = 2, speed = 2, timer = 0, button = false, counter = 0, currentframe = 1, facing = "left", nextdir = "none", frozen = false, frozentimer = 0})
						table.insert(grid[starti][startj].enemies, {name = "mini-slime", x = enemy.x, y = enemy.y, width = enemy.width / 2, height = enemy.height / 2, health = 2, speed = 2, timer = 0, button = false, counter = 0, currentframe = 1, facing = "right", nextdir = "none", frozen = false, frozentimer = 0})
					end
					table.remove(grid[starti][startj].enemies, i)
				end
			end
		end
		--if all enemies in a room are dead, the room is completed.
		if grid[starti][startj].enemies ~= nil then
			if #grid[starti][startj].enemies == 0 then
				clearRoom()
				grid[starti][startj].completed = true
				if grid[starti][startj].completed == true and grid[starti][startj].roomtype == "boss" and grid[starti][startj].items.button == false then
					table.insert(grid[starti][startj].items, {name = "nextlevel", x = 300, y = 150, width = 40, height = 40, ontop = true})
					grid[starti][startj].items.button = true
				end
				if grid[starti][startj].items.button == false then
					local rand = rng:random(0, 1)
					if rand == 1 then
						rand = rng:random(0, 2)
						if rand == 0 then
							local rand2 = rng:random(0, 9)
							if rand2 == 0 then 
								table.insert(grid[starti][startj].items, {name = "Pizza", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 1 then
								table.insert(grid[starti][startj].items, {name = "Teddy Bear", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 2 then
								table.insert(grid[starti][startj].items, {name = "Piggy Bank", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 3 then
								table.insert(grid[starti][startj].items, {name = "Toy Robot", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 4 then
								table.insert(grid[starti][startj].items, {name = "Toy Sword", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 5 then
								table.insert(grid[starti][startj].items, {name = "Doll", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 6 then
								table.insert(grid[starti][startj].items, {name = "Candy", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 7 then
								table.insert(grid[starti][startj].items, {name = "Stopwatch", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 8 then
								table.insert(grid[starti][startj].items, {name = "8-Ball", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							elseif rand2 == 9 then
								table.insert(grid[starti][startj].items, {name = "Balloon", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
							end
						elseif rand == 1 then
							table.insert(grid[starti][startj].items, {name = "Quarter", x = 300, y = 300, width = 50, height = 50, cost = 0, sell = 0})
						else
							table.insert(grid[starti][startj].items, {name = "Heart", x = 300, y = 300, width = 50, height = 50, cost = .5, sell = .25})
						end
					end
					grid[starti][startj].items.button = true
				end
			end
		end
		--check if player is on top of exit gate
		if grid[starti][startj].items ~= nil then
			for i, item in ipairs(grid[starti][startj].items) do
				if not (player.y + player.height > item.y and
				player.y < item.y + item.height and
				player.x < item.x + item.width and
				player.x + player.width > item.x) and
				item.ontop ~= nil and
				item.ontop == true then
					item.ontop = false
				end
			end
		end
		--check if player got an item
		if grid[starti][startj].items ~= nil then
			for i, item in ipairs(grid[starti][startj].items) do
				if player.y + player.height > item.y and
				player.y < item.y + item.height and
				player.x < item.x + item.width and
				player.x + player.width > item.x then
					--if player gets a heart, and the health is not max, heal one unit
					if item.name == "Heart" then
						if player.currenthealth < player.maxhealth then
							player.currenthealth = player.currenthealth + 1
							table.remove(grid[starti][startj].items, i)
						end
					elseif item.name == "Quarter" then
						player.quarters = player.quarters + .25
						table.remove(grid[starti][startj].items, i)
					elseif item.name == "nextlevel" then
						if item.ontop == false then
							table.remove(grid[starti][startj].items, i)
							levelparams.number = levelparams.number + 1
							levelparams.name = "Level2"
							levelparams.size = levelparams.size + 5
							if levelparams.size >= 45 then
								levelparams.size = 45
							end
							createLevel()
						end
					else
						if grid[starti][startj].roomtype == "shop" then
							if player.x > item.x then
								player.x = player.x + player.speed
							else player.x = player.x - player.speed
							end
							if player.y > item.y then
								player.y = player.y + player.speed
							else
								player.y = player.y - player.speed
							end
							gamemode = "shop"
						else
							table.insert(player.items, item)
							checkiffriend(item, "insert")
							table.remove(grid[starti][startj].items, i)
						end
					end
				end
			end
		end
	end
	if gamemode == "sell" then
		if sellselection <= 0 then
			sellselection = 1
		end
	end
end

function love.draw(dt)
	--draw bg
	love.graphics.setColor(255, 255, 255)
	love.graphics.draw(floor_1, 20, 100)
	--draw blocks
	if grid[starti][startj].blocks ~= nil then
		for i, block in ipairs(grid[starti][startj].blocks) do
			love.graphics.setColor(255, 255, 255)
			if block.color == 0 then
				love.graphics.draw(block_image_1, blockquads[rng:random(1, 2)], block.x, block.y)
			elseif block.color == 1 then
				love.graphics.draw(block_image_2, blockquads[rng:random(1, 2)], block.x, block.y)
			elseif block.color == 2 then
				love.graphics.draw(block_image_3, blockquads[rng:random(1, 2)], block.x, block.y)
			elseif block.color == 3 then
				love.graphics.draw(block_image_4, blockquads[rng:random(1, 2)], block.x, block.y)
			elseif block.color == 4 then
				love.graphics.draw(block_image_5, blockquads[rng:random(1, 2)], block.x, block.y)
			else
				love.graphics.draw(block_image_6, blockquads[rng:random(1, 2)], block.x, block.y)
			end
		end
	end
	--draw friend
	for i, friend in ipairs(player.friends) do
		if friend.name == "Piggy Bank" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Pizza Bank" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_pizza, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_pizza, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Digital Bank" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_robot, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_robot, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Teddy Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Doll" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Pizza Delivery" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_pizza, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_pizza, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Dagger Girl" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_sword, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_sword, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "The Third Robot" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_robot, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_robot, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Fortune Teller" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_8ball, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_8ball, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Goldilocks" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_doll, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_doll, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Candy Girl" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_candy, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_candy, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Ms. Swine" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_doll, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_doll, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Medusa" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_clock, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_clock, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Robo-Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_robot, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_robot, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Bad Teddy" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_sword, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_sword, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Piggy Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_bear, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_bear, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Pizza Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pizza_bear, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pizza_bear, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Mystic Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_8ball, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_8ball, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Gamer M8" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(robot_8ball, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(robot_8ball, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "8-Ball Pig" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_8ball, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_8ball, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Toy Robot" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(robot, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(robot, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Pizza Robot" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pizza_robot, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pizza_robot, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Gumball Machine" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_candy, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_candy, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Candy Mecha" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(robot_candy, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(robot_candy, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Candy Bear" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_candy, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_candy, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Synchronursa" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_clock, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_clock, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Business Venture" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_clock, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_clock, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Vintage Robot" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(robot_clock, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(robot_clock, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "8-Ball Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(balloon_8ball, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(balloon_8ball, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Bear Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(bear_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(bear_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Piggy Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pig_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pig_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Stopwatch Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(clock_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(clock_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Pizza Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(pizza_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(pizza_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Spiky Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(sword_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(sword_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Helium Robot" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(robot_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(robot_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		elseif friend.name == "Hot Air Balloon" then
			love.graphics.setColor(255, 255, 255)
			if friend.facing == "right" then
				love.graphics.draw(doll_balloon, quads[friend.currentframe], friend.x, friend.y, 0, 1, 1, 0)
			else
				love.graphics.draw(doll_balloon, quads[friend.currentframe], friend.x, friend.y, 0, -1, 1, friend.width)
			end
		else
			love.graphics.setColor(0, 150, 150, 50)
			love.graphics.rectangle("fill", friend.x, friend.y, friend.width, friend.height)
		end
	end
	--draw map
	for i = 0, 6 do
		for j = 0, 6 do
			if grid[i][j].current == true then
				love.graphics.setColor(255,0,0)
				love.graphics.rectangle("fill", 20 + (30 * i), 10 + (10 * j), 30, 10)
			elseif grid[i][j].roomtype == "room" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.rectangle("fill", 20 + (30 * i), 10 + (10 * j), 30, 10)
			elseif grid[i][j].roomtype == "boss" then
				love.graphics.setColor(0, 0, 255)
				love.graphics.rectangle("fill", 20 + (30 * i), 10 + (10 * j), 30, 10)
			elseif grid[i][j].roomtype == "shop" then
				love.graphics.setColor(255, 255, 0)
				love.graphics.rectangle("fill", 20 + (30 * i), 10 + (10 * j), 30, 10)
			else
				love.graphics.setColor(0, 0, 0)
				love.graphics.rectangle("line", 20 + (30 * i), 10 + (10 * j), 30, 10)
			end
		end
	end
	--draw player health
	for i = 0, player.maxhealth - 1 do
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(emptyheart, 300 + (i * 30), 30)
	end
	for i, item in ipairs(player.items) do
		if item.health ~= nil then
			love.graphics.setColor(200, 200, 200)
			love.graphics.rectangle("fill", 300 + (30 * (player.maxhealth)) + ((item.health - 1) * 30), 30, 20, 20)
		end
	end
	for i = 0, player.currenthealth - 1 do
		love.graphics.setColor(255, 255, 255)
		love.graphics.draw(fullheart, 300 + (i * 30), 30)
	end
	--draw player's quarters
	love.graphics.setColor(255, 255, 255)
	love.graphics.setFont(font)
	love.graphics.print(string.format("$%.2f", player.quarters), 300, 10)
	--draw usable item
	love.graphics.setColor(150, 150, 150)
	love.graphics.rectangle("line", 430, 15, 70, 75)
	if #player.items > 0 then
		if player.items[player.itemselect].name ~= nil then
			local name = player.items[player.itemselect].name
			love.graphics.setColor(255, 255, 255)
			--sword items
			if name == "Toy Sword" then
				love.graphics.draw(sworditem, 440, 25)
			elseif name == "Pizza Cutter" then
				love.graphics.draw(pizzasworditem, 440, 25)
			elseif name == "Bad Teddy" then
				love.graphics.draw(bearsworditem, 440, 25)
			elseif name == "Dagger Girl" then
				love.graphics.draw(dollsworditem, 440, 25)
			elseif name == "Robo-Sword" then
				love.graphics.draw(robotsworditem, 440, 25)
			elseif name == "Candy Cane Sword" then
				love.graphics.draw(candysworditem, 440, 25)
			elseif name == "Pork Sword" then
				love.graphics.draw(pigsworditem, 440, 25)
			elseif name == "Clockstopper" then
				love.graphics.draw(clocksworditem, 440, 25)
			elseif name == "Magic Blade" then
				love.graphics.draw(eightballsworditem, 440, 25)
			elseif name == "Spiky Balloon" then
				love.graphics.draw(balloonsworditem, 440, 25)
			--robot items
			elseif name == "Toy Robot" then
				love.graphics.draw(robotitem, 440, 25)
			elseif name == "Gamer M8" then
				love.graphics.draw(robot8ballitem, 440, 25)
			elseif name == "Helium Robot" then
				love.graphics.draw(robotballoonitem, 440, 25)
			elseif name == "Robo-Bear" then
				love.graphics.draw(bearrobotitem, 440, 25)
			elseif name == "Candy Mecha" then
				love.graphics.draw(robotcandyitem, 440, 25)
			elseif name == "Vintage Robot" then
				love.graphics.draw(robotclockitem, 440, 25)
			elseif name == "The Third Robot" then
				love.graphics.draw(dollrobotitem, 440, 25)
			elseif name == "Digital Bank" then
				love.graphics.draw(pigrobotitem, 440, 25)
			elseif name == "Pizza Robot" then
				love.graphics.draw(pizzarobotitem, 440, 25)
			--pizza items
			elseif name == "Pizza" then
				love.graphics.draw(pizzaitem, 440, 25)
			elseif name == "Mystery Meat" then
				love.graphics.draw(eightballpizzaitem, 440, 25)
			elseif name == "Pizza Balloon" then
				love.graphics.draw(pizzaballoonitem, 440, 25)
			elseif name == "Pizza Bear" then
				love.graphics.draw(bearpizzaitem, 440, 25)
			elseif name == "Pizza Candy" then
				love.graphics.draw(pizzacandyitem, 440, 25)
			elseif name == "Fossilized Pizza" then
				love.graphics.draw(pizzaclockitem, 440, 25)
			elseif name == "Pizza Delivery" then
				love.graphics.draw(dollpizzaitem, 440, 25)
			elseif name == "Pizza Bank" then
				love.graphics.draw(pigpizzaitem, 440, 25)
			--pig items
			elseif name == "Piggy Bank" then
				love.graphics.draw(pigitem, 440, 25)
			elseif name == "8-Ball Pig" then
				love.graphics.draw(pig8ballitem, 440, 25)
			elseif name == "Piggy Balloon" then
				love.graphics.draw(pigballoonitem, 440, 25)
			elseif name == "Piggy Bear" then
				love.graphics.draw(pigbearitem, 440, 25)
			elseif name == "Gumball Machine" then
				love.graphics.draw(pigcandyitem, 440, 25)
			elseif name == "Business Venture" then
				love.graphics.draw(pigclockitem, 440, 25)
			elseif name == "Ms. Swine" then
				love.graphics.draw(pigdollitem, 440, 25)
			--doll items
			elseif name == "Doll" then
				love.graphics.draw(dollitem, 440, 25)
			elseif name == "Fortune Teller" then
				love.graphics.draw(doll8ballitem, 440, 25)
			elseif name == "Hot Air Balloon" then
				love.graphics.draw(dollballoonitem, 440, 25)
			elseif name == "Goldilocks" then
				love.graphics.draw(beardollitem, 440, 25)
			elseif name == "Candy Girl" then
				love.graphics.draw(dollcandyitem, 440, 25)
			elseif name == "Medusa" then
				love.graphics.draw(dollclockitem, 440, 25)
			--clock items
			elseif name == "Stopwatch" then
				love.graphics.draw(clockitem, 440, 25)
			elseif name == "Strange Clock" then
				love.graphics.draw(eightballclockitem, 440, 25)
			elseif name == "Stopwatch Balloon" then
				love.graphics.draw(clockballoonitem, 440, 25)
			elseif name == "Synchronursa" then
				love.graphics.draw(bearclockitem, 440, 25)
			elseif name == "Candy Time!" then
				love.graphics.draw(candyclockitem, 440, 25)
			--candy items
			elseif name == "Candy" then
				love.graphics.draw(candyitem, 440, 25)
			elseif name == "Mystery Flavor" then
				love.graphics.draw(eightballcandyitem, 440, 25)
			elseif name == "Bubble Gum" then
				love.graphics.draw(candyballoonitem, 440, 25)
			elseif name == "Candy Bear" then
				love.graphics.draw(bearcandyitem, 440, 25)
			--bear items
			elseif name == "Teddy Bear" then
				love.graphics.draw(bearitem, 440, 25)
			elseif name == "Mystic Bear" then
				love.graphics.draw(bear8ballitem, 440, 25)
			elseif name == "Bear Balloon" then
				love.graphics.draw(bearballoonitem, 440, 25)
			--balloon items
			elseif name == "Balloon" then
				love.graphics.draw(balloonitem, 440, 25)
			elseif name == "8-Ball Balloon" then
				love.graphics.draw(eightballballoonitem, 440, 25)
			--8ball items
			elseif name == "8-Ball" then
				love.graphics.draw(eightballitem, 440, 25)
			else
				love.graphics.setColor(150, 150, 150)
				love.graphics.rectangle("fill", 440, 25, 50, 50)
			end
			love.graphics.print(name, 0, 0)
		end
	end
	--draw player's items
	for i, item in ipairs(player.items) do
		love.graphics.setColor(255, 255, 0)
		love.graphics.rectangle("fill", 500 + (i * 30), 50, 20, 20)
	end
	--draw doors
	love.graphics.setColor(255, 255, 255)
	if starti - 1 >= 0 and grid[starti - 1][startj].roomtype == "room" then
		love.graphics.draw(door_left, 10, 225)
	end
	if starti + 1 <= 6 and grid[starti + 1][startj].roomtype == "room" then
		love.graphics.draw(door_right, love.graphics.getWidth() - 30, 225)
	end
	if startj - 1 >= 0 and grid[starti][startj - 1].roomtype == "room" then
		love.graphics.draw(door_up,(love.graphics.getWidth() / 2) - 60, 90)
	end
	if startj + 1 <= 6 and grid[starti][startj + 1].roomtype == "room" then
		love.graphics.draw(door_down, (love.graphics.getWidth() / 2) - 60, 440)
	end
	--draw boss door
	love.graphics.setColor(100, 100, 100)
	if starti - 1 >= 0 and grid[starti - 1][startj].roomtype == "boss" then
		love.graphics.rectangle("fill", 10, 225, 20, 100)
	end
	if starti + 1 <= 6 and grid[starti + 1][startj].roomtype == "boss" then
		love.graphics.rectangle("fill", love.graphics.getWidth() - 30, 225, 20, 100)
	end
	if startj - 1 >= 0 and grid[starti][startj - 1].roomtype == "boss" then
		love.graphics.rectangle("fill", (love.graphics.getWidth() / 2) - 60, 90, 100, 20)
	end
	if startj + 1 <= 6 and grid[starti][startj + 1].roomtype == "boss" then
		love.graphics.rectangle("fill", (love.graphics.getWidth() / 2) - 60, 440, 100, 20)
	end
	--draw shop door
	love.graphics.setColor(255, 255, 0)
	if starti - 1 >= 0 and grid[starti - 1][startj].roomtype == "shop" then
		love.graphics.rectangle("fill", 10, 225, 20, 100)
	end
	if starti + 1 <= 6 and grid[starti + 1][startj].roomtype == "shop" then
		love.graphics.rectangle("fill", love.graphics.getWidth() - 30, 225, 20, 100)
	end
	if startj - 1 >= 0 and grid[starti][startj - 1].roomtype == "shop" then
		love.graphics.rectangle("fill", (love.graphics.getWidth() / 2) - 60, 90, 100, 20)
	end
	if startj + 1 <= 6 and grid[starti][startj + 1].roomtype == "shop" then
		love.graphics.rectangle("fill", (love.graphics.getWidth() / 2) - 60, 440, 100, 20)
	end
	--draw player
	love.graphics.setColor(255, 255, 255)
	local x_scale
	if sword.button == false then
		if player.facing == "right" then
			love.graphics.draw(player.image, quads[player.currentframe], player.x, player.y, 0, 1, 1, 0)
		else
			love.graphics.draw(player.image, quads[player.currentframe], player.x, player.y, 0, -1, 1, player.width)
		end
	else
		if sword.dir == "right" then
			love.graphics.draw(player.attackimage_lr, attackQuads[player.currentframe], player.x, player.y, 0, 1, 1, 0)
		end
		if sword.dir == "left" then
			love.graphics.draw(player.attackimage_lr, attackQuads[player.currentframe], player.x, player.y, 0, -1, 1, player.width)
		end
		if sword.dir == "up" then
			if player.facing == "right" then
				love.graphics.draw(player.attackimage_up, attackQuads[player.currentframe], player.x, player.y, 0, 1, 1, 0)
			else
				love.graphics.draw(player.attackimage_up, attackQuads[player.currentframe], player.x, player.y, 0, -1, 1, player.width)
			end
		end
		if sword.dir == "down" then
			if player.facing == "right" then
				love.graphics.draw(player.attackimage_dn, attackQuads[player.currentframe], player.x, player.y, 0, 1, 1, 0)
			else
				love.graphics.draw(player.attackimage_dn, attackQuads[player.currentframe], player.x, player.y, 0, -1, 1, player.width)
			end
		end
	end
	--draw enemies
	if grid[starti][startj].enemies ~= nil then
		for i, enemy in ipairs(grid[starti][startj].enemies) do
			love.graphics.setColor(255, 255, 255)
			if enemy.name == "slime" then
				if enemy.facing == "right" then
					love.graphics.draw(slime, quads[enemy.currentframe], enemy.x, enemy.y, 0, 1, 1, 0)
				else
					love.graphics.draw(slime, quads[enemy.currentframe], enemy.x, enemy.y, 0, -1, 1, enemy.width)
				end
			elseif enemy.name == "mini-slime" then
				if enemy.facing == "right" then
					love.graphics.draw(minislime, miniquads[enemy.currentframe], enemy.x, enemy.y, 0, 1, 1, 0)
				else
					love.graphics.draw(minislime, miniquads[enemy.currentframe], enemy.x, enemy.y, 0, -1, 1, enemy.width)
				end
			elseif enemy.name == "lasermouth" then
				love.graphics.setColor(0, 255, 0)
				love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				if enemy.counter > 60 then
					love.graphics.setColor(255, 0, 0)
					if enemy.attackdir == "up" then
						love.graphics.rectangle("fill", enemy.x, 100, enemy.width, enemy.y - 100)
					elseif enemy.attackdir == "down" then
						love.graphics.rectangle("fill", enemy.x, enemy.y + enemy.height, enemy.width, 450 - (enemy.y + enemy.height))
					end
				end
			elseif enemy.name == "faker" then
				love.graphics.setColor(255, 255, 255)					
				if enemy.counter > 0 and enemy.counter < 100 then
					love.graphics.draw(faker, blockquads[enemy.currentframe], enemy.x, enemy.y)
				else
					love.graphics.draw(block_image_1, blockquads[rng:random(1, 2)], enemy.x, enemy.y)
				end
			elseif enemy.name == "boss" then
				if enemy.air == true then
					love.graphics.setColor(10, 10, 10, 200)
					love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				else
					love.graphics.setColor(0, 0, 255)
					love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				end
				for i, shot in ipairs(enemy.shots) do
					love.graphics.setColor(255, 0, 0)
					love.graphics.rectangle("fill", shot.x, shot.y, shot.height, shot.width)
				end
				love.graphics.print(enemy.counter, 0, 20)
			elseif enemy.name == "boss2" then
				love.graphics.setColor(255, 0, 255)
				love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
			elseif enemy.name == "mini-boss2" then
				love.graphics.setColor(0, 255, 255)
				love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
			elseif enemy.name == "boss4" then
				if enemy.air == true then
					love.graphics.setColor(10, 10, 10, 200)
					love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				else
					love.graphics.setColor(0, 255, 0)
					love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				end
				for i, shot in ipairs(enemy.shots) do
					love.graphics.setColor(255, 0, 0)
					love.graphics.rectangle("fill", shot.x, shot.y, shot.height, shot.width)
				end
			elseif enemy.name == "boss5" then
				love.graphics.setColor(0, 255, 0)
				love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				for i, shot in ipairs(enemy.shots) do
					love.graphics.setColor(255, 0, 0)
					love.graphics.rectangle("fill", shot.x, shot.y, shot.height, shot.width)
				end
			else
				love.graphics.setColor(0, 255, 0)
				love.graphics.rectangle("fill", enemy.x, enemy.y, enemy.width, enemy.height)
				if enemy.counter ~= nil then
					love.graphics.print(enemy.counter, 0, 20)
				end
			end
		end
	end
	--draw sword
	love.graphics.setColor(255, 255, 0)
	if sword.button == true then
		if sword.dir == "right" then
			love.graphics.draw(sword.imagelr, sword.lrquads[sword.currentframe], sword.x, sword.y, 0, 1, 1, 0)
		end
		if sword.dir == "left" then
			love.graphics.draw(sword.imagelr, sword.lrquads[sword.currentframe], sword.x, sword.y, 0, -1, 1, sword.width)
		end
		if sword.dir == "up" then
			if player.facing == "right" then
				love.graphics.draw(sword.imageup, sword.upquads[sword.currentframe], sword.x, sword.y, 0, 1, 1, 0)
			else
				love.graphics.draw(sword.imageup, sword.upquads[sword.currentframe], sword.x, sword.y, 0, -1, 1, sword.width)
			end
		end
		if sword.dir == "down" then
			if player.facing == "right" then
				love.graphics.draw(sword.imagedn, sword.upquads[sword.currentframe], sword.x, sword.y, 0, 1, 1, 0)
			else
				love.graphics.draw(sword.imagedn, sword.upquads[sword.currentframe], sword.x, sword.y, 0, -1, 1, sword.width)
			end
		end
	end
	--draw items
	if grid[starti][startj].items ~= nil then
		for i, item in ipairs(grid[starti][startj].items) do
			if item.name == "Heart" then
				love.graphics.setColor(255, 0, 0)
				love.graphics.rectangle("fill", item.x, item.y, item.width, item.height)
			end
			if item.name == "Quarter" then
				love.graphics.setColor(200, 200, 200)
				love.graphics.rectangle("fill", item.x, item.y, item.width, item.height)
			end
			if item.name == "Pizza" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(pizzaitem, item.x, item.y)
			end
			if item.name == "Teddy Bear" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(bearitem, item.x, item.y)
			end
			if item.name == "Piggy Bank" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(pigitem, item.x, item.y)
			end
			if item.name == "Toy Robot" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(robotitem, item.x, item.y)
			end
			if item.name == "Toy Sword" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(sworditem, item.x, item.y)
			end
			if item.name == "Doll" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(dollitem, item.x, item.y)
			end
			if item.name == "Candy" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(candyitem, item.x, item.y)
			end
			if item.name == "Stopwatch" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(clockitem, item.x, item.y)
			end
			if item.name == "Balloon" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(balloonitem, item.x, item.y)
			end
			if item.name == "8-Ball" then
				love.graphics.setColor(255, 255, 255)
				love.graphics.draw(eightballitem, item.x, item.y)
			end
			if item.name == "Shop" then
				love.graphics.setColor(255, 255, 0)
				love.graphics.rectangle("fill", item.x, item.y, item.width, item.height)
			end
			if item.name == "nextlevel" then
				love.graphics.setColor(0, 0, 0)
				love.graphics.rectangle("fill", item.x, item.y, item.width, item.height)
			end
		end
	end
	if gamemode == "paused" then
		love.graphics.setColor(5, 5, 5, 240)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
		love.graphics.setColor(255, 255, 255)
		love.graphics.setFont(font2)
		love.graphics.print("PAUSED", 250, love.graphics.getHeight() / 2)
	end
	if gamemode == "shop" then
		love.graphics.setColor(5, 5, 5, 240)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
		--draw the three options
		love.graphics.setColor(255, 255, 255)
		if buybutton.selected == true then
			love.graphics.rectangle("fill", buybutton.x - 10, buybutton.y - 10, buybutton.width + 20, buybutton.height + 20)
		elseif sellbutton.selected == true then
			love.graphics.rectangle("fill", sellbutton.x - 10, sellbutton.y - 10, sellbutton.width + 20, sellbutton.height + 20)
		elseif mergebutton.selected == true then
			love.graphics.rectangle("fill", mergebutton.x - 10, mergebutton.y - 10, mergebutton.width + 20, mergebutton.height + 20)
		end
		love.graphics.setColor(255, 255, 0)
		love.graphics.rectangle("fill", buybutton.x, buybutton.y, buybutton.width, buybutton.height)
		love.graphics.rectangle("fill", sellbutton.x, sellbutton.y, sellbutton.width, sellbutton.height)
		love.graphics.rectangle("fill", mergebutton.x, mergebutton.y, mergebutton.width, mergebutton.height)
	end
	if gamemode == "buy" then
		love.graphics.setColor(5, 5, 5, 240)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
		for i, item in ipairs(shop) do
			if item.selected == true then
				love.graphics.setColor(255, 255, 255)
				love.graphics.rectangle("fill", 70, 85 + (60 * i), 210, 60) 
			end
			love.graphics.setColor(50, 50, 50)
			love.graphics.rectangle("fill", 75, 90 + (60 * i), 200, 50)
			love.graphics.setColor(255, 255, 255)
			love.graphics.print(item.name, 100, 110 + (60 * i))
		end
	end
	if gamemode == "sell" then
		love.graphics.setColor(5, 5, 5, 240)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
		if #player.items > 0 then
			love.graphics.setColor(255, 255, 255)
			love.graphics.rectangle("fill", 70, 85 + (60 * sellselection), 210, 60)
		end
		for i, item in ipairs(player.items) do
			love.graphics.setColor(50, 50, 50)
			love.graphics.rectangle("fill", 75, 90 + (60 * i), 200, 50)
			love.graphics.setColor(255, 255, 255)
			love.graphics.print(item.name, 100, 110 + (60 * i))
		end
	end
	if gamemode == "merge" then
		love.graphics.setColor(5, 5, 5, 240)
		love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight())
		if #player.items > 0 then
			love.graphics.setColor(255, 255, 255)
			love.graphics.rectangle("fill", 70, 85 + (60 * sellselection), 210, 60)
		end
		for i, item in ipairs(player.items) do
			love.graphics.setColor(50, 50, 50)
			love.graphics.rectangle("fill", 75, 90 + (60 * i), 200, 50)
			love.graphics.setColor(255, 255, 255)
			love.graphics.print(item.name, 100, 110 + (60 * i))
		end
	end
end

function love.keypressed(key)
	if key == "escape" then
		if gamemode == "shop" then
			gamemode = "play"
		end
		if gamemode == "buy" or gamemode == "sell" then
			gamemode = "shop"
		end
		if gamemode == "merge" then
			gamemode = "shop"
			mergeselection1 = nil
			mergeselection2 = nil
		end
	end
	if key == "p" then
		if gamemode == "play" then
			gamemode = "paused"
		elseif gamemode == "paused" then
			gamemode = "play"
		end
	end
	if gamemode == "play" then
		if key == "a" then
			if sword.button == false then
				sword.x = player.x - player.width
				sword.y = player.y + (player.height / 2) - 10
				sword.width = 50
				sword.height = 20
				sword.dir = "left"
				sword.button = true
				player.facing = "left"
				player.currentframe = 1
			end
		end
		if key == "d" then
			if sword.button == false then
				sword.x = player.x + player.width
				sword.y = player.y + (player.height / 2) - 10
				sword.width = 50
				sword.height = 20
				sword.dir = "right"
				sword.button = true
				player.facing = "right"
				player.currentframe = 1
			end
		end
		if key == "w" then
			if sword.button == false then
				sword.x = player.x + (player.width / 2) - 10
				sword.y = player.y - player.height
				sword.width = 20
				sword.height = 50
				sword.dir = "up"
				sword.button = true
				player.currentframe = 1
			end
		end
		if key == "s" then
			if sword.button == false then
				sword.x = player.x + (player.width / 2) - 10
				sword.y = player.y + player.height
				sword.width = 20
				sword.height = 50
				sword.dir = "down"
				sword.button = true
				player.currentframe = 1
			end
		end
		if key == "q" then
			player.itemselect = player.itemselect - 1
			if player.itemselect < 1 then
				player.itemselect = #player.items
			end
		end
		if key == "e" then
			player.itemselect = player.itemselect + 1
			if player.itemselect > #player.items then
				player.itemselect = 1
			end
		end
		if key == " " then
			if #player.items > 0 then
				local name = player.items[player.itemselect].name
				useItem(name)
			end
		end
	end
	--buy menu
	if gamemode == "buy" then
		local temp = 0
		if key == "down" then
			for i, item in ipairs(shop) do
				if item.selected == true then
					item.selected = false
					temp = item.num + 1
				end
				if temp > #shop then
					temp = 1 
				end
			end
			for i, item in ipairs(shop) do
				if item.num == temp then
					item.selected = true
				end
			end
		end
		if key == "up" then
			for i, item in ipairs(shop) do
				if item.selected == true then
					item.selected = false
					temp = item.num - 1
				end
				if temp < 1 then
					temp = #shop 
				end
			end
			for i, item in ipairs(shop) do
				if item.num == temp then
					item.selected = true
				end
			end
		end
		if key == "return" then
			for i, item in ipairs(shop) do
				if item.selected == true then
					player.quarters = player.quarters - item.cost
					table.insert(player.items, item)
					checkstats(item, "insert")
					checkiffriend(item, "insert")
				end
			end
		end
	end
	--sell menu
	if gamemode == "sell" then
		if key == "down" then
			sellselection = sellselection + 1
			if sellselection > #player.items then
				sellselection = 1
			end
		end
		if key == "up" then
			sellselection = sellselection - 1
			if sellselection < 1 then
				sellselection = #player.items
			end
		end
		if key == "return" then
			for i, item in ipairs(player.items) do
				if i == sellselection then
					if i == player.itemselect then
						player.itemselect = player.itemselect - 1
					end
					if i == #player.items then
						sellselection = sellselection - 1
					end
					player.quarters = player.quarters + item.sell
					table.remove(player.items, i)
					checkstats(item, "remove")
					checkiffriend(item, "remove")
				end
			end
		end
	end
	--merge menu
	if gamemode == "merge" then
		if key == "down" then
			sellselection = sellselection + 1
			if sellselection == mergeselection1 then
				sellselection = sellselection + 1
			end
			if sellselection > #player.items then
				sellselection = 1
				if sellselection == mergeselection1 then
					sellselection = 2
				end
			end
		end
		if key == "up" then
			sellselection = sellselection - 1
			if sellselection == mergeselection1 then
				sellselection = sellselection - 1
			end
			if sellselection < 1 then
				sellselection = #player.items
				if sellselection == mergeselection1 then
					sellselection = #player.items - 1
				end
			end
		end
		if key == "return" then
			if mergeselection1 == nil and #player.items > 1 then
				mergeselection1 = sellselection
			else
				if mergeselection2 == nil then
					mergeselection2 = sellselection
					merge(mergeselection1, mergeselection2)
				end
			end
		end
	end
	if gamemode == "shop" then
		if key == "left" then
			if buybutton.selected == true then
				buybutton.selected = false
				mergebutton.selected = true
			elseif sellbutton.selected == true then
				sellbutton.selected = false
				buybutton.selected = true
			elseif mergebutton.selected == true then
				mergebutton.selected = false
				sellbutton.selected = true
			end
		end
		if key == "right" then
			if buybutton.selected == true then
				buybutton.selected = false
				sellbutton.selected = true
			elseif sellbutton.selected == true then
				sellbutton.selected = false
				mergebutton.selected = true
			elseif mergebutton.selected == true then
				mergebutton.selected = false
				buybutton.selected = true
			end
		end
		if key == "return" then
			if buybutton.selected == true then
				gamemode = "buy"
			elseif sellbutton.selected == true then
				sellselection = 1
				gamemode = "sell"
			elseif mergebutton.selected == true then
				sellselection = 1
				gamemode = "merge"
			end
		end
	end
end

function createLevel()
	grid = {}
	for i = 0, 6 do
		grid[i] = {}
		for j = 0, 6 do 
			grid[i][j] = {}
		end
	end
	
	starti = 3
	startj = 3
	grid[starti][startj] = {roomtype = "room", completed = true, current = true, enemies = nil, items = {}}
	local count = 0
	while count < levelparams.size do
		local rand = rng:random(0, 3)
		--checks up
		if rand == 0 and (startj - 1) >= 0 then
			startj = startj - 1
		--checks down
		elseif rand == 1 and (startj + 1) <= 6 then
			startj = startj + 1
		--checks left
		elseif rand == 2 and (starti - 1) >= 0 then
			starti = starti - 1
		--checks right
		elseif rand == 3 and (starti + 1) <= 6 then
			starti = starti + 1
		end
		if grid[starti][startj].roomtype == nil then
			check = true
			count = count + 1
			local rand = rng:random(0, 4)
			grid[starti][startj] = {roomtype = "room", id = rand, blocks = {}, completed = false, current = false, enemies = {}, items = {button = false}}
		end
	end
	starti = 3
	startj = 3
	--find farthest room and call it the boss room
	bossi = 0
	bossj = 0
	maximum = 0
	for i = 0, 6 do
		for j = 0, 6 do
			if grid[i][j].roomtype ~= nil then
				if math.abs(i - starti) + math.abs(j - startj) > maximum then
					maximum = math.abs(i - starti) + math.abs(j- startj)
					bossi = i
					bossj = j
				end
			end
		end
	end
	--create boss
	grid[starti][startj] = {roomtype = "boss", completed = false, enemies = {}, items = {button = false}}
	--table.insert(grid[starti][startj].enemies, {name = "boss", x = 200, y = 150, width = 150, height = 150, health = 25, button = false, air = false, jumps = 3, shots = {}, counter = 0, frozen = false, frozentimer = 0})
	--table.insert(grid[starti][startj].enemies, {name = "boss2", x = 200, y = 150, width = 150, height = 150, health = 25, enemies = {}, xDir = "left", yDir = "up", check = true, counter = 250, enemycount = 3, frozen = false, frozentimer = 0})
	--table.insert(grid[starti][startj].enemies, {name = "boss3", x = 200, y = 150, width = 60, height = 60, health = 25, nextDir = "up", speed = 4, frozen = false, frozentimer = 0})
	--table.insert(grid[starti][startj].enemies, {name = "boss4", x = 200, y = 150, width = 100, height = 100, health = 25, counter = 0, air = false, shots = {}, rush = false, speed = 4, angle = 0, frozen = false, frozentimer = 0})
	table.insert(grid[starti][startj].enemies, {name = "boss5", x = 200, y = 150, width = 150, height = 150, health = 100, counter = 0, shots = {}, speed = .25, frozen = false, frozentimer = 0, nextDir = "left", rush = false})
	--chooose random room and make it the shop room
	local shopcheck = false
	while shopcheck == false do
		local randi = rng:random(0, 6)
		local randj = rng:random(0, 6)
		if grid[randi][randj].roomtype == "room" then
			grid[randi][randj].roomtype = "shop"
			grid[randi][randj].completed = true
			grid[randi][randj].enemies = nil
			grid[randi][randj].items = {}
			grid[randi][randj].id = 0
			table.insert(grid[randi][randj].items, {name = "Shop", x = 300, y = 300, width = 40, height = 40})
			shopcheck = true
		end
	end
	--make the blocks in the rooms
	for i = 0, 6 do
		for j = 0, 6 do
			--the corner room
			if grid[i][j].id == 1 then
				table.insert(grid[i][j].blocks, {x = 20, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 560, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 20, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 560, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
			end
			--the "L" room
			if grid[i][j].id == 2 then
				table.insert(grid[i][j].blocks, {x = 20, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 80, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 140, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 140, y = 160, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 560, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 500, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 160, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 20, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 80, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 140, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 140, y = 330, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 560, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 500, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 330, width = 60, height = 60, color = rng:random(0, 5)})
			end
			--smily face room
			if grid[i][j].id == 3 then
				table.insert(grid[i][j].blocks, {x = 140, y = 155, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 155, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 140, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 200, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 260, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 320, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 380, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 440, y = 270, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 200, y = 330, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 260, y = 330, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 320, y = 330, width = 60, height = 60, color = rng:random(0, 5)})				
				table.insert(grid[i][j].blocks, {x = 380, y = 330, width = 60, height = 60, color = rng:random(0, 5)})				
			end
			--corner edge room
			if grid[i][j].id == 4 then
				table.insert(grid[i][j].blocks, {x = 20, y = 100, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 80, y = 160, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 140, y = 160, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 560, y = 390, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 500, y = 330, width = 60, height = 60, color = rng:random(0, 5)})
				table.insert(grid[i][j].blocks, {x = 440, y = 330, width = 60, height = 60, color = rng:random(0, 5)})
			end
		end
	end
	--make between 0 and 3 enemies per room.
	for i = 0, 6 do
		for j = 0, 6 do
		local rand = rng:random(-1, 2)
			for k = 0, rand do
				if grid[i][j].roomtype == "room" and grid[i][j].enemies ~= nil then
					--create enemies
					local x = rng:random(20, love.graphics.getWidth() - 80)
					local y = rng:random(100, 410)
					local width = 50
					local height = 50
					local rand2 = rng:random(0, 3)
					if rand2 == 0 then
						table.insert(grid[i][j].enemies, {name = "slime", x = x, y = y, width = width, height = height, health = 2, speed = 1, button = false, counter = 0, currentframe = 1, timer = 0, nextdir = "none", facing = "right", frozen = false, frozentimer = 0})
					elseif rand2 == 1 then
						table.insert(grid[i][j].enemies, {name = "zombie", x = x, y = y, width = width, height = height, health = 2, speed = 1, button = false, frozen = false, frozentimer = 0})
					elseif rand2 == 2 then
						table.insert(grid[i][j].enemies, {name = "lasermouth", x = x, y = y, width = width, height = height, health = 5, speed = 1, button = false, counter = 0, nextdir = "right", attackdir = "none", frozen = false, frozentimer = 0})
					else
						table.insert(grid[i][j].enemies, {name = "faker", x = x, y = y, width = 60, height = 60, health = 4, speed = 2, button = false, counter = 0, nextx = x, nexty = y, currentframe = 1, frozen = false, frozentimer = 0})
					end
				end
			end
			if rand == -1 then
				grid[i][j].completed = true
			end
		end
	end
	--grid[starti][startj].enemies = nil
end

function merge(selection1, selection2)
	local item
	local item1
	local item2
	local flag = false
	for i, item in ipairs(player.items) do
		if i == selection1 then
			item1 = item.name
		end
		if i == selection2 then
			item2 = item.name
		end
	end
	if (item1 == "Piggy Bank" and item2 == "Teddy Bear") or
	(item2 == "Piggy Bank" and item1 == "Teddy Bear") then
		item = {name = "Piggy Bear", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 2}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Teddy Bear") or
	(item2 == "Pizza" and item1 == "Teddy Bear") then
		item = {name = "Pizza Bear", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 2}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Toy Robot") or
	(item2 == "Piggy Bank" and item1 == "Toy Robot") then
		item = {name = "Digital Bank", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "Toy Robot") or
	(item2 == "Teddy Bear" and item1 == "Toy Robot") then
		item = {name = "Robo-Bear", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 2}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "Toy Sword") or
	(item2 == "Teddy Bear" and item1 == "Toy Sword") then
		item = {name = "Bad Teddy", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 2}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Toy Sword") or
	(item2 == "Pizza" and item1 == "Toy Sword") then
		item = {name = "Pizza Cutter", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Robot" and item2 == "Toy Sword") or
	(item2 == "Toy Robot" and item1 == "Toy Sword") then
		item = {name = "Robo-Sword", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Toy Sword") or
	(item2 == "Piggy Bank" and item1 == "Toy Sword") then
		item = {name = "Pork Sword", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Toy Robot") or
	(item2 == "Pizza" and item1 == "Toy Robot") then
		item = {name = "Pizza Robot", sell = 1, x = player.x, y = player.y, width = 50, height = 50, count = 3}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Pizza") or
	(item2 == "Piggy Bank" and item1 == "Pizza") then
		item = {name = "Pizza Bank", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "8-Ball") or
	(item2 == "Piggy Bank" and item1 == "8-Ball") then
		item = {name = "8-Ball Pig", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "8-Ball") or
	(item2 == "Teddy Bear" and item1 == "8-Ball") then
		item = {name = "Mystic Bear", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 2}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "8-Ball") or
	(item2 == "Pizza" and item1 == "8-Ball") then
		item = {name = "Mystery Meat", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Robot" and item2 == "8-Ball") or
	(item2 == "Toy Robot" and item1 == "8-Ball") then
		item = {name = "Gamer M8", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "Candy") or
	(item2 == "Teddy Bear" and item1 == "Candy") then
		item = {name = "Candy Bear", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 3}
		flag = true
	end
	if (item1 == "Toy Robot" and item2 == "Candy") or
	(item2 == "Toy Robot" and item1 == "Candy") then
		item = {name = "Candy Mecha", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Candy") or
	(item2 == "Piggy Bank" and item1 == "Candy") then
		item = {name = "Gumball Machine", sell = 1, x = player.x, y = player.y, width = 50, height = 50, count = 3}
		flag = true
	end
	if (item1 == "Toy Sword" and item2 == "Candy") or
	(item2 == "Toy Sword" and item1 == "Candy") then
		item = {name = "Candy Cane Sword", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "8-Ball" and item2 == "Candy") or
	(item2 == "8-Ball" and item1 == "Candy") then
		item = {name = "Mystery Flavor", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Balloon" and item2 == "Candy") or
	(item2 == "Balloon" and item1 == "Candy") then
		item = {name = "Bubble Gum", sell = 1, x = player.x, y = player.y, width = 50, height = 50, count = 3}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Pizza") or
	(item2 == "Doll" and item1 == "Pizza") then
		item = {name = "Pizza Delivery", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Toy Sword") or
	(item2 == "Doll" and item1 == "Toy Sword") then
		item = {name = "Dagger Girl", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Toy Robot") or
	(item2 == "Doll" and item1 == "Toy Robot") then
		item = {name = "The Third Robot", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "8-Ball") or
	(item2 == "Doll" and item1 == "8-Ball") then
		item = {name = "Fortune Teller", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Teddy Bear") or
	(item2 == "Doll" and item1 == "Teddy Bear") then
		item = {name = "Goldilocks", sell = 1, x = player.x, y = player.y, width = 50, height = 50, health = 0}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Candy") or
	(item2 == "Doll" and item1 == "Candy") then
		item = {name = "Candy Girl", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Candy") or
	(item2 == "Pizza" and item1 == "Candy") then
		item = {name = "Pizza Candy", sell = 1, x = player.x, y = player.y, width = 50, height = 50, count = 3}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Stopwatch") or
	(item2 == "Pizza" and item1 == "Stopwatch") then
		item = {name = "Fossilized Pizza", sell = 5, x = player.x, y = player.y, width = 50, height = 50, count = 3}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Piggy Bank") or
	(item2 == "Doll" and item1 == "Piggy Bank") then
		item = {name = "Ms. Swine", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Stopwatch") or
	(item2 == "Doll" and item1 == "Stopwatch") then
		item = {name = "Medusa", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "Stopwatch") or
	(item2 == "Teddy Bear" and item1 == "Stopwatch") then
		item = {name = "Synchronursa", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Sword" and item2 == "Stopwatch") or
	(item2 == "Toy Sword" and item1 == "Stopwatch") then
		item = {name = "Clockstopper", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "8-Ball" and item2 == "Stopwatch") or
	(item2 == "8-Ball" and item1 == "Stopwatch") then
		item = {name = "Strange Clock", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Stopwatch") or
	(item2 == "Piggy Bank" and item1 == "Stopwatch") then
		item = {name = "Business Venture", sell = 1, x = player.x, y = player.y, width = 50, height = 50, money = 0, count = 3, active = false}
		flag = true
	end
	if (item1 == "Toy Robot" and item2 == "Stopwatch") or
	(item2 == "Toy Robot" and item1 == "Stopwatch") then
		item = {name = "Vintage Robot", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Candy" and item2 == "Stopwatch") or
	(item2 == "Candy" and item1 == "Stopwatch") then
		item = {name = "Candy Time!", sell = 1, x = player.x, y = player.y, width = 50, height = 50, count = rng:random(1, 6)}
		flag = true
	end
	if (item1 == "Balloon" and item2 == "Stopwatch") or
	(item2 == "Balloon" and item1 == "Stopwatch") then
		item = {name = "Stopwatch Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Teddy Bear" and item2 == "Balloon") or
	(item2 == "Teddy Bear" and item1 == "Balloon") then
		item = {name = "Bear Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Piggy Bank" and item2 == "Balloon") or
	(item2 == "Piggy Bank" and item1 == "Balloon") then
		item = {name = "Piggy Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Sword" and item2 == "8-Ball") or
	(item2 == "Toy Sword" and item1 == "8-Ball") then
		item = {name = "Magic Blade", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "8-Ball" and item2 == "Balloon") or
	(item2 == "8-Ball" and item1 == "Balloon") then
		item = {name = "8-Ball Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Sword" and item2 == "Balloon") or
	(item2 == "Toy Sword" and item1 == "Balloon") then
		item = {name = "Spiky Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Pizza" and item2 == "Balloon") or
	(item2 == "Pizza" and item1 == "Balloon") then
		item = {name = "Pizza Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Toy Robot" and item2 == "Balloon") or
	(item2 == "Toy Robot" and item1 == "Balloon") then
		item = {name = "Helium Robot", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if (item1 == "Doll" and item2 == "Balloon") or
	(item2 == "Doll" and item1 == "Balloon") then
		item = {name = "Hot Air Balloon", sell = 1, x = player.x, y = player.y, width = 50, height = 50}
		flag = true
	end
	if flag == true then
		checkstats(player.items[selection1], "remove")
		checkstats(player.items[selection2], "remove")
		if selection2 > selection1 then
			checkiffriend(player.items[selection2], "remove")
			checkiffriend(player.items[selection1], "remove")
		else
			checkiffriend(player.items[selection1], "remove")
			checkiffriend(player.items[selection2], "remove")
		end
		if selection2 > selection1 then
			table.remove(player.items, selection2)
			table.remove(player.items, selection1)
		else
			table.remove(player.items, selection1)
			table.remove(player.items, selection2)
		end
		table.insert(player.items, item)
		checkiffriend(item, "insert")
		checkstats(item, "insert")
		mergeselection1 = nil
		mergeselection2 = nil
		if sellselection > #player.items then
			sellselection = #player.items
		end
	end
end

function checkiffriend(item, mode)
	if item.name == "Piggy Bank" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Piggy Bank" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Pizza Bank" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Pizza Bank" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Digital Bank" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Digital Bank" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Teddy Bear" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Teddy Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Piggy Bear" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Piggy Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Pizza Bear" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Pizza Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Robo-Bear" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Robo-Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Bad Teddy" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Bad Teddy" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Toy Robot" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Toy Robot" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Pizza Robot" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Pizza Robot" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Mystic Bear" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Mystic Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "8-Ball Pig" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "8-Ball Pig" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Gamer M8" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Gamer M8" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Gumball Machine" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Gumball Machine" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Candy Bear" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Candy Bear" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Candy Mecha" then
	if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Candy Mecha" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Doll" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Doll" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Pizza Delivery" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Pizza Delivery" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Dagger Girl" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Dagger Girl" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "The Third Robot" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "The Third Robot" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Fortune Teller" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Fortune Teller" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Ms. Swine" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Ms. Swine" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Medusa" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Medusa" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Goldilocks" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Goldilocks" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Candy Girl" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Candy Girl" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Synchronursa" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Synchronursa" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Business Venture" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Business Venture" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Vintage Robot" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Vintage Robot" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Bear Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Bear Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Piggy Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Piggy Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "8-Ball Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "8-Ball Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Stopwatch Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Stopwatch Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Pizza Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Pizza Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Spiky Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Spiky Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Helium Robot" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0, moving = false})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Helium Robot" then
					table.remove(player.friends, i)
				end
			end
		end
	end
	if item.name == "Hot Air Balloon" then
		if mode == "insert" then
			table.insert(player.friends, {name = item.name, x = item.x, y = item.y, width = item.width, height = item.height, facing = "right", currentframe = 1, timer = 0})
		else
			for i, friend in ipairs(player.friends) do
				if friend.name == "Hot Air Balloon" then
					table.remove(player.friends, i)
				end
			end
		end
	end
end

--check stat changes when getting or losing an item
function checkstats(item, mode)
	if item.name == "Toy Sword" then
		if mode == "insert" then
			player.attack = player.attack + .5
		else
			player.attack = player.attack - .5
		end
	end
	if item.name == "Pizza Cutter" then
		if mode == "insert" then
			player.attack = player.attack + 1
		else
			player.attack = player.attack - 1
		end
	end
	if item.name == "Pork Sword" then
		if mode == "insert" then
			player.attack = player.attack + 1
		else
			player.attack = player.attack - 1
		end
	end
	if item.name == "Toy Robot" then
		if mode == "insert" then
			player.defense = player.defense + .25
		else
			player.defense = player.defense - .25
		end
	end
	if item.name == "Pizza Robot" then
		if mode == "insert" then
			player.defense = player.defense + .5
		else
			player.defense = player.defense - .5
		end
	end
	if item.name == "Candy Mecha" then
		if mode == "insert" then
			player.defense = player.defense + .5
			player.speed = player.speed + 1
		else
			player.defense = player.defense - .5
			player.speed = player.speed - 1
		end
	end
	if item.name == "Vintage Robot" then
		if mode == "insert" then
			player.defense = player.defense + 1
			player.speed = player.speed - 1
		else
			player.defense = player.defense - 1
			player.speed = player.speed + 1
		end
	end
	if item.name == "Robo-Sword" then
		if mode == "insert" then
			player.attack = player.attack + 1
			player.defense = player.defense + .5
		else
			player.attack = player.attack - 1
			player.defense = player.defense - .5
		end
	end
	if item.name == "Candy Cane Sword" then
		if mode == "insert" then
			player.attack = player.attack + 1
			player.defense = player.defense + 1
		else
			player.attack = player.attack - 1
			player.defense = player.defense - 1
		end
	end
	if item.name == "Gamer M8" then
		if mode == "insert" then
			player.maxhealth = player.maxhealth + 1
			player.currenthealth = player.currenthealth + 1
		else
			player.maxhealth = player.maxhealth - 1
			if player.currenthealth > player.maxhealth then
				player.currenthealth = player.maxhealth
			end
		end
	end
end

--uses consumable item
function useItem(item)
	if item == "Pizza" then
		player.currenthealth = player.currenthealth + 2
		if player.currenthealth > player.maxhealth then
			player.currenthealth = player.maxhealth
		end
		table.remove(player.items, player.itemselect)
	end
	if item == "Pizza Candy" then
		player.currenthealth = player.currenthealth + 2
		player.items[player.itemselect].count = player.items[player.itemselect].count - 1
		if player.items[player.itemselect].count <= 0 then
			table.remove(player.items, player.itemselect)
		end
	end
	if item == "Mystery Meat" then
		local rand = rng:random(0, 4)
		if rand == 0 then
			player.currenthealth = player.currenthealth + 1
		elseif rand == 1 then
			player.currenthealth = player.currenthealth + 2
		elseif rand == 2 then
			player.currenthealth = player.currenthealth - 1
		elseif rand == 3 then
			player.maxhealth = player.maxhealth + 1
		else
			player.maxhealth = player.maxhealth - 1
		end
		if player.currenthealth > player.maxhealth then
			player.currenthealth = player.maxhealth
		end
		table.remove(player.items, player.itemselect)
	end
	if item == "Gumball Machine" then
		player.quarters = player.quarters - .25
		table.insert(player.items, {name = "Candy", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
		player.items[player.itemselect].count = player.items[player.itemselect].count - 1
		if player.items[player.itemselect].count ~= nil and player.items[player.itemselect].count <= 0 then
			checkiffriend(player.items[player.itemselect], "remove")
			table.remove(player.items, player.itemselect)
		end
	end
	if item == "Business Venture" then
		if player.items[player.itemselect].active == false and player.quarters > 0 then
			player.items[player.itemselect].money = player.quarters
			player.quarters = 0
			player.items[player.itemselect].active = true
		end
	end
	if item == "Mystery Flavor" then
		local rand = rng:random(0, 3)
		if rand == 0 then
			player.currenthealth = player.currenthealth + 1
		elseif rand == 1 then
			player.currenthealth = player.currenthealth - 1
		elseif rand == 2 then
			player.speed = player.speed + 1
		else
			player.speed = player.speed - 1
		end
	end
	if item == "Balloon" then
		player.flight = true
	end
	if item == "Bubble Gum" then
		player.flight = true
		player.items[player.itemselect].count = player.items[player.itemselect] - 1
		if player.items[player.itemselect].count <= 0 then
			table.remove(player.items, player.itemselect)
		end
	end
end

--When all enemies in a room are defeated, this function gets called
function clearRoom()
	if grid[starti][startj].completed == false then
		for i, item in ipairs(player.items) do
			if item.name == "Piggy Bank" then
				local rand = rng:random(0, 1)
				if rand == 1 then
					player.quarters = player.quarters + .25
				end
			end
			if item.name == "Pork Sword" then
				player.quarters = player.quarters + .25
			end
			if item.name == "Digital Bank" then
				local rand = rng:random(0, 2)
				player.quarters = player.quarters + (.25 * rand)
			end
			if item.name == "Pizza Bank" then
				local rand = rng:random(0, 1)
				if rand == 1 then
					table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				end
			end
			if item.name == "Business Venture" then
				if item.active == true then
					item.count = item.count - 1
					if item.count <= 0 then
						local rand = rng:random()
						local rand2 = rng:random(0, 1)
						if rand2 == 0 then
							rand = rand + 1
						end
						player.quarters = player.quarters + (item.money * rand)
						item.active = false
					end
				end
			end
			if item.name == "Pizza Robot" then
				item.count = item.count - 1
				if item.count <= 0 then
					item.count = 3
					table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				end
			end
			if item.name == "Candy Time!" then
				item.count = item.count - 1
				if item.count <= 0 then
					table.insert(player.items, {name = "Candy", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
					item.count = rng:random(1, 6)
				end
			end
			if item.name == "8-Ball Pig" then
				local rand = rng:random(0, 3)
				if rand == 0 then
					player.quarters = player.quarters - .25
				else
					player.quarters = player.quarters + (.25 * rand)
				end
			end
		end
	end
end

--When the player takes damage, this function gets called
function onHitEffects(enemy)
	for i, item in ipairs(player.items) do
		if item.name == "Dagger Girl" then
			enemy.health = enemy.health - (player.attack * 2)
		elseif item.name == "Ms. Swine" then
			player.quarters = player.quarters + .5
		elseif item.name == "Goldilocks" then
			item.health = 1
		elseif item.name == "Pizza Delivery" then
			table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
		elseif item.name == "The Third Robot" then
			player.defense = player.defense + .25
		elseif item.name == "Candy Girl" then
			player.speed = player.speed + .5
		elseif item.name == "Hot Air Balloon" then
			player.flight = true
		elseif item.name == "Medusa" then
			enemy.frozen = true
		elseif item.name == "Fortune Teller" then
			local rand = rng:random(0, 4)
			if rand == 0 then
				player.maxhealth = player.maxhealth + 1
			elseif rand == 1 then
				player.defense = player.defense + .25
			elseif rand == 2 then
				player.speed = player.speed + .5
			elseif rand == 3 then
				player.attack = player.attack + 1
			elseif rand == 4 then
				player.flight = true
			end
		end
	end
end

--When the player hits the enemy with their attack, this function gets called
function attackEffects(enemy)
	for i, item in ipairs(player.items) do
		if item.name == "Clockstopper" then
			local rand = rng:random(0, 1)
			if rand == 0 then
				enemy.frozen = true
			end
		elseif item.name == "Magic Blade" then
			local rand = rng:random(0, 9)
			if rand == 0 then
				local rand2 = rng:random(0, 9)
				if rand2 == 0 then
					player.currenthealth = player.maxhealth
				elseif rand2 == 1 then
					player.speed = player.speed + .25
				elseif rand2 == 2 then
					player.defense = player.defense + .25
				elseif rand2 == 3 then
					player.attack = player.attack + .25
				elseif rand2 == 4 then
					table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				elseif rand2 == 5 then
					table.insert(player.items, {name = "Candy", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				elseif rand2 == 6 then
					table.insert(player.items, {name = "Teddy Bear", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				elseif rand2 == 7 then
					player.quarters = player.quarters + .25
				elseif rand2 == 8 then
					table.insert(player.items, {name = "8-Ball", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				else
					table.insert(player.items, {name = "Toy Sword", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
				end
			end
		end
	end
end

function tryplayermovement(x, y)
	if player.flight == true then
		return false
	end
	if grid[starti][startj].blocks ~= nil then
		for i, block in ipairs(grid[starti][startj].blocks) do
			if y + player.height >= block.y and
			y <= block.y + block.height and
			x <= block.x + block.width and
			x + player.width >= block.x then
				return true
			end
		end
		return false
	else
		return false
	end
end

function trymovement(x, y)
	if grid[starti][startj].blocks ~= nil then
		for i, block in ipairs(grid[starti][startj].blocks) do
			if y + player.height >= block.y and
			y <= block.y + block.height and
			x <= block.x + block.width and
			x + player.width >= block.x then
				return true
			end
		end
		return false
	else
		return false
	end
end

function beardeath(item)
	if item == "Piggy Bear" then
		local rand = rng:random(0, 6)
		if rand == 0 then
			player.quarters = player.quarters + .5
		elseif rand == 1 then
			player.quarters = player.quarters + .75
		elseif rand == 2 then
			player.quarters = player.quarters + 1
		elseif rand == 3 then
			player.quarters = player.quarters + 1.25
		elseif rand == 4 then
			player.quarters = player.quarters + 1.5
		elseif rand == 5 then
			player.quarters = player.quarters + 1.75
		else
			player.quarters = player.quarters + 2
		end
	elseif item == "Pizza Bear" then
		table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
		table.insert(player.items, {name = "Pizza", cost = .5, sell = .25, x = player.x, y = player.y, width = 50, height = 50})
	elseif item == "Robo-Bear" then
		player.defense = player.defense + .5
	elseif item == "Bad Teddy" then
		player.attack = player.attack + 2
	elseif item == "Candy Bear" then
		player.speed = player.speed + 2
	elseif item == "Mystic Bear" then
		local rand = rng:random (0, 1)
		if rand == 0 then
			player.maxhealth = player.maxhealth + 1
		else
			player.maxhealth = player.maxhealth - 1
			if player.currenthealth > player.maxhealth then
				player.currenthealth = player.maxhealth
			end
		end
	end
end

--This is called when the player takes damage
function takedamage(enemy)
	if player.button == false then
		local flag = false
		for i, item in ipairs(player.items) do
			if item.health ~= nil and flag == false then
				item.health = item.health - 1
				if item.health <= 0 then
					beardeath(item.name)
					table.remove(player.items, i)
					checkiffriend(item, "remove")
					checkstats(item, "remove")
				end
				flag = true
			end	
		end
		if enemy.air ~= nil and enemy.air == true then
			flag = true
		end
		if flag == false then
			onHitEffects(enemy)
			if player.flight == true then
				 player.flight = false
			end
			player.currenthealth = player.currenthealth - 1
		end
		player.button = true
	end
end