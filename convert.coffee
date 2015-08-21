# convert.coffee

log = (args...) -> console.log ' CNVRT:', args...

fs = require 'fs-plus'

txt = fs.readFileSync '/root/Downloads/css3-cheat-sheet.txt', 'utf8'

lines = txt.split '\n'

pages = []
lnum = 0
for line in lines
  if /^Page/.exec line 
    pages.push (page = [])
    continue
  page.push line
  
directives = []

doCol = (pageNum, pos1, pos2, pos3) ->
  rgtstr = ''
  for line in pages[pageNum]
    lft = line[pos1..pos2-1].replace /\W/g, ''
    if /^[A-Z]+$/.test lft then continue
    lft = lft.toLowerCase()
    
    rgt = line[pos2..pos3].replace /[^\w|]/g, ''
    rgt = rgt.toLowerCase()
    if /^[A-Z]+$/.test rgt then continue
      
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
        
doCol 0,   0,  24,  52
doCol 0,  53,  79, 110
doCol 0, 111, 134, 999

doCol 1,   0,  23,  55
doCol 1,  55,  80, 111
doCol 1, 112, 139, 999

doCol 2,   0,  27,  59
doCol 2,  60,  88, 118
doCol 2, 119, 145, 999

doCol 3,   0,  23,  999

# line = ''
# for d in directives
#   line += "'" + d[0] + "', "
#   if line.length > 80
#     fs.appendFileSync 'conv-out.txt', line + '\n' 
#     line = ''
# fs.appendFileSync 'conv-out.txt', line + '\n' 
  
line = ''
for d in directives when d[1].length
  values = d[1].join "', '"
  line += d[0] + ":['" + values + "'], "
  if line.length > 60
    fs.appendFileSync 'conv-out.txt', line + '\n' 
    line = ''
fs.appendFileSync 'conv-out.txt', line + '\n' 
  