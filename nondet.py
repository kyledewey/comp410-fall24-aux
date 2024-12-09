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
        
def printAllMyNumber():
    for x in myNumber():
        print(x)

def printPairsMyNumber():
    for a in myNumber():
        for b in myNumber():
            print(a)
            print(b)
            
def myNumber():
    yield 0
    yield 1
    yield 2

def makePair():
    for a in myNumber():
        for b in myNumber():
            yield (a, b)

class And:
    def __init__(self, left, right):
        self.left = left
        self.right = right

    def __str__(self):
        return "and({}, {})".format(str(self.left),
                                    str(self.right))

# exp ::= true | false | and(exp, exp)
def exp():
    yield True
    yield False
    for e1 in exp():
        for e2 in exp():
            yield And(e1, e2)
