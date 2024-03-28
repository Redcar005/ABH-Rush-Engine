var rank = instance_create(x + 347, y + 208,obj_result_rank)

if global.score_made < 35000
    rank.image_index = 1
if global.score_made < 25000
    rank.image_index = 2
if global.score_made < 15000
    rank.image_index = 3
if global.score_made < 5000
    rank.image_index = 4
    
alarm[4] = 180

