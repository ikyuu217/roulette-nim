from times import getTime, toUnix
from random import initRand, shuffle

proc roulette(args: seq[string]) =
  var names = args
  var r = initRand(getTime().toUnix())
  r.shuffle(names)

  for i, name in names:
    echo i+1, ": " , name

when isMainModule:
  import cligen
  dispatch(roulette)