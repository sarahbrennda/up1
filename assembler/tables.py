from collections import OrderedDict

inst_table = {
    "ADD"   : "0101",
    "LOAD"  : "0100",
    "STORE" : "0011",
    "JUMP"   : "1"
}

space_table = OrderedDict()
space_table["code"]   = 128
space_table["unused"] = 112
space_table["data"]   =  16
