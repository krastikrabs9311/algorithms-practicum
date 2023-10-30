import heapq
from collections import Counter


class HuffmanNode:
    def __init__(self, symbol, freq):
        self.symbol = symbol
        self.freq = freq
        self.left = None
        self.right = None

    def __lt__(self, other):
        return self.freq < other.freq


def build_huffman_tree(string):
    freq_count = Counter(string)
    priority_queue = []
    
    for symbol, freq in freq_count.items():
        node = HuffmanNode(symbol, freq)
        heapq.heappush(priority_queue, node)
    
    while len(priority_queue) > 1:
        left_node = heapq.heappop(priority_queue)
        right_node = heapq.heappop(priority_queue)
        
        parent_freq = left_node.freq + right_node.freq
        parent_node = HuffmanNode(None, parent_freq)
        parent_node.left = left_node
        parent_node.right = right_node
        
        heapq.heappush(priority_queue, parent_node)
    
    return priority_queue[0]


def build_code_table(node, code, code_table):
    if node.symbol is not None:
        code_table[node.symbol] = code
    else:
        build_code_table(node.left, code + '0', code_table)
        build_code_table(node.right, code + '1', code_table)


def huffman_encode(string):
    root = build_huffman_tree(string)
    code_table = {}
    build_code_table(root, '', code_table)

    encoded_string = ''
    for symbol in string:
        encoded_string += code_table[symbol]

    print(f"Уникальные буквы: {len(code_table)}, Размер: {len(encoded_string)} бит")
    for symbol, code in code_table.items():
        print(f"'{symbol}': {code}")
    print(encoded_string)

string = "Errare humanum est."
huffman_encode(string)

