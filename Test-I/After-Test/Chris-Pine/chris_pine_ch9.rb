#Old Roman Numberals
I = 1
V = 5 
X = 10 
L = 50
C = 100
D =500
M = 1000

puts "Enter a number between 1 and 3000: "
years = gets.chomp.to_i

M_years = (years / M
D_years = (years % M) / D
C_years = (years % D) / C
L_years = (years % C) / L
X_years = (years % L) / X
V_years = (years % X) / V
I_years = (years % V) 

puts "Here is the Old Style Roman Numeral: "
roman = ("M" * M_years) + ("D" * D_years) + ("C" * C_years) + ("L" * L_years) + ("X" * X_years) + ("V" * V_years) + ("I" * I_years)
puts roman

#New Roman Numerals

