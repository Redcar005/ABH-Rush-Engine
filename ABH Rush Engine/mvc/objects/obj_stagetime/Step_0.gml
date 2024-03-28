if count
{
    steps += 1
    if steps >= room_speed
    {    
        steps = 0
        seconds += 1
    }
    if seconds >= 60
    {
        seconds = 0
        minutes += 1
    }
    if minutes >= 10
    {
        minutes = 0
    }
}
step_string = string(steps)    
sec_string = string(seconds)
min_string = string(minutes)

//concatenating each string

if steps < 10
step_string = "0" + step_string

if seconds < 10
sec_string = "0" + sec_string

sec_string = sec_string + "."

min_string = min_string + ":"

time_string = min_string + sec_string + step_string //string_insert(string_insert(step_string,sec_string,4),min_string,3)

