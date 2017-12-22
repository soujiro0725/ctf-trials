# chr(0x41) = "A"
# 0x41 = hex(65)
# type(int(hex(65), 16)) = int
# a=chr(int(hex(65), 16))*8
# a=chr(65)*8

# for i in range(65, 65 + 26):
#     print chr(i)*8

# a=""
# for i in range(65, 65 + 26):
#     a+=chr(i)*8
# print a

for i in range(65, 65 + 26):print chr(i)*8
