
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

values = {
  fit:['fill', 'meet', 'slice', 'hidden'], font:['icon', 'menu', 'caption', 'status-bar', 'message-box', 'small-caption'], 
  icon:['auto', 'inherit'], size:['auto', 'portrait', 'landscape'], 
  marks:['crop', 'none', 'cross'], float:['left', 'none', 'right'], 
  clear:['left', 'both', 'none', 'right'], speak:['none', 'normal', 'digits', 'inherit', 'spell-out', 'no-punctuation', 'literal-punctuation'], 
  margin:['margin-top', 'margin-left', 'margin-right', 'margin-bottom'], 
  cursor:['auto', 'help', 'wait', 'text', 'move', 'default', 'pointer', 'e-resize', 'n-resize', 'w-resize', 's-resize', 'ne-resize', 'se-resize', 'crosshair', 'nw-resize', 'sw-resize'], 
  nav-up:['auto', 'root', 'inheritcurrent'], quotes:['none'], resize:['none', 'both', 'inherit', 'vertical', 'horizontal'], 
  move-to:['here', 'normal'], content:['none', 'normal', 'inhibit'], 
  display:['none', 'normal', 'list-item'], hyphens:['none', 'auto', 'manual'], 
  display:['none', 'ruby', 'block', 'table', 'run-in', 'inline', 'compact', 'list-item', 'table-row', 'ruby-text', 'ruby-base', 'table-cell', 'inline-table', 'table-column', 'inline-block', 'table-caption', 'ruby-base-group', 'ruby-text-group', 'table-row-group', 'table-column-group', 'table-header-group', 'table-footer-group'], 
  nav-left:['auto', 'root', 'inheritcurrent'], position:['static', 'relative', 'absolute'], 
  tab-side:['top', 'left', 'right', 'bottom'], nav-down:['auto', 'root', 'inheritcurrent'], 
  overflow:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content', 'overflow-x', 'overflow-y'], 
  box-pack:['end', 'start', 'center', 'justify'], box-lines:['single', 'multiple'], 
  font-size:['small', 'large', 'medium', 'larger', 'x-small', 'x-large', 'smaller', 'inherit', 'xx-small', 'xx-large'], 
  min-width:['none', 'inherit'], box-align:['end', 'start', 'center'], 
  nav-index:['auto', 'inherit'], nav-right:['auto', 'root', 'inheritcurrent'], 
  ruby-span:['none', 'attrx'], max-width:['none'], cue-after:['soft', 'loud', 'none', 'x-soft', 'medium', 'x-loud', 'inherit', 'urisilent'], 
  word-wrap:['normal', 'break-word'], text-wrap:['none', 'normal', 'suppress', 'unrestricted'], 
  transform:['none', 'skew', 'skewy', 'skewx', 'scale', 'rotate', 'scalez', 'scaley', 'matrix', 'scalex', 'rotatey', 'scale3d', 'rotatez', 'rotatex', 'rotate3d', 'matrix3d', 'translatez', 'translatey', 'translatex', 'translate3d', 'perspective'], 
  direction:['ltr', 'rtl', 'inherit'], grid-rows:['none', 'inherit'], 
  appearance:['tab', 'menu', 'icon', 'field', 'range', 'normal', 'window', 'button', 'dialog', 'tooltip', 'menubar', 'desktop', 'inherit', 'checkbox', 'password', 'document', 'menu-item', 'list-menu', 'hyperlink', 'combo-box', 'signa-ture', 'work-space', 'pop-up-menu', 'radio-group', 'push-button', 'outline-tree', 'radio-button', 'pull-down-menu', 'checkbox-group'], 
  ruby-align:['end', 'auto', 'left', 'start', 'right', 'center', 'line-edge', 'distribute-space', 'distribute-letter'], 
  box-shadow:['none'], max-height:['none'], min-height:['none', 'inherit'], 
  overflow-x:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content'], 
  overflow-y:['auto', 'hidden', 'scroll', 'visible', 'no-display', 'no-content'], 
  target-new:['tab', 'none', 'window'], list-style:['list-style-type', 'list-style-image', 'list-style-position'], 
  voice-rate:['slow', 'fast', 'x-slow', 'medium', 'x-fast', 'inherit'], 
  rest-after:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  text-align:['end', 'left', 'start', 'right', 'center', 'justify'], 
  cue-before:['soft', 'loud', 'none', 'x-soft', 'medium', 'x-loud', 'inherit', 'urisilent'], 
  box-sizing:['border-box', 'margin-box', 'content-box', 'padding-box'], 
  box-orient:['vertical', 'horizontal', 'block-axis', 'inline-axis'], 
  font-style:['normal', 'italic', 'oblique', 'inherit'], word-break:['loose', 'normal', 'keep-all', 'break-all', 'break-strict'], 
  page-policy:['last', 'start', 'first'], column-fill:['auto', 'balance'], 
  font-weight:['300', '800', '700', '600', '100', '200', '500', '400', 'bold', 'bolder', 'normal', 'lighter'], 
  column-span:['1', 'all'], text-shadow:['none'], perspective:['none'], 
  white-space:['pre', 'normal', 'nowrap', 'pre-wrap', 'pre-line'], 
  empty-cells:['show', 'hide'], text-height:['auto', 'max-size', 'font-size', 'text-size'], 
  pause-after:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  rest-before:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  target-name:['new', 'root', 'modal', 'parent', 'current'], voice-pitch:['low', 'high', 'x-low', 'medium', 'x-high', 'inherit'], 
  text-justify:['auto', 'kashida', 'tibetan', 'inter-word', 'distribute', 'inter-cluster', 'inter-ideograph'], 
  text-replace:['none'], border-width:['thin', 'thick', 'medium'], 
  caption-side:['top', 'left', 'right', 'bottom'], fit-position:['top', 'left', 'right', 'center', 'bottom'], 
  table-layout:['auto', 'fixed'], unicode-bidi:['embed', 'normal', 'bidi-override'], 
  text-outline:['none'], border-style:['none', 'solid', 'ridge', 'inset', 'hidden', 'dotted', 'dashed', 'double', 'groove'], 
  pause-before:['none', 'weak', 'x-weak', 'medium', 'strong', 'inherit', 'x-strong'], 
  border-image:['none', 'round', 'repeat', 'stretch'], font-variant:['normal', 'inherit', 'small-caps'], 
  voice-family:['inherit', 'specific-voice', 'agegeneric-voicenumber'], 
  font-stretch:['wider', 'normal', 'inherit', 'narrower', 'expanded', 'condensed', 'semi-expanded', 'extra-expanded', 'ultra-expanded', 'semi-condensed', 'ultra-condensed', 'extra-condensed'], 
  grid-columns:['none', 'inherit'], voice-stress:['none', 'strong', 'reduced', 'inherit', 'moderate'], 
  voice-volume:['soft', 'loud', 'silent', 'x-soft', 'medium', 'x-loud', 'inherit'], 
  marquee-style:['slide', 'scroll', 'alternate'], counter-reset:['none'], 
  marquee-speed:['slow', 'fast', 'normal'], voice-balance:['left', 'right', 'center', 'inherit', 'leftwards', 'rightwards'], 
  ruby-overhang:['end', 'auto', 'none', 'start'], text-emphasis:['dot', 'none', 'disc', 'after', 'accent', 'circle', 'before'], 
  ruby-position:['after', 'right', 'before', 'inline'], box-direction:['normal', 'reverse'], 
  outline-width:['thin', 'thick', 'medium'], outline-style:['none', 'solid', 'ridge', 'inset', 'dotted', 'dashed', 'double', 'groove', 'outset'], 
  animation-name:['none'], baseline-shift:['sub', 'super', 'baseline'], 
  bookmark-level:['none'], text-transform:['none', 'uppercase', 'lowercase', 'capitalize'], 
  overflow-style:['auto', 'marquee-line', 'marquee-block'], vertical-align:['sub', 'top', 'super', 'middle', 'bottom', 'baseline', 'text-top', 'text-bottom'], 
  text-align-last:['end', 'left', 'start', 'right', 'center', 'justify'], 
  border-collapse:['collapse', 'separate'], text-decoration:['none', 'blink', 'overline', 'underline', 'line-through'], 
  border-collapse:['collapse', 'separate'], background-clip:['no-clip', 'border-box', 'padding-box', 'content-box'], 
  transform-style:['flat', 'preserve-3d'], list-style-type:['box', 'none', 'disc', 'check', 'square', 'hebrew', 'circle', 'hyphen', 'diamond', 'decimal', 'katakana', 'hiragana', 'armenian', 'asterisks', 'footnotes', 'geor-gian', 'lower-latin', 'lower-alpha', 'lower-greek', 'upper-alpha', 'upper-roman', 'upper-latin', 'lower-roman', 'katakana-iroha', 'hira-gana-iroha', 'cjk-ideographic', 'decimal-leading-zero'], 
  background-size:['auto', 'cover', 'contain'], target-position:['above', 'front', 'behind'], 
  border-top-width:['thin', 'thick', 'medium'], font-size-adjust:['none', 'inherit'], 
  background-break:['each-box', 'continuous', 'bounding-box'], 
  alignment-adjust:['auto', 'middle', 'hanging', 'central', 'baseline', 'after-edge', 'alphabetic', 'before-edge', 'ideo-graphic', 'text-after-edge', 'text-before-edge'], 
  inline-box-align:['last', 'initial'], punctuation-trim:['end', 'none', 'start', 'adjacent'], 
  list-style-image:['none'], background-image:['none'], transform-origin:['top', 'left', 'right', 'center', 'bottom'], 
  image-resolution:['auto', 'normal'], page-break-after:['auto', 'left', 'avoid', 'always'], 
  background-origin:['border-box', 'padding-box'], background-repeat:['repeat', 'repeat-x', 'repeat-y', 'no-repeat'], 
  voice-pitch-range:['low', 'high', 'x-low', 'medium', 'x-high', 'inherit'], 
  border-left-width:['thin', 'thick', 'medium'], counter-increment:['none'], 
  dominant-baseline:['auto', 'middle', 'hanging', 'central', 'no-change', 'reset-size', 'use-script', 'alpha-betic', 'ideo-graphic', 'mathematical', 'text-after-edge', 'text-before-edge'], 
  page-break-inside:['auto', 'avoid'], page-break-before:['auto', 'left', 'avoid', 'always'], 
  marquee-direction:['forward', 'reverse'], column-rule-width:['thin', 'thick', 'medium'], 
  perspective-origin:['top', 'top', 'left', 'left', 'right', 'center', 'bottom', 'length', 'center', 'center', 'center', 'length', 'percentage', 'bottomlength', 'rightpercentage'], 
  line-stacking-ruby:['exclude-ruby', 'include-ruby'], border-right-width:['thin', 'thick', 'medium'], 
  alignment-baseline:['middle', 'central', 'hanging', 'baseline', 'after-edge', 'use-script', 'alphabetic', 'ideographic', 'before-edge', 'mathematical', 'text-after-edge', 'text-before-edge'], 
  hyphenate-resource:['none'], animation-direction:['normal', 'alternate'], 
  line-stacking-shift:['consider-shifts', 'disregard-shifts'], 
  list-style-position:['inside', 'outside'], background-position:['top', 'right', 'center', 'bottomleft', 'bottom-left', 'bottom-right', 'bottom-center'], 
  hanging-punctuation:['end', 'none', 'start', 'end-edge'], border-bottom-width:['thin', 'thick', 'medium'], 
  transition-property:['all', 'none'], backface-visibility:['hidden', 'visible'], 
  white-space-collapse:['discard', 'preserve', 'collapse', 'pre-serve-breaks'], 
  animation-play-state:['paused', 'running'], background-attachment:['fixed', 'scroll'], 
  line-stacking-strategy:['max-height', 'block-line-height', 'inline-line-height'], 
  animation-timing-function:['ease', 'linear', 'ease-in', 'ease-out', 'ease-in-out'], 
  drop-initial-after-adjust:['middle', 'central', 'after-edge', 'alphabetic', 'ideographic', 'text-after-edge'], 
  drop-initial-before-adjust:['middle', 'central', 'hanging', 'before-edge', 'mathematical', 'text-before-edge'], 
  transition-timing-function:['ease', 'linear', 'ease-in', 'ease-out', 'ease-in-out']
}

class Teacss
  constructor: ->
    @cssOut = null

  setBuffer: (css=null) ->
    previous = @cssOut
    @cssOut = css
    return previous

  render: (template, args...) ->
    previous = @setBuffer('')
    try
      template(args...)
    finally
      result = @setBuffer previous
    return result

  renderable: (template) ->
    teacss = @
    return (args...) ->
      if teacss.cssOut is null
        teacss.cssOut = ''
        try
          template.apply @, args
        finally
          result = teacss.setBuffer()
        return result
      else
        template.apply @, args
        
  fuzzyMatch: (txt, names) ->
    for name in names
      lastIndex = 0
      failed = no
      for chr in txt
        regex = new RexExp chr, 'g'
        regex.lastIndex = lastIndex
        if not (matches = regex.exec name)
          failed = yes
          break
        lastIndex = regex.lastIndex
      if not failed then return name
    return txt    

  renderDirective: (name, value) ->
    if typeof value not in ['string','number']
      return " #{name}:teacss-bad-value;"

    




  renderDirectives: (obj) ->
    result = ''

    # render explicitly ordered directiveibutes first
    for name in @directiveOrder when name of obj
      result += @renderDirective name, obj[name]

    # then unordered directives
    for name, value of obj
      continue if name in @directiveOrder
      result += @renderDirective name, value

    return result

  renderContents: (contents, rest...) ->
    if not contents?
      return
    else if typeof contents is 'function'
      result = contents.apply @, rest
      @text result if typeof result is 'string'
    else
      @text contents

  isSelector: (string) ->
    string.length > 1 and string.charAt(0) in ['#', '.']

  parseSelector: (selector) ->
    id = null
    classes = []
    for token in selector.split '.'
      token = token.trim()
      if id
        classes.push token
      else
        [klass, id] = token.split '#'
        classes.push token unless klass is ''
    return {id, classes}

  normalizeArgs: (args) ->
    directives = {}
    selector = null
    contents = null

    for arg, index in args when arg?
      switch typeof arg
        when 'string'
          if index is 0 and @isSelector(arg)
            selector = arg
            parsedSelector = @parseSelector(arg)
          else
            contents = arg
        when 'function', 'number', 'boolean'
          contents = arg
        when 'object'
          if arg.constructor == Object
            directives = arg
          else
            contents = arg
        else
          contents = arg

    if parsedSelector?
      {id, classes} = parsedSelector
      directives.id = id if id?
      if classes?.length
        if directives.class
          classes.push directives.class
        directives.class = classes.join(' ')

    return {directives, contents, selector}

  tag: (tagName, args...) ->
    {directives, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderDirectives directives}>"
    @renderContents contents
    @raw "</#{tagName}>"

  rawTag: (tagName, args...) ->
    {directives, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderDirectives directives}>"
    @raw contents
    @raw "</#{tagName}>"

  scriptTag: (tagName, args...) ->
    {directives, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderDirectives directives}>"
    @renderContents contents
    @raw "</#{tagName}>"


  selfClosingTag: (tag, args...) ->
    {directives, contents} = @normalizeArgs args
    if contents
      throw new Error "Teacss: <#{tag}/> must not have content.  Attempted to nest #{contents}"
    @raw "<#{tag}#{@renderDirectives directives} />"

  coffeescript: (fn) ->
    @raw """<script type="text/javascript">(function() {
      var __slice = [].slice,
          __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; },
          __hasProp = {}.hasOwnProperty,
          __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };
      (#{@escape fn.toString()})();
    })();</script>"""

  comment: (text) ->
    @raw "<!--#{@escape text}-->"

  doctype: (type=5) ->
    @raw doctypes[type]

  ie: (condition, contents) ->
    @raw "<!--[if #{@escape condition}]>"
    @renderContents contents
    @raw "<![endif]-->"

  text: (s) ->
    unless @cssOut?
      throw new Error("Teacss: can't call a tag function outside a rendering context")
    @cssOut += s? and @escape(s.toString()) or ''
    null

  raw: (s) ->
    return unless s?
    @cssOut += s
    null

  #
  # Filters
  # return strings instead of appending to buffer
  #

  # Don't escape single quote (') because we always quote directiveibutes with double quote (")
  escape: (text) ->
    text.toString().replace(/&/g, '&amp;')
      .replace(/</g, '&lt;')
      .replace(/>/g, '&gt;')
      .replace(/"/g, '&quot;')

  quote: (value) ->
    "\"#{value}\""

  #
  # Plugins
  #
  use: (plugin) ->
    plugin @

  #
  # Binding
  #
  tags: ->
    bound = {}

    boundMethodNames = [].concat(
      'cede coffeescript comment component doctype escape ie normalizeArgs raw render renderable script tag text use'.split(' ')
      merge_elements 'regular', 'obsolete', 'raw', 'void', 'obsolete_void'
    )
    for method in boundMethodNames
      do (method) =>
        bound[method] = (args...) => @[method].apply @, args

    return bound

  component: (func) ->
    (args...) =>
      {selector, directives, contents} = @normalizeArgs(args)
      renderContents = (args...) =>
        args.unshift contents
        @renderContents.apply @, args
      func.apply @, [selector, directives, renderContents]

# Define tag functions on the prototype for pretty stack traces
for tagName in merge_elements 'regular', 'obsolete'
  do (tagName) ->
    Teacss::[tagName] = (args...) -> @tag tagName, args...

for tagName in merge_elements 'raw'
  do (tagName) ->
    Teacss::[tagName] = (args...) -> @rawTag tagName, args...

for tagName in merge_elements 'script'
  do (tagName) ->
    Teacss::[tagName] = (args...) -> @scriptTag tagName, args...

for tagName in merge_elements 'void', 'obsolete_void'
  do (tagName) ->
    Teacss::[tagName] = (args...) -> @selfClosingTag tagName, args...

if module?.exports
  module.exports = new Teacss().tags()
  module.exports.Teacss = Teacss
else if typeof define is 'function' and define.amd
  define('teacss', [], -> new Teacss().tags())
else
  window.teacss = new Teacss().tags()
  window.teacss.Teacss = Teacss