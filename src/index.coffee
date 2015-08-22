
log = (args...) -> console.log ' TCSS:', args...

directives = [
  'cue', 'fit', 'top', 'page', 'font', 'crop', 'icon', 'mark', 'size', 'rest', 'left', 
  'clip', 'marks', 'float', 'right', 'color', 'width', 'clear', 'pause', 'speak', 'border', 
  'margin', 'height', 'cursor', 'bottom', 'nav-up', 'target', 'quotes', 'resize', 'orphans', 
  'move-to', 'content', 'display', 'z-index', 'hyphens', 'outline', 'opacity', 'windows', 
  'columns', 'display', 'padding', 'box-flex', 'nav-left', 'position', 'tab-side', 
  'nav-down', 'phonemes', 'overflow', 'rotation', 'box-pack', 'box-lines', 'font-size', 
  'min-width', 'box-align', 'nav-index', 'nav-right', 'ruby-span', 'max-width', 'cue-after', 
  'word-wrap', 'text-wrap', 'transform', 'direction', 'grid-rows', 'animation', 'transition', 
  'background', 'border-top', 'appearance', 'ruby-align', 'box-shadow', 'max-height', 
  'min-height', 'overflow-x', 'overflow-y', 'target-new', 'string-set', 'list-style', 
  'voice-rate', 'rest-after', 'mark-after', 'text-align', 'cue-before', 'box-sizing', 
  'box-orient', 'font-style', 'column-gap', 'word-break', 'margin-top', 'page-policy', 
  'padding-top', 'column-fill', 'column-rule', 'font-weight', 'column-span', 'text-indent', 
  'text-shadow', 'font-family', 'perspective', 'white-space', 'line-height', 'empty-cells', 
  'text-height', 'mark-before', 'pause-after', 'rest-before', 'border-left', 'target-name', 
  'voice-pitch', 'margin-left', 'column-count', 'border-right', 'text-justify', 'marquee-loop', 
  'text-replace', 'float-offset', 'border-width', 'caption-side', 'fit-position', 'table-layout', 
  'border-color', 'border-break', 'unicode-bidi', 'text-outline', 'border-style', 'pause-before', 
  'word-spacing', 'border-image', 'column-width', 'font-variant', 'margin-right', 'voice-family', 
  'padding-left', 'font-stretch', 'grid-columns', 'voice-stress', 'voice-volume', 'border-bottom', 
  'margin-bottom', 'marker-offset', 'padding-right', 'border-length', 'marquee-style', 
  'line-stacking', 'counter-reset', 'marquee-speed', 'voice-balance', 'ruby-overhang', 
  'text-emphasis', 'ruby-position', 'box-direction', 'border-radius', 'outline-width', 
  'outline-color', 'outline-style', 'animation-name', 'box-flex-group', 'padding-bottom', 
  'rotation-point', 'baseline-shift', 'bookmark-level', 'voice-duration', 'border-spacing', 
  'text-transform', 'overflow-style', 'vertical-align', 'bookmark-label', 'outline-offset', 
  'letter-spacing', 'text-align-last', 'border-collapse', 'hyphenate-after', 'hyphenate-lines', 
  'text-decoration', 'border-collapse', 'background-clip', 'bookmark-target', 'transform-style', 
  'animation-delay', 'list-style-type', 'background-size', 'target-position', 'border-top-width', 
  'transition-delay', 'font-size-adjust', 'background-break', 'alignment-adjust', 'inline-box-align', 
  'hyphenate-before', 'background-color', 'punctuation-trim', 'list-style-image', 'background-image', 
  'transform-origin', 'border-top-color', 'image-resolution', 'border-top-style', 'page-break-after', 
  'background-origin', 'image-orientation', 'background-repeat', 'voice-pitch-range', 
  'border-left-color', 'border-left-style', 'border-left-width', 'counter-increment', 
  'dominant-baseline', 'page-break-inside', 'drop-initial-size', 'page-break-before', 
  'marquee-direction', 'column-rule-color', 'column-rule-width', 'column-rule-style', 
  'marquee-play-count', 'perspective-origin', 'line-stacking-ruby', 'border-right-color', 
  'border-right-width', 'drop-initial-value', 'animation-duration', 'alignment-baseline', 
  'border-right-style', 'hyphenate-resource', 'animation-direction', 'line-stacking-shift', 
  'list-style-position', 'border-bottom-color', 'transition-duration', 'background-position', 
  'hyphenate-character', 'hanging-punctuation', 'border-bottom-width', 'border-bottom-style', 
  'transition-property', 'backface-visibility', 'white-space-collapse', 'animation-play-state', 
  'background-attachment', 'border-top-left-radius', 'line-stacking-strategy', 'border-top-right-radius', 
  'drop-initial-after-align', 'animation-timing-function', 'drop-initial-before-align', 
  'drop-initial-after-adjust', 'animation-iteration-count', 'border-bottom-left-radius', 
  'drop-initial-before-adjust', 'transition-timing-function', 'border-bottom-right-radius'
]

directiveValues = {
  fit:['fill', 'meet', 'slice', 'hidden'], font:['icon', 'menu', 'caption', 'status-bar', 'message-box', 'small-caption'], 
  icon:['auto', 'inherit'], size:['auto', 'portrait', 'landscape'], 
  marks:['crop', 'none', 'cross'], float:['left', 'none', 'right'], 
  clear:['left', 'both', 'none', 'right'], speak:['none', 'normal', 'digits', 'inherit', 'spell-out', 'no-punctuation', 'literal-punctuation'], 
  margin:['margin-top', 'margin-left', 'margin-right', 'margin-bottom'], 
  cursor:['auto', 'help', 'wait', 'text', 'move', 'default', 'pointer', 'e-resize', 'n-resize', 'w-resize', 's-resize', 'ne-resize', 'se-resize', 'crosshair', 'nw-resize', 'sw-resize'], 
  navup:['auto', 'root', 'inheritcurrent'], quotes:['none'], resize:['none', 'both', 'inherit', 'vertical', 'horizontal'], 
  moveto:['here', 'normal'], content:['none', 'normal', 'inhibit'], 
  display:['none', 'normal', 'list-item'], hyphens:['none', 'auto', 'manual'], 
  display:['none', 'ruby', 'block', 'table', 'run-in', 'inline', 'compact', 'list-item', 'table-row', 'ruby-text', 'ruby-base', 'table-cell', 'inline-table', 'table-column', 'inline-block', 'table-caption', 'ruby-base-group', 'ruby-text-group', 'table-row-group', 'table-column-group', 'table-header-group', 'table-footer-group'], 
  navleft:['auto', 'root', 'inheritcurrent'], position:['static', 'relative', 'absolute'], 
  tabside:['top', 'left', 'right', 'bottom'], navdown:['auto', 'root', 'inheritcurrent'], 
  overflow:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content', 'overflow-x', 'overflow-y'], 
  boxpack:['end', 'start', 'center', 'justify'], boxlines:['single', 'multiple'], 
  fontsize:['small', 'large', 'medium', 'larger', 'x-small', 'x-large', 'smaller', 'inherit', 'xx-small', 'xx-large'], 
  minwidth:['none', 'inherit'], boxalign:['end', 'start', 'center'], 
  navindex:['auto', 'inherit'], navright:['auto', 'root', 'inheritcurrent'], 
  rubyspan:['none', 'attrx'], maxwidth:['none'], cueafter:['soft', 'loud', 'none', 'x-soft', 'medium', 'x-loud', 'inherit', 'urisilent'], 
  wordwrap:['normal', 'break-word'], textwrap:['none', 'normal', 'suppress', 'unrestricted'], 
  transform:['none', 'skew', 'skewy', 'skewx', 'scale', 'rotate', 'scalez', 'scaley', 'matrix', 'scalex', 'rotatey', 'scale3d', 'rotatez', 'rotatex', 'rotate3d', 'matrix3d', 'translatez', 'translatey', 'translatex', 'translate3d', 'perspective'], 
  direction:['ltr', 'rtl', 'inherit'], gridrows:['none', 'inherit'], 
  appearance:['tab', 'menu', 'icon', 'field', 'range', 'normal', 'window', 'button', 'dialog', 'tooltip', 'menubar', 'desktop', 'inherit', 'checkbox', 'password', 'document', 'menu-item', 'list-menu', 'hyperlink', 'combo-box', 'signa-ture', 'work-space', 'pop-up-menu', 'radio-group', 'push-button', 'outline-tree', 'radio-button', 'pull-down-menu', 'checkbox-group'], 
  rubyalign:['end', 'auto', 'left', 'start', 'right', 'center', 'line-edge', 'distribute-space', 'distribute-letter'], 
  boxshadow:['none'], maxheight:['none'], minheight:['none', 'inherit'], 
  overflowx:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content'], 
  overflowy:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content'], 
  targetnew:['tab', 'none', 'window'], liststyle:['list-style-type', 'list-style-image', 'list-style-position'], 
  voicerate:['slow', 'fast', 'x-slow', 'medium', 'x-fast', 'inherit'], 
  restafter:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  textalign:['end', 'left', 'start', 'right', 'center', 'justify'], 
  cuebefore:['soft', 'loud', 'none', 'x-soft', 'medium', 'x-loud', 'inherit', 'urisilent'], 
  boxsizing:['border-box', 'margin-box', 'content-box', 'padding-box'], 
  boxorient:['vertical', 'horizontal', 'block-axis', 'inline-axis'], 
  fontstyle:['normal', 'italic', 'oblique', 'inherit'], wordbreak:['loose', 'normal', 'keep-all', 'break-all', 'break-strict'], 
  pagepolicy:['last', 'start', 'first'], columnfill:['auto', 'balance'], 
  fontweight:['300', '800', '700', '600', '100', '200', '500', '400', 'bold', 'bolder', 'normal', 'lighter'], 
  columnspan:['1', 'all'], textshadow:['none'], perspective:['none'], 
  whitespace:['pre', 'normal', 'nowrap', 'pre-wrap', 'pre-line'], 
  emptycells:['show', 'hide'], textheight:['auto', 'max-size', 'font-size', 'text-size'], 
  pauseafter:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  restbefore:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  targetname:['new', 'root', 'modal', 'parent', 'current'], voicepitch:['low', 'high', 'x-low', 'medium', 'x-high', 'inherit'], 
  textjustify:['auto', 'kashida', 'tibetan', 'inter-word', 'distribute', 'inter-cluster', 'inter-ideograph'], 
  textreplace:['none'], borderwidth:['thin', 'thick', 'medium'], 
  captionside:['top', 'left', 'right', 'bottom'], fitposition:['top', 'left', 'right', 'center', 'bottom'], 
  tablelayout:['auto', 'fixed'], unicodebidi:['embed', 'normal', 'bidi-override'], 
  textoutline:['none'], borderstyle:['none', 'solid', 'ridge', 'inset', 'hidden', 'dotted', 'dashed', 'double', 'groove'], 
  pausebefore:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  borderimage:['none', 'round', 'repeat', 'stretch'], fontvariant:['normal', 'inherit', 'small-caps'], 
  voicefamily:['inherit', 'specific-voice', 'agegeneric-voicenumber'], 
  fontstretch:['wider', 'normal', 'inherit', 'narrower', 'expanded', 'condensed', 'semi-expanded', 'extra-expanded', 'ultra-expanded', 'semi-condensed', 'ultra-condensed', 'extra-condensed'], 
  gridcolumns:['none', 'inherit'], voicestress:['none', 'strong', 'reduced', 'inherit', 'moderate'], 
  voicevolume:['soft', 'loud', 'silent', 'x-soft', 'medium', 'x-loud', 'inherit'], 
  marqueestyle:['slide', 'scroll', 'alternate'], counterreset:['none'], 
  marqueespeed:['slow', 'fast', 'normal'], voicebalance:['left', 'right', 'center', 'inherit', 'leftwards', 'rightwards'], 
  rubyoverhang:['end', 'auto', 'none', 'start'], textemphasis:['dot', 'none', 'disc', 'after', 'accent', 'circle', 'before'], 
  rubyposition:['after', 'right', 'before', 'inline'], boxdirection:['normal', 'reverse'], 
  outlinewidth:['thin', 'thick', 'medium'], outlinestyle:['none', 'solid', 'ridge', 'inset', 'dotted', 'dashed', 'double', 'groove', 'outset'], 
  animationname:['none'], baselineshift:['sub', 'super', 'baseline'], 
  bookmarklevel:['none'], texttransform:['none', 'uppercase', 'lowercase', 'capitalize'], 
  overflowstyle:['auto', 'marquee-line', 'marquee-block'], verticalalign:['sub', 'top', 'super', 'middle', 'bottom', 'baseline', 'text-top', 'text-bottom'], 
  textalignlast:['end', 'left', 'start', 'right', 'center', 'justify'], 
  bordercollapse:['collapse', 'separate'], textdecoration:['none', 'blink', 'overline', 'underline', 'line-through'], 
  bordercollapse:['collapse', 'separate'], backgroundclip:['no-clip', 'border-box', 'padding-box', 'content-box'], 
  transformstyle:['flat', 'preserve-3d'], liststyletype:['box', 'none', 'disc', 'check', 'square', 'hebrew', 'circle', 'hyphen', 'diamond', 'decimal', 'katakana', 'hiragana', 'armenian', 'asterisks', 'footnotes', 'geor-gian', 'lower-latin', 'lower-alpha', 'lower-greek', 'upper-alpha', 'upper-roman', 'upper-latin', 'lower-roman', 'katakana-iroha', 'hira-gana-iroha', 'cjk-ideographic', 'decimal-leading-zero'], 
  backgroundsize:['auto', 'cover', 'contain'], targetposition:['above', 'front', 'behind'], 
  bordertopwidth:['thin', 'thick', 'medium'], fontsizeadjust:['none', 'inherit'], 
  backgroundbreak:['each-box', 'continuous', 'bounding-box'], alignmentadjust:['auto', 'middle', 'hanging', 'central', 'baseline', 'after-edge', 'alphabetic', 'before-edge', 'ideo-graphic', 'text-after-edge', 'text-before-edge'], 
  inlineboxalign:['last', 'initial'], punctuationtrim:['end', 'none', 'start', 'adjacent'], 
  liststyleimage:['none'], backgroundimage:['none'], transformorigin:['top', 'left', 'right', 'center', 'bottom'], 
  imageresolution:['auto', 'normal'], pagebreakafter:['auto', 'left', 'avoid', 'always'], 
  backgroundorigin:['border-box', 'padding-box'], backgroundrepeat:['repeat', 'repeat-x', 'repeat-y', 'no-repeat'], 
  voicepitchrange:['low', 'high', 'x-low', 'medium', 'x-high', 'inherit'], 
  borderleftwidth:['thin', 'thick', 'medium'], counterincrement:['none'], 
  dominantbaseline:['auto', 'middle', 'hanging', 'central', 'no-change', 'reset-size', 'use-script', 'alpha-betic', 'ideo-graphic', 'mathematical', 'text-after-edge', 'text-before-edge'], 
  pagebreakinside:['auto', 'avoid'], pagebreakbefore:['auto', 'left', 'avoid', 'always'], 
  marqueedirection:['forward', 'reverse'], columnrulewidth:['thin', 'thick', 'medium'], 
  perspectiveorigin:['top', 'top', 'left', 'left', 'right', 'center', 'bottom', 'length', 'center', 'center', 'center', 'length', 'percentage', 'bottomlength', 'rightpercentage'], 
  linestackingruby:['exclude-ruby', 'include-ruby'], borderrightwidth:['thin', 'thick', 'medium'], 
  alignmentbaseline:['middle', 'central', 'hanging', 'baseline', 'after-edge', 'use-script', 'alphabetic', 'ideographic', 'before-edge', 'mathematical', 'text-after-edge', 'text-before-edge'], 
  hyphenateresource:['none'], animationdirection:['normal', 'alternate'], 
  linestackingshift:['consider-shifts', 'disregard-shifts'], liststyleposition:['inside', 'outside'], 
  backgroundposition:['top', 'right', 'center', 'bottomleft', 'bottom-left', 'bottom-right', 'bottom-center'], 
  hangingpunctuation:['end', 'none', 'start', 'end-edge'], borderbottomwidth:['thin', 'thick', 'medium'], 
  transitionproperty:['all', 'none'], backfacevisibility:['hidden', 'visible'], 
  whitespacecollapse:['discard', 'preserve', 'collapse', 'pre-serve-breaks'], 
  animationplaystate:['paused', 'running'], backgroundattachment:['fixed', 'scroll'], 
  linestackingstrategy:['max-height', 'block-line-height', 'inline-line-height'], 
  animationtimingfunction:['ease', 'linear', 'ease-in', 'ease-out', 'ease-in-out'], 
  dropinitialafteradjust:['middle', 'central', 'after-edge', 'alphabetic', 'ideographic', 'text-after-edge'], 
  dropinitialbeforeadjust:['middle', 'central', 'hanging', 'before-edge', 'mathematical', 'text-before-edge'], 
  transitiontimingfunction:['ease', 'linear', 'ease-in', 'ease-out', 'ease-in-out']
}

class Teacss
  render: (classNamespace, dslFunc, args...) ->
    if typeof classNamespace is 'function'
      args.unshift dslFunc
      dslFunc = classNamespace
      classNamespace = 'global'
    @cssOut = ''
    @classStack = [classNamespace]
    try
      dslFunc.apply @, args
    catch e
    @cssOut
        
  fuzzyMatch: (txt, names) ->
    txt = txt.toLowerCase()
    if txt in names then return txt
    txt = txt.replace '-', ''
    firstChar = txt[0]
    restChar  = txt[1..]
    for name in names when name[0] is firstChar
      name = name.replace '-', ''
      lastIndex = 1
      failed = no
      for chr in restChar
        regex = RegExp chr, 'g'
        regex.lastIndex = lastIndex
        if not (matches = regex.exec name)
          failed = yes
          break
        lastIndex = regex.lastIndex
      if not failed then return name
    return false

  renderDirective: (name, value) ->
    if typeof value not in ['string','number']
      return " #{name}:teacss-bad-value;"
    if not name or not (dirctv = @fuzzyMatch name, directives)
      return " #{name}:teacss-no-match;"
    directiveNoDash = dirctv.replace /-/g, ''
    if not (values = directiveValues[directiveNoDash]) or
       not (val = @fuzzyMatch value, values)
      val = value
    "#{dirctv}:#{val};"

  parseSelector: (selector) ->
    parsedSelector = ''
    parts = selector.match /[#\.+][^#\.+]+/
    for part in parts
      switch part[0]
        when '#' then ->
          parsedSelector = part + parsedSelector
        when '.' then ->
          parsedSelector += part
        when '+'
          namespace = part[1...]
          parsedSelector += '.' + @classStack.join('-') + '-' + namespace
    {namespace, selector: parsedSelector}
    
  renderFunction: (namespace, func) ->
    @classStack.push namespace if namespace
    func.call @
    @classStack.pop()          if namespace

  renderObj: (obj) ->
    result = ''
    for name, value of obj
      result += @renderDirective name, value
    return result

  _: (args...) ->
    if (arg = args[0]) and arg[0] in ['#', '.', '+']
      {namespace, selector} = @parseSelector arg
    else
      log 'teacss: selector missing', args
      return
    css = "\n#{selector} {\n"
    for arg, index in args[1...] when arg
      switch typeof arg
        when 'string'   then css += arg
        when 'object'   then css += @renderObj arg
        when 'function' then @renderFunction namespace, arg
    @cssOut += css + '\n}'

  comment: (text) ->
    @raw "/*#{text}*/"

  raw: (s) ->
    return unless s?
    @cssOut += s

  use: (plugin) ->
    plugin @
    
  tags: -> 
    rendercss:  @render .bind @
    commentcss: @comment.bind @
    rawcss:     @raw    .bind @
    _:          @_      .bind @
    
if module?.exports
  module.exports = new Teacss().tags()
  module.exports.Teacss = Teacss
else if typeof define is 'function' and define.amd
  define('teacss', [], -> new Teacss().tags())
else
  window.teacss = new Teacss().tags()
  window.teacss.Teacss = Teacss
