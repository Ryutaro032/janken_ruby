repeat = false
def janken 
    puts "じゃんけん..."
    puts "0[グー]1[チョキ]2[パー]"
    my_number = gets.to_i
    enemy_number = rand(3)

    puts "ホイ！"
    puts "-------------------"

    janken = ["グー","チョキ","パー"]
    puts "あなたは#{janken[my_number]}を出しました"
    puts "あいては#{janken[enemy_number]}を出しました"

    if my_number == enemy_number
        puts "あいこで..."
        repeat = false
        
    elsif win = (my_number == 0 && enemy_number == 1)||(my_number == 1 && enemy_number == 2)||(my_number == 2 && enemy_number == 0)
        if win
            player_win()
        end
    else
        player_lose()
    end
end

def player_win
    puts "あなたが指をさしてください"
    puts "あっち向いて..."
    puts "0[上]1[下]2[右]3[左]"

    my_number = gets.to_i
    enemy_number = rand(4)

    puts "ホイ！"
    puts "-------------------"

    direction = ["上","下","右","左"]
    puts "あなたは#{direction[my_number]}を出しました"
    puts "あいては#{direction[enemy_number]}を出しました"

    if my_number != enemy_number
        repeat = false
        
    elsif my_number == enemy_number
        puts "あなたの勝ちです"
        repeat = true
        
    end
end

def player_lose
        puts "首を振る方向を決めてください"
    puts "あっち向いて..."
    puts "0[上]1[下]2[右]3[左]"

    my_number = gets.to_i
    enemy_number = rand(4)

    puts "ホイ！"
    puts "-------------------"

    direction = ["上","下","右","左"]
    puts "あなたは#{direction[my_number]}を出しました"
    puts "あいては#{direction[enemy_number]}を出しました"

    if my_number != enemy_number
        repeat = false
        
    elsif my_number == enemy_number
        puts "あなたの負けです"
        repeat = true
        
    end
end

if repeat == false
    while
        janken == repeat
    end
elsif repeat == true
    janken == repeat
    return
end