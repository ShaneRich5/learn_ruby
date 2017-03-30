#write your code here
def ftoc(temp)
    ((temp - 32) / 1.8).ceil
end 

def ctof(temp)
    temp * 1.8 + 32
end