def jan
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
    plogram_hand = rand(3)
    jankens = ["グー","チョキ","パー"]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{jankens[player_hand]}を出しました,相手:#{jankens[plogram_hand]}を出しました"
    puts "------------"
    if player_hand == plogram_hand
        puts "あいこで..."
        return 
    elsif (player_hand == 0 && plogram_hand == 1)||(player_hand == 1 && plogram_hand == 2)||(player_hand == 2 && plogram_hand == 0)
        @janken_result = "win"
        hoi
    else 
        @janken_result = "lose"
        hoi
    end
end

def hoi
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"
    my_face = gets.to_i
    pc_face = rand(4)
    direction = ["上","下","右","左"]
    puts "ホイ！"
    puts "------------"
    puts "あなた:#{direction[my_face]},相手:#{direction[pc_face]}"
    if @janken_result = "win" && my_face == pc_face
        puts "あなたの勝ちです！"
    elsif @janken_result = "lose" && my_face == pc_face
        puts "あなたの負けです"
    else
        puts "もう一回！じゃんけんぽん"
        return
    end
end

