# convert.coffee

log = (args...) -> console.log ' CNVRT:', args...

fs = require 'fs-plus'

txt = fs.readFileSync '/root/dev/apps/teacss/css3-cheat-sheet.txt', 'utf8'

lines = txt.split '\n'

pages = []
lnum = 0
for line in lines
  if /^~~~/.exec line 
    pages.push (page = [])
    continue
  page.push line
  
directives = []

doCol = (pageNum, pos1, pos2, pos3) ->
  rgtstr = ''
  for line in pages[pageNum]
    lft = line[pos1-1..pos2-2].toLowerCase().replace /\W/g, ''
    rgt = line[pos2-1..pos3-1].toLowerCase().replace /[^\w|]/g, ''
      
    if /^[a-z]/.test lft
      if lastLft
        rgts = rgtstr.split '|'
        rgts2 = []
        for rgt1 in rgts when rgt1
          rgts2.push rgt1
        directives.push [lastLft, rgts2]
      lastLft = lft
      rgtstr = ''
      
    if lastLft
      if rgt is 'none'
        rgtstr += '|' + rgt + '|'
        
      else if /\|/.test rgt 
        rgtstr += rgt
  if lastLft
    rgts = rgtstr.split '|'
    rgts2 = []
    for rgt1 in rgts when rgt1
      rgts2.push rgt1
    directives.push [lastLft, rgts2]
        
doCol 0, 1, 25, 53
doCol 0, 54, 81, 111
doCol 0, 112, 135, 999

doCol 1,   1,  25,  53
doCol 1,  54,  80, 111
doCol 1, 112, 135, 999

doCol 2,    1,    24, 56
doCol 2,   57,    81, 112
doCol 2,  113,  140, 999

doCol 3,   1,    28,  60
doCol 3,    61,    89, 119
doCol 3,    120,    147, 999

doCol 4,   1,    28,  60
doCol 4,    61,   89 , 119
doCol 4,   120 , 146   , 999

doCol 5, 1, 27,  60
doCol 5, 61, 89, 119
doCol 5, 120 ,146, 999

doCol 6,   1,  24,  999

directives.sort()
line = ''

# for d in directives
#   line += "'" + d[0] + "', "
#   if line.length > 80
#     fs.appendFileSync 'conv-out.txt', line + '\n' 
#     line = ''
# fs.appendFileSync 'conv-out.txt', line + '\n' 
  
for d in directives when d[1].length
  d[1].sort()
  values = d[1].join "', '"
  line += d[0] + ":['" + values + "'], "
  if line.length > 60
    fs.appendFileSync 'conv-out.txt', line + '\n' 
    line = ''
fs.appendFileSync 'conv-out.txt', line + '\n' 
  