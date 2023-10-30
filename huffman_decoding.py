def huffman_decode():
symbols_count, encoded_size = map(int, input().split())
codes = {}
for _ in range(symbols_count):
    symbol, code = input().split(': ')
    codes[code] = symbol

encoded_string = input()
decoded_string = ''
temp_string = ''

for char in encoded_string:
    temp_string += char
    if temp_string in codes:
        decoded_string += codes[temp_string]
        temp_string = ''

print(decoded_string)