inst_table = {
    "ADD"   : "000",
    "SUB"   : "001",
    "LOAD"  : "010",
    "STORE" : "011",
    "JUMP"  : "1"
}

space_table = {       #   dec   |        bin        |  hex
    "code"   : 128,   #   0:127 | 00000000:01111111 | 00:7f
    "video"  :  80,   # 128:207 | 10000000:11001111 | 80:cf
    "unused" :  16,   # 208:223 | 11010000:11011111 | d0:ef
    "data"   :  32    # 224:255 | 11100000:11111111 | f0:ff
}

fields_table = {
    "opcode"  : 3,
    "address" : 5,
    "jump"    : 7
}
    