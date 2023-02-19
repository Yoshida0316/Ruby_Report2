puts "じゃんけんぽん！"
puts "0→グー,1→チョキ,2→パー"

def janken
player = gets.to_i
com = rand(3)
jankens = ["グー","チョキ","パー"]
puts "プレイヤー:#{jankens[player]},コンピュータ:#{jankens[com]}"

if player == com
 puts "あいこ"
 puts "0→グー,1→チョキ,2→パー"
 return true
elsif(player == 0 && com == 1)||(player == 1 && com == 2)||(player == 2 && com == 0)
 puts "じゃんけんに勝ちました！"
 $rezult = "win"
 battle
else
 puts "じゃんけんに負けました。"
 $rezult = "lose"
 battle
end
end


def battle
 puts "あっち向いてホイ！"
 puts "0→左,1→右,2→上,3→下"
 player_finger = gets.to_i
 com_finger = rand(4)
 fingers = ["左","右","上","下"]
 puts "プレイヤー:#{fingers[player_finger]},コンピュータ:#{fingers[com_finger]}"
 if (player_finger == com_finger)&&($rezult == "win")
 puts "プレイヤーの勝ちです！"
 return false
 elsif (player_finger == com_finger)&&($rezult == "lose")
 puts "コンピュータの勝ちです！"
 return false
 else
 puts "もう一回じゃんけん"
 return true
 end
end

next_battle = true

while next_battle
 next_battle = janken
end

