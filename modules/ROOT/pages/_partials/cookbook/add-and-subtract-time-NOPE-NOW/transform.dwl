%dw 2.0
output application/json
var numberOfDays = 3
---
{
  yesterday: now() - |P1D|,
  theOtherDay: now() - ("P$(numberOfDays)D" as Period),
  a: |2003-10-01| - |P1Y|,
  b: |P1Y| - |2003-10-01|,
  c: |2003-10-01T23:57:59Z| - |P1Y|,
  d: |2003-10-01T23:57:59Z| + |P1Y|,
  e: |2003-10-01T23:57:59| - |P1Y|,
  f: |PT9M| - |23:59:56|,
  g: |23:59:56| + |PT9M|,
  h: |23:59:56-03:00| - |PT9M|,
  u: |23:59:56-03:00| - |22:59:56-03:00|,
  j: |23:59:56-03:00| - |22:59:56-00:00|,
  k: |2003-10-01T23:57:59| - |P2Y9M1D| - |PT57M59S| + |PT2H|,
  l: |23:59:56| - |22:59:56|,
  o: |2003-10-01| - |2002-09-23|,
  p: |2003-10-01T23:57:59Z| - |2002-10-01T23:57:59Z|,
  q: |2003-10-01T23:57:59| - |2002-10-01T23:57:59|
}