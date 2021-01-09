import cpp


// from Macro m
// where m.getName() in ["ntohs", "ntohl", "ntohll"]
// select m, "macros names ntohs, ntohl, or ntohll"

from FunctionCall fc
where fc.getTarget().getName() = "memcpy"
select fc, "call to memcpy"