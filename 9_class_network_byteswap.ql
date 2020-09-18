import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    
    exists(MacroInvocation mInvoc |
        mInvoc.getMacro().getName().regexpMatch("ntoh(s|l|ll)") and
        this = mInvoc.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n, "Network byte swap" 
