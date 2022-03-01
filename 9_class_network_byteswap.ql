
import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation mi |
        mi.getExpr() = this and
        mi.getMacroName() in ["ntohll", "ntohs", "ntohl"]    
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"