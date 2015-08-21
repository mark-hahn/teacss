
log = (args...) -> console.log ' TCSS:', args...

directives = [
  'background', 'backgroundattachment', 'backgroundbreak', 'backgroundclip', 'backgroundcolor', 
  'backgroundimage', 'backgroundorigin', 'backgroundposition', 'backgroundrepeat', 
  'backgroundsize', 'border', 'borderbreak', 'borderbottom', 'borderbottomcolor', 'borderbottomstyle', 
  'borderbottomwidth', 'bordercollapse', 'bordercolor', 'borderimage', 'borderleft', 
  'borderleftcolor', 'borderleftstyle', 'borderleftwidth', 'borderright', 'borderrightcolor', 
  'borderrightstyle', 'borderrightwidth', 'bordertop', 'bordertopcolor', 'bordertopstyle', 
  'bordertopwidth', 'borderwidth', 'borderradius', 'bordertoprightradius', 'borderbottomrightradius', 
  'borderbottomleftradius', 'bordertopleftradius', 'boxshadow', 'borderstyle', 'font', 
  'fontfamily', 'fontsize', 'fontsizeadjust', 'fontstretch', 'fontstyle', 'fontvariant', 
  't', 'fontweight', 'clear', 'display', 'float', 'height', 'maxheight', 'maxwidth', 
  'minheight', 'minwidth', 'width', 'margin', 'marginbottom', 'marginleft', 'marginright', 
  'margintop', 'padding', 'paddingbottom', 'paddingleft', 'paddingright', 'paddingtop', 
  'marqueedirection', 'marqueeloop', 'marqueeplaycount', 'marqueespeed', 'marqueestyle', 
  'overflow', 'overflowstyle', 'overflowx', 'overflowy', 'rotation', 'rotationpoint', 
  'visibility', 'direction', 'hangingpunctuation', 'letterspacing', 'punctuationtrim', 
  'textalign', 'textalignlast', 'textdecoration', 'textemphasis', 'textindent', 'textjustify', 
  'textoutline', 'textshadow', 'texttransform', 'textwrap', 'unicodebidi', 'whitespace', 
  'whitespacecollapse', 'wordbreak', 'wordspacing', 'wordwrap', 'columncount', 'columnfill', 
  'columngap', 'columnrule', 'columnrulecolor', 'columnrulestyle', 'columnrulewidth', 
  'columns', 'columnspan', 'columnwidth', 'color', 'opacity', 'boxalign', 'boxdirection', 
  'boxflex', 'boxflexgroup', 'boxlines', 'boxorient', 'boxpack', 'boxsizing', 'tabside', 
  'bordercollapse', 'borderspacing', 'captionside', 'emptycells', 'tablelayout', 'cue', 
  'cuebefore', 'cueafter', 'mark', 'markbefore', 'markafter', 'pause', 'pausebefore', 
  'pauseafter', 'phonemes', 'rest', 'restbefore', 'restafter', 'speak', 'voicebalance', 
  'voiceduration', 'voicefamily', 'voicerate', 'voicepitch', 'voicepitchrange', 'voicestress', 
  'voicevolume', 'liststyle', 'liststyleimage', 'liststyleposition', 'liststyletype', 
  'markeroffset', 'animation', 'animationdelay', 'animationdirection', 'animationduration', 
  'animationiterationcounti', 'animationname', 'animationplaystate', 'animationtimingfunctione', 
  'transition', 'transitiondelay', 'transitionduration', 'transitionproperty', 'transitiontimingfunction', 
  'gridcolumns', 'gridrows', 'outline', 'outlinecolor', 'outlineoffset', 'outlinestyle', 
  'outlinewidth', 'backfacevisibility', 'perspective', 'perspectiveorigin', 'transform', 
  'transformorigin', 'transformstyle', 'bookmarklabelc', 'a', 's', 'bookmarkleveln', 
  'i', 'bookmarktargets', 'u', 'a', 'borderlengtha', 'l', 'contentn', 'u', 'counterincrementn', 
  'i', 'counterresetn', 'i', 'cropa', 's', 'displayn', 'floatoffsetl', 'hyphenateafter', 
  'hyphenatebefore', 'hyphenatecharacter', 'hyphenatelines', 'hyphenateresource', 'hyphens', 
  'imageresolution', 'marks', 'moveto', 'pagepolicy', 'quotes', 'stringset', 'textreplace', 
  'alignmentadjust', 'alignmentbaseline', 'baselineshift', 'dominantbaseline', 'dropinitialafteralign', 
  'dropinitialafteradjust', 'dropinitialbeforealign', 'dropinitialbeforeadjustb', 'dropinitialvalue', 
  'dropinitialsize', 'inlineboxalign', 'lineheight', 'linestacking', 'linestackingstrategy', 
  'linestackingruby', 'linestackingshift', 'textheight', 'verticalalign', 'target', 
  'targetname', 'targetnew', 'targetposition', 'bottom', 'clip', 'left', 'position', 
  'right', 'top', 'zindex', 'rubyalign', 'rubyoverhang', 'rubyposition', 'rubyspan', 
  'mberqrg0008', 'fit', 'fitposition', 'imageorientation', 'orphans', 'page', 'pagebreakafter', 
  'pagebreakbefore', 'pagebreakinside', 'size', 'windows', 'appearance', 'cursor', 
  'icon', 'navindex', 'navup', 'navright', 'navdown', 'navleft', 'resize'
]

values = {
  backgroundattachment:['scroll', 'fixed'], backgroundbreak:['boundingbox', 'eachbox'], 
  backgroundclip:['borderbox', 'paddingbox', 'contentbox', 'noclip'], 
  backgroundimage:['none'], backgroundorigin:['borderbox', 'paddingbox'], 
  backgroundposition:['topleft', 'topcenter', 'topright', 'centerleft', 'centercenter', 'centerright', 'bottomleft', 'bottomcenter', 'bottomright'], 
  backgroundrepeat:['repeat', 'repeatx', 'repeaty', 'norepeat'], 
  backgroundsize:['auto', 'cover', 'contain'], borderbottomwidth:['thin', 'medium', 'thick'], 
  bordercollapse:['collapse', 'separate'], borderimage:['stretch', 'repeat', 'roundfon', 'none'], 
  borderleftwidth:['thin', 'medium', 'thick'], borderrightwidth:['thin', 'medium', 'thick'], 
  bordertopwidth:['thin', 'medium', 'thick'], borderwidth:['thin', 'medium', 'thick'], 
  boxshadow:['inset', 'lengthlengthlengthlength', 'color', 'none'], 
  borderstyle:['none', 'hidden', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset'], 
  font:['caption', 'icon', 'menu', 'messagebox', 'smallcaption', 'statusbar'], 
  fontsize:['xxsmall', 'xsmall', 'small', 'medium', 'large', 'xlarge', 'xxlarge', 'smaller', 'larger'], 
  fontsizeadjust:['none', 'inherit'], fontstretch:['normal', 'wider', 'narrower', 'ultracondensed', 'extracondensed', 'condensed', 'semicondensed', 'semiexpanded', 'expanded', 'extraexpanded', 'ultraexpanded', 'inherit'], 
  fontstyle:['normal', 'italic', 'oblique'], fontvariant:['normal', 'smallcaps', 'inherit'], 
  fontweight:['normal', 'bold', 'bolder', 'lighter', '100', '200', '300', '400', '500', '600', '700', '800', '900', 'inherit'], 
  clear:['left', 'right', 'both', 'none'], display:['none', 'inline', 'block', 'inlineblock', 'listitem', 'runin', 'compact', 'table', 'inlinetable', 'tablerowgroup', 'tableheadergroup', 'tablefootergroup', 'tablerow', 'tablecolumngroup', 'tablecolumn', 'tablecell', 'tablecaption', 'ruby', 'rubybase', 'rubytext', 'rubybasegroup', 'rubytextgroup'], 
  float:['left', 'right', 'none'], maxheight:['none'], maxwidth:['none'], 
  minheight:['none', 'inherit'], minwidth:['none', 'inherit'], 
  marqueedirection:['forward', 'reverse'], marqueespeed:['slow', 'normal', 'fast'], 
  marqueestyle:['scroll', 'slide', 'alternate'], overflow:['visible', 'hidden', 'scroll', 'auto', 'nodisplay', 'no'], 
  overflowstyle:['auto', 'marqueeline', 'mar'], overflowx:['visible', 'hidden', 'scroll', 'auto', 'nodisplay', 'no'], 
  overflowy:['visible', 'hidden', 'scroll', 'auto', 'nodisplay', 'no'], 
  visibility:['visible', 'hidden', 'collapsehttpwwwveigncompartnumberqrg00082009veignallrightsreserved'], 
  direction:['ltr', 'rtl', 'inherit'], hangingpunctuation:['none', 'start', 'end', 'end'], 
  punctuationtrim:['none', 'start', 'end', 'adja'], textalign:['start', 'end', 'left', 'right', 'center', 'justify'], 
  textalignlast:['start', 'end', 'left', 'right', 'center', 'justify'], 
  textdecoration:['none', 'underline', 'overline', 'linethrough', 'blink'], 
  textemphasis:['none', 'accent', 'dot', 'circle', 'discbefore', 'after'], 
  textjustify:['auto', 'interword', 'interideograph', 'intercluster', 'distribute', 'kashida', 'tibetan'], 
  textoutline:['none'], textshadow:['none'], texttransform:['none', 'capitalize', 'uppercase', 'lowercase'], 
  textwrap:['normal', 'unrestricted', 'none', 'suppress'], unicodebidi:['normal', 'embed', 'bidi'], 
  whitespace:['normal', 'pre', 'nowrap', 'prewrap', 'preline'], 
  whitespacecollapse:['preserve', 'collapse', 'preservebreaks', 'discard'], 
  wordbreak:['normal', 'keepall', 'loose', 'breakstrict', 'breakall'], 
  wordwrap:['normal', 'breakword'], columnfill:['auto', 'balance'], 
  columnrulewidth:['thin', 'medium', 'thick'], columnspan:['1', 'all'], 
  boxalign:['start', 'end', 'center', 'base'], boxdirection:['normal', 'reverse'], 
  boxlines:['single', 'multiple'], boxorient:['horizontal', 'vertical', 'inlineaxis', 'blockaxis'], 
  boxpack:['start', 'end', 'center', 'justify'], boxsizing:['contentbox', 'paddingbox', 'borderbox', 'marginbox'], 
  tabside:['top', 'bottom', 'left', 'right'], bordercollapse:['collapse', 'separate'], 
  captionside:['top', 'bottom', 'left', 'right'], emptycells:['show', 'hide'], 
  tablelayout:['auto', 'fixed'], cuebefore:['urisilent', 'xsoft', 'soft', 'medium', 'loud', 'xloud', 'none', 'inherit'], 
  cueafter:['urisilent', 'xsoft', 'soft', 'medium', 'loud', 'xloud', 'none', 'inherit'], 
  pausebefore:['none', 'xweak', 'weak', 'medium', 'strong', 'xstrong', 'inherit'], 
  pauseafter:['none', 'xweak', 'weak', 'medium', 'strong', 'xstrong', 'inherit'], 
  restbefore:['none', 'xweak', 'weak', 'medium', 'strong', 'xstrong', 'inherit'], 
  restafter:['none', 'xweak', 'weak', 'medium', 'strong', 'xstrong', 'inherit'], 
  speak:['none', 'normal', 'spellout', 'digits', 'literalpunctuation', 'nopunctuation', 'inherit'], 
  voicebalance:['left', 'center', 'right', 'leftwards', 'rightwards', 'inherit'], 
  voicefamily:['inherit', 'specificvoice'], voicerate:['xslow', 'slow', 'medium', 'fast', 'xfast', 'inherit'], 
  voicepitch:['xlow', 'low', 'medium', 'high', 'xhigh', 'inherit'], 
  voicepitchrange:['xlow', 'low', 'medium', 'high', 'xhigh', 'inherit'], 
  voicestress:['strong', 'moderate', 'none', 'reduced', 'inherit'], 
  voicevolume:['silent', 'xsoft', 'soft', 'medium', 'loud', 'xloud', 'inherit'], 
  liststyleimage:['none'], liststyleposition:['inside', 'outside'], 
  liststyletype:['none', 'asterisks', 'box', 'check', 'circle', 'diamond', 'disc', 'hyphen', 'square', 'decimal', 'decimalleadingzero', 'lowerroman', 'upperroman', 'loweralpha', 'upperalpha', 'lowergreek', 'lowerlatin', 'upperlatin', 'hebrew', 'armenian', 'georgian', 'cjkideographic', 'hiragana', 'katakana', 'hiraganairoha', 'katakanairoha', 'footnotes'], 
  animationdirection:['normal', 'alternate'], animationname:['none', 'ident'], 
  animationplaystate:['running', 'paused'], animationtimingfunctione:['ase', 'linear', 'easein', 'easeout', 'easeinout'], 
  transitionproperty:['none', 'all'], transitiontimingfunction:['ease', 'linear', 'easein', 'easeout', 'easeinout'], 
  gridcolumns:['none', 'inherit'], gridrows:['none', 'inherit'], 
  outlinestyle:['none', 'dotted', 'dashed', 'solid', 'double', 'groove', 'ridge', 'inset', 'outset'], 
  outlinewidth:['thin', 'medium', 'thick'], backfacevisibility:['visible', 'hidden'], 
  perspective:['none'], perspectiveorigin:['percentage', 'length', 'left', 'center', 'rightpercentage', 'length', 'top', 'center', 'bottomlength', 'left', 'center', 'right', 'top', 'center', 'bottom'], 
  transform:['none', 'matrix', 'matrix3d', 'translate3d', 'translatex', 'translatey', 'translatez', 'scale', 'scale3d', 'scalex', 'scaley', 'scalez', 'rotate', 'rotate3d', 'rotatex', 'rotatey', 'rotatez', 'skewx', 'skewy', 'skew', 'perspective'], 
  transformorigin:['percentage', 'length', 'left', 'center', 'rightpercentage', 'length', 'top', 'center', 'bottomlength', 'left', 'center', 'right', 'top', 'center', 'bottom'], 
  transformstyle:['flat', 'preserve3d'], contentn:['ormal', 'none', 'inhibit'], 
  displayn:['ormal', 'none', 'listitem'], hyphenateresource:['none'], 
  hyphens:['none', 'manual', 'auto'], imageresolution:['normal', 'auto'], 
  marks:['crop', 'cross', 'none'], moveto:['normal', 'here'], pagepolicy:['start', 'first', 'last'], 
  quotes:['none'], textreplace:['none'], alignmentadjust:['auto', 'baseline', 'beforeedge', 'textbeforeedge', 'middle', 'central', 'afteredge', 'textafteredge', 'ideographic', 'alphabetic', 'hanging', 'mathematical'], 
  alignmentbaseline:['baseline', 'usescript', 'beforeedge', 'textbeforeedge', 'afteredge', 'textafteredge', 'central', 'middle', 'ideographic', 'alphabetic', 'hanging', 'mathematical'], 
  baselineshift:['baseline', 'sub', 'super'], dominantbaseline:['auto', 'usescript', 'nochange', 'resetsize', 'alphabetic', 'hanging', 'ideographic', 'mathematical', 'central', 'middle', 'textafteredge', 'textbeforeedge'], 
  dropinitialafteradjust:['central', 'middle', 'afteredge', 'textafteredge', 'ideographic', 'alphabetic'], 
  dropinitialbeforeadjustb:['eforeedge', 'textbeforeedge', 'central', 'middle', 'hanging', 'mathematical'], 
  inlineboxalign:['initial', 'last'], linestackingstrategy:['inlinelineheight', 'blocklineheight', 'maxheight'], 
  linestackingruby:['excluderuby', 'includeruby'], linestackingshift:['considershifts', 'disregard'], 
  textheight:['auto', 'fontsize', 'textsize'], verticalalign:['baseline', 'sub', 'super', 'top', 'texttop', 'middle', 'bottom', 'textbottom'], 
  targetname:['current', 'root', 'parent', 'new', 'modal'], targetnew:['window', 'tab', 'none'], 
  targetposition:['above', 'behind', 'front'], position:['static', 'relative', 'absolute'], 
  rubyalign:['auto', 'start', 'left', 'center', 'end', 'right', 'distributeletter', 'distributespace', 'line'], 
  rubyoverhang:['auto', 'start', 'end', 'none'], rubyposition:['before', 'after', 'right', 'inline'], 
  rubyspan:['attrx', 'none'], fit:['fill', 'hidden', 'meet', 'slice'], 
  fitposition:['top', 'center', 'bottom', 'left', 'center', 'right'], 
  pagebreakafter:['auto', 'always', 'avoid', 'left'], pagebreakbefore:['auto', 'always', 'avoid', 'left'], 
  pagebreakinside:['auto', 'avoid'], size:['auto', 'landscape', 'portrait'], 
  appearance:['normal', 'inherit', 'icon', 'window', 'desktop', 'workspace', 'document', 'tooltip', 'dialog', 'button', 'pushbutton', 'hyperlink', 'radiobutton', 'checkbox', 'menuitem', 'tab', 'menu', 'menubar', 'pulldownmenu', 'popupmenu', 'listmenu', 'radiogroup', 'checkboxgroup', 'outlinetree', 'range', 'field', 'combobox', 'signature', 'password'], 
  cursor:['auto', 'crosshair', 'default', 'pointer', 'move', 'eresize', 'neresize', 'nwresize', 'nresize', 'seresize', 'swresize', 'sresize', 'wresize', 'text', 'wait', 'help'], 
  icon:['auto', 'inherit'], navindex:['auto', 'inherit'], navup:['auto', 'inherit', 'current', 'root'], 
  navright:['auto', 'inherit', 'current', 'root'], navdown:['auto', 'inherit', 'current', 'root'], 
  navleft:['auto', 'inherit', 'current', 'root'], resize:['none', 'both', 'horizontal', 'vertical', 'inherit']
}
  

  raw: 'style'

  script: 'script'

  # Valid self-closing HTML 5 elements.
  void: 'area base br col command embed hr img input keygen link meta param
 source track wbr'

  obsolete: 'applet acronym bgsound dir frameset noframes isindex listing
 nextid noembed plaintext rb strike xmp big blink center font marquee multicol
 nobr spacer tt'

  obsolete_void: 'basefont frame'

# Create a unique list of element names merging the desired groups.
merge_elements = (args...) ->
  result = []
  for a in args
    for element in elements[a].split ' '
      result.push element unless element in result
  result


class Teacup
  constructor: ->
    @htmlOut = null

  resetBuffer: (html=null) ->
    previous = @htmlOut
    @htmlOut = html
    return previous

  render: (template, args...) ->
    previous = @resetBuffer('')
    try
      template(args...)
    finally
      result = @resetBuffer previous
    return result

  # alias render for coffeecup compatibility
  cede: (args...) -> @render(args...)

  renderable: (template) ->
    teacup = @
    return (args...) ->
      if teacup.htmlOut is null
        teacup.htmlOut = ''
        try
          template.apply @, args
        finally
          result = teacup.resetBuffer()
        return result
      else
        template.apply @, args

  renderAttr: (name, value) ->
    if not value?
      return " #{name}"

    if value is false
      return ''

    if name is 'data' and typeof value is 'object'
      return (@renderAttr "data-#{k}", v for k,v of value).join('')

    if value is true
      value = name

    return " #{name}=#{@quote @escape value.toString()}"

  attrOrder: ['id', 'class']
  renderAttrs: (obj) ->
    result = ''

    # render explicitly ordered attributes first
    for name in @attrOrder when name of obj
      result += @renderAttr name, obj[name]

    # then unordered attrs
    for name, value of obj
      continue if name in @attrOrder
      result += @renderAttr name, value

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
    attrs = {}
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
            attrs = arg
          else
            contents = arg
        else
          contents = arg

    if parsedSelector?
      {id, classes} = parsedSelector
      attrs.id = id if id?
      if classes?.length
        if attrs.class
          classes.push attrs.class
        attrs.class = classes.join(' ')

    return {attrs, contents, selector}

  tag: (tagName, args...) ->
    {attrs, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderAttrs attrs}>"
    @renderContents contents
    @raw "</#{tagName}>"

  rawTag: (tagName, args...) ->
    {attrs, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderAttrs attrs}>"
    @raw contents
    @raw "</#{tagName}>"

  scriptTag: (tagName, args...) ->
    {attrs, contents} = @normalizeArgs args
    @raw "<#{tagName}#{@renderAttrs attrs}>"
    @renderContents contents
    @raw "</#{tagName}>"


  selfClosingTag: (tag, args...) ->
    {attrs, contents} = @normalizeArgs args
    if contents
      throw new Error "Teacup: <#{tag}/> must not have content.  Attempted to nest #{contents}"
    @raw "<#{tag}#{@renderAttrs attrs} />"

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
    unless @htmlOut?
      throw new Error("Teacup: can't call a tag function outside a rendering context")
    @htmlOut += s? and @escape(s.toString()) or ''
    null

  raw: (s) ->
    return unless s?
    @htmlOut += s
    null

  #
  # Filters
  # return strings instead of appending to buffer
  #

  # Don't escape single quote (') because we always quote attributes with double quote (")
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
      {selector, attrs, contents} = @normalizeArgs(args)
      renderContents = (args...) =>
        args.unshift contents
        @renderContents.apply @, args
      func.apply @, [selector, attrs, renderContents]

# Define tag functions on the prototype for pretty stack traces
for tagName in merge_elements 'regular', 'obsolete'
  do (tagName) ->
    Teacup::[tagName] = (args...) -> @tag tagName, args...

for tagName in merge_elements 'raw'
  do (tagName) ->
    Teacup::[tagName] = (args...) -> @rawTag tagName, args...

for tagName in merge_elements 'script'
  do (tagName) ->
    Teacup::[tagName] = (args...) -> @scriptTag tagName, args...

for tagName in merge_elements 'void', 'obsolete_void'
  do (tagName) ->
    Teacup::[tagName] = (args...) -> @selfClosingTag tagName, args...

if module?.exports
  module.exports = new Teacup().tags()
  module.exports.Teacup = Teacup
else if typeof define is 'function' and define.amd
  define('teacup', [], -> new Teacup().tags())
else
  window.teacup = new Teacup().tags()
  window.teacup.Teacup = Teacup