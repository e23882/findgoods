import sys
import find_momo
import find_pchome
import find_yahoo
def productSearch(main):
    str(main)
    find_momo.find(main)
    find_pchome.find(main)
    find_yahoo.find(main)
    
if __name__ == "__main__":
    print("ya")
    print(sys.argv[0])
    productSearch(sys.argv[1])



