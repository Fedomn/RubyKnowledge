def hello(name='Ruby')
  puts "Hello, #{name}"
end

hello
hello('World')
# -----------------------------

def foo(*args)
  args
end

print foo(1, 2, 3)
puts
# -----------------------------

def abc(a, *b, c)
  [a, b, c]
end

print abc(1, 2, 3, 4, 5)
puts
# -----------------------------

def area(x: 0, y: 0, z: 0, **args)
  [x, y, z, args]
end

print area(x: 2, y: 3)
puts
# -----------------------------

def bar(arg1, arg2)
  [arg1, arg2]
end

print bar(100, a: 1, b: 2)
