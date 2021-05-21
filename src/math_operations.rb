#!/usr/bin/ruby -w

bit_a = 0b00001111   # In decimal, bit_a = 15
puts bit_a
bit_a = bit_a << 2 # In binary, bit_a = 0b00111100. In decimal, bit_a = 60.
puts bit_a
bit_a = bit_a >> 1  # In binary, bit_a = 0b00011110. In decimal, bit_a = 30
puts bit_a
bit_a = bit_a & 0b11 # In binary, bit_a = 0b00000010. In decimal, bit_a = 2
puts bit_a
bit_a = bit_a | 0b11 # In binary, bit_a = ob00000011. In decimal, bit_a = 3
puts bit_a
