# foo(1).
# foo(2).
# foo(3).
#
# ?- foo(X).
# X = 1;
# X = 2;
# X = 3.
#

def foo():
    print("Before 1")
    yield 1
    print("Before 2")
    yield 2
    print("Before 3")
    yield 3
    print("After 3")

def bar():
    value = 0
    while value < 5:
        yield value
        value += 1
        
def nats():
    value = 0
    while True:
        yield value
        value += 1
        
