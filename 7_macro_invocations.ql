import cpp

from MacroInvocation mInvoc

where mInvoc.getMacro().getName().regexpMatch("ntoh(s|l|ll)")

select mInvoc