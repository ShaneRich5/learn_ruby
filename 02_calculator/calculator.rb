#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)
    total = 0
    arr.each{ |num|
        total += num
    }
    total
end

def multiply(*args)
    result = 1
    args.each{ |num| result *= num }
    result
end