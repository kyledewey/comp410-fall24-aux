# Java equivalent:
#
# public class IntegerLiteral {
#   public int value;
#   public IntegerLiteral(int v) {
#     this.value = v;
#   }
# }
#
class IntegerLiteral:
    def __init__(self, v):
        self.value = v

class Plus:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class Multiply:
    def __init__(self, left, right):
        self.left = left
        self.right = right

class UnaryMinus:
    def __init__(self, child):
        self.child = child

# takes an AST node
# returns whatever AST node evaluates to
# (an integer)
def evaluate(node):
    if isinstance(node, IntegerLiteral):
        return node.value
    elif isinstance(node, Plus):
        l = evaluate(node.left)
        r = evaluate(node.right)
        return l + r
        #return evaluate(node.left) + evaluate(node.right)
    elif isinstance(node, Multiply):
        return evaluate(node.left) * evaluate(node.right)
    elif isinstance(node, UnaryMinus):
        return -evaluate(node.child)
