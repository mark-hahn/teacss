
log = (args...) -> console.log ' TCSS:', args...

directives = [
  'alignmentadjust', 'alignmentbaseline', 'animation', 'animationdelay', 'animationdirection', 
  'animationduration', 'animationiterationcount', 'animationname', 'animationplaystate', 
  'animationtimingfunction', 'appearance', 'backfacevisibility', 'background', 'backgroundattachment', 
  'backgroundbreak', 'backgroundclip', 'backgroundcolor', 'backgroundimage', 'backgroundorigin', 
  'backgroundposition', 'backgroundrepeat', 'backgroundsize', 'baselineshift', 'bookmarklabel', 
  'bookmarklevel', 'bookmarktarget', 'border', 'borderbottom', 'borderbottomcolor', 
  'borderbottomleftradius', 'borderbottomrightradius', 'borderbottomstyle', 'borderbottomwidth', 
  'borderbreak', 'bordercollapse', 'bordercollapse', 'bordercolor', 'borderimage', 
  'borderleft', 'borderleftcolor', 'borderleftstyle', 'borderleftwidth', 'borderlength', 
  'borderradius', 'borderright', 'borderrightcolor', 'borderrightstyle', 'borderrightwidth', 
  'borderspacing', 'borderstyle', 'bordertop', 'bordertopcolor', 'bordertopleftradius', 
  'bordertoprightradius', 'bordertopstyle', 'bordertopwidth', 'borderwidth', 'bottom', 
  'boxalign', 'boxdirection', 'boxflex', 'boxflexgroup', 'boxlines', 'boxorient', 'boxpack', 
  'boxshadow', 'boxsizing', 'captionside', 'clear', 'clip', 'color', 'columncount', 
  'columnfill', 'columngap', 'columnrule', 'columnrulecolor', 'columnrulestyle', 'columnrulewidth', 
  'columns', 'columnspan', 'columnwidth', 'content', 'counterincrement', 'counterreset', 
  'crop', 'cue', 'cueafter', 'cuebefore', 'cursor', 'direction', 'display', 'display', 
  'dominantbaseline', 'dropinitialafteradjust', 'dropinitialafteralign', 'dropinitialbeforeadjust', 
  'dropinitialbeforealign', 'dropinitialsize', 'dropinitialvalue', 'emptycells', 'fit', 
  'fitposition', 'float', 'floatoffset', 'font', 'fontfamily', 'fontsize', 'fontsizeadjust', 
  'fontstretch', 'fontstyle', 'fontvariant', 'fontweight', 'gridcolumns', 'gridrows', 
  'hangingpunctuation', 'height', 'hyphenateafter', 'hyphenatebefore', 'hyphenatecharacter', 
  'hyphenatelines', 'hyphenateresource', 'hyphens', 'icon', 'imageorientation', 'imageresolution', 
  'inlineboxalign', 'left', 'letterspacing', 'lineheight', 'linestacking', 'linestackingruby', 
  'linestackingshift', 'linestackingstrategy', 'liststyle', 'liststyleimage', 'liststyleposition', 
  'liststyletype', 'margin', 'marginbottom', 'marginleft', 'marginright', 'margintop', 
  'mark', 'markafter', 'markbefore', 'markeroffset', 'marks', 'marqueedirection', 'marqueeloop', 
  'marqueeplaycount', 'marqueespeed', 'marqueestyle', 'maxheight', 'maxwidth', 'minheight', 
  'minwidth', 'moveto', 'navdown', 'navindex', 'navleft', 'navright', 'navup', 'opacity', 
  'orphans', 'outline', 'outlinecolor', 'outlineoffset', 'outlinestyle', 'outlinewidth', 
  'overflow', 'overflowstyle', 'overflowx', 'overflowy', 'padding', 'paddingbottom', 
  'paddingleft', 'paddingright', 'paddingtop', 'page', 'pagebreakafter', 'pagebreakbefore', 
  'pagebreakinside', 'pagepolicy', 'pause', 'pauseafter', 'pausebefore', 'perspective', 
  'perspectiveorigin', 'phonemes', 'position', 'punctuationtrim', 'quotes', 'resize', 
  'rest', 'restafter', 'restbefore', 'right', 'rotation', 'rotationpoint', 'rubyalign', 
  'rubyoverhang', 'rubyposition', 'rubyspan', 'size', 'speak', 'stringset', 'tablelayout', 
  'tabside', 'target', 'targetname', 'targetnew', 'targetposition', 'textalign', 'textalignlast', 
  'textdecoration', 'textemphasis', 'textheight', 'textindent', 'textjustify', 'textoutline', 
  'textreplace', 'textshadow', 'texttransform', 'textwrap', 'top', 'transform', 'transformorigin', 
  'transformstyle', 'transition', 'transitiondelay', 'transitionduration', 'transitionproperty', 
  'transitiontimingfunction', 'unicodebidi', 'verticalalign', 'voicebalance', 'voiceduration', 
  'voicefamily', 'voicepitch', 'voicepitchrange', 'voicerate', 'voicestress', 'voicevolume', 
  'whitespace', 'whitespacecollapse', 'width', 'windows', 'wordbreak', 'wordspacing', 
  'wordwrap', 'zindex'
]

values = {
  alignmentadjust:['afteredge', 'alphabetic', 'auto', 'baseline', 'beforeedge', 'central', 'hang', 'ideographic', 'middle', 'textafteredge', 'textbeforeedge'], 
  alignmentbaseline:['afteredge', 'alphabetic', 'baseline', 'beforeedge', 'central', 'hanging', 'ideographic', 'mathematical', 'middle', 'textafteredge', 'textbeforeedge', 'usescript'], 
  animationdirection:['alternate', 'normal'], animationname:['none'], 
  animationplaystate:['paused', 'running'], animationtimingfunction:['ease', 'easein', 'easeinout', 'easeout', 'linear'], 
  appearance:['button', 'checkbox', 'checkboxgroup', 'combobox', 'desktop', 'dialog', 'document', 'field', 'hyperlink', 'icon', 'inherit', 'listmenu', 'menu', 'menubar', 'menuitem', 'normal', 'outlinetree', 'password', 'popupmenu', 'pulldownmenu', 'pushbutton', 'radiobutton', 'radiogroup', 'range', 'signature', 'tab', 'tooltip', 'window', 'workspace'], 
  backfacevisibility:['hidden', 'visible'], backgroundattachment:['fixed', 'scroll'], 
  backgroundbreak:['boundingbox', 'continuous', 'eachbox'], backgroundclip:['borderbox', 'contentbox', 'noclip', 'paddingbox'], 
  backgroundimage:['none'], backgroundorigin:['borderbox', 'paddingbox'], 
  backgroundposition:['bottomcenter', 'bottomleft', 'bottomright', 'centercenter', 'centerleft', 'centerright', 'topcenter', 'topleft', 'topright'], 
  backgroundrepeat:['norepeat', 'repeat', 'repeatx', 'repeaty'], 
  backgroundsize:['auto', 'contain', 'cover'], baselineshift:['baseline', 'sub', 'super'], 
  bookmarklevel:['none'], borderbottomwidth:['medium', 'thick', 'thin'], 
  bordercollapse:['collapse', 'separate'], bordercollapse:['collapse', 'separate'], 
  borderimage:['none', 'repeat', 'round', 'stretch'], borderleftwidth:['medium', 'thick', 'thin'], 
  borderrightwidth:['medium', 'thick', 'thin'], borderstyle:['dashed', 'dotted', 'double', 'groove', 'hidden', 'inset', 'none', 'ridge', 'solid'], 
  bordertopwidth:['medium', 'thick', 'thin'], borderwidth:['medium', 'thick', 'thin'], 
  boxalign:['center', 'end', 'start'], boxdirection:['normal', 'reverse'], 
  boxlines:['multiple', 'single'], boxorient:['blockaxis', 'horizontal', 'inlineaxis', 'vertical'], 
  boxpack:['center', 'end', 'justify', 'start'], boxshadow:['none'], 
  boxsizing:['borderbox', 'contentbox', 'marginbox', 'paddingbox'], 
  captionside:['bottom', 'left', 'right', 'top'], clear:['both', 'left', 'none', 'right'], 
  columnfill:['auto', 'balance'], columnrulewidth:['medium', 'thick', 'thin'], 
  columnspan:['1', 'all'], content:['inhibit', 'none', 'normal'], 
  counterincrement:['none'], counterreset:['none'], cueafter:['inherit', 'loud', 'medium', 'none', 'soft', 'urisilent', 'xloud', 'xsoft'], 
  cuebefore:['inherit', 'loud', 'medium', 'none', 'soft', 'urisilent', 'xloud', 'xsoft'], 
  cursor:['auto', 'crosshair', 'default', 'eresize', 'help', 'move', 'neresize', 'nresize', 'nwresize', 'pointer', 'seresize', 'sresize', 'swresize', 'text', 'wait', 'wresize'], 
  direction:['inherit', 'ltr', 'rtl'], display:['block', 'compact', 'inline', 'inlineblock', 'inlinetable', 'listitem', 'none', 'ruby', 'rubybase', 'rubybasegroup', 'rubytext', 'rubytextgroup', 'runin', 'table', 'tablecaption', 'tablecell', 'tablecolumn', 'tablecolumngroup', 'tablefootergroup', 'tableheadergroup', 'tablerow', 'tablerowgroup'], 
  display:['listitem', 'none', 'normal'], dominantbaseline:['alphabetic', 'auto', 'central', 'hanging', 'ideographic', 'mathematical', 'middle', 'nochange', 'resetsize', 'textafteredge', 'textbeforeedge', 'usescript'], 
  dropinitialafteradjust:['afteredge', 'alphabetic', 'central', 'ideographic', 'middle', 'textafteredge'], 
  dropinitialbeforeadjust:['beforeedge', 'central', 'hanging', 'mathematical', 'middle', 'textbeforeedge'], 
  emptycells:['hide', 'show'], fit:['fill', 'hidden', 'meet', 'slice'], 
  fitposition:['bottom', 'center', 'left', 'right', 'top'], float:['left', 'none', 'right'], 
  font:['caption', 'icon', 'menu', 'messagebox', 'smallcaption', 'statusbar'], 
  fontsize:['inherit', 'large', 'larger', 'medium', 'small', 'smaller', 'xlarge', 'xsmall', 'xxlarge', 'xxsmall'], 
  fontsizeadjust:['inherit', 'none'], fontstretch:['condensed', 'expanded', 'extracondensed', 'extraexpanded', 'inherit', 'narrower', 'normal', 'semicondensed', 'semiexpanded', 'ultracondensed', 'ultraexpanded', 'wider'], 
  fontstyle:['inherit', 'italic', 'normal', 'oblique'], fontvariant:['inherit', 'normal', 'smallcaps'], 
  fontweight:['100', '200', '300', '400', '500', '600', '700', '800', '900', 'bold', 'bolder', 'inherit', 'lighter', 'normal'], 
  gridcolumns:['inherit', 'none'], gridrows:['inherit', 'none'], 
  hangingpunctuation:['end', 'endedge', 'none', 'start'], hyphenateresource:['none'], 
  hyphens:['auto', 'manual', 'none'], icon:['auto', 'inherit'], 
  imageresolution:['auto', 'normal'], inlineboxalign:['initial', 'last'], 
  linestackingruby:['excluderuby', 'includeruby'], linestackingshift:['considershifts', 'disregardshifts'], 
  linestackingstrategy:['blocklineheight', 'inlinelineheight', 'maxheight'], 
  liststyle:['liststyleimage', 'liststyleposition', 'liststyletype'], 
  liststyleimage:['none'], liststyleposition:['inside', 'outside'], 
  liststyletype:['armenian', 'asterisks', 'box', 'check', 'circle', 'cjkideographic', 'decimal', 'decimalleadingzero', 'diamond', 'disc', 'footnotes', 'georgian', 'hebrew', 'hiragana', 'hiraganairoha', 'hyphen', 'katakana', 'katakanairoha', 'loweralpha', 'lowergreek', 'lowerlatin', 'lowerroman', 'none', 'square', 'upperalpha', 'upperlatin', 'upperroman'], 
  margin:['marginbottom', 'marginleft', 'marginright', 'margintop'], 
  marks:['crop', 'cross', 'none'], marqueedirection:['forward', 'reverse'], 
  marqueespeed:['fast', 'normal', 'slow'], marqueestyle:['alternate', 'scroll', 'slide'], 
  maxheight:['none'], maxwidth:['none'], minheight:['inherit', 'none'], 
  minwidth:['inherit', 'none'], moveto:['here', 'normal'], navdown:['auto', 'inheritcurrent', 'root'], 
  navindex:['auto', 'inherit'], navleft:['auto', 'inheritcurrent', 'root'], 
  navright:['auto', 'inheritcurrent', 'root'], navup:['auto', 'inheritcurrent', 'root'], 
  outlinestyle:['dashed', 'dotted', 'double', 'groove', 'inset', 'none', 'outset', 'ridge', 'solid'], 
  outlinewidth:['medium', 'thick', 'thin'], overflow:['auto', 'hidden', 'nocontent', 'nodisplay', 'overflowx', 'overflowy', 'scroll', 'visible'], 
  overflowstyle:['auto', 'mar', 'marqueeline'], overflowx:['auto', 'hidden', 'no', 'nodisplay', 'scroll', 'visible'], 
  overflowy:['auto', 'hidden', 'no', 'nodisplay', 'scroll', 'visible'], 
  pagebreakafter:['always', 'auto', 'avoid', 'left'], pagebreakbefore:['always', 'auto', 'avoid', 'left'], 
  pagebreakinside:['auto', 'avoid'], pagepolicy:['first', 'last', 'start'], 
  pauseafter:['inherit', 'medium', 'none', 'strong', 'weak', 'xstrong', 'xweak'], 
  pausebefore:['inherit', 'medium', 'none', 'strong', 'weak', 'xstrong', 'xweak'], 
  perspective:['none'], perspectiveorigin:['bottom', 'bottomlength', 'center', 'center', 'center', 'center', 'left', 'left', 'length', 'length', 'percentage', 'right', 'rightpercentage', 'top', 'top'], 
  position:['absolute', 'relative', 'static'], punctuationtrim:['adjacent', 'end', 'none', 'start'], 
  quotes:['none'], resize:['both', 'horizontal', 'inherit', 'none', 'vertical'], 
  restafter:['inherit', 'medium', 'none', 'strong', 'weak', 'xstrong', 'xweak'], 
  restbefore:['inherit', 'medium', 'none', 'strong', 'weak', 'xstrong', 'xweak'], 
  rubyalign:['auto', 'center', 'distributeletter', 'distributespace', 'end', 'left', 'lineedge', 'right', 'start'], 
  rubyoverhang:['auto', 'end', 'none', 'start'], rubyposition:['after', 'before', 'inline', 'right'], 
  rubyspan:['attrx', 'none'], size:['auto', 'landscape', 'portrait'], 
  speak:['digits', 'inherit', 'literalpunctuation', 'none', 'nopunctuation', 'normal', 'spellout'], 
  tablelayout:['auto', 'fixed'], tabside:['bottom', 'left', 'right', 'top'], 
  targetname:['current', 'modal', 'new', 'parent', 'root'], targetnew:['none', 'tab', 'window'], 
  targetposition:['above', 'behind', 'front'], textalign:['center', 'end', 'justify', 'left', 'right', 'start'], 
  textalignlast:['center', 'end', 'justify', 'left', 'right', 'start'], 
  textdecoration:['blink', 'linethrough', 'none', 'overline', 'underline'], 
  textemphasis:['accent', 'after', 'before', 'circle', 'disc', 'dot', 'none'], 
  textheight:['auto', 'fontsize', 'maxsize', 'textsize'], textjustify:['auto', 'distribute', 'intercluster', 'interideograph', 'interword', 'kashida', 'tibetan'], 
  textoutline:['none'], textreplace:['none'], textshadow:['none'], 
  texttransform:['capitalize', 'lowercase', 'none', 'uppercase'], 
  textwrap:['none', 'normal', 'suppress', 'unrestricted'], transform:['matrix', 'matrix3d', 'none', 'perspective', 'rotate', 'rotate3d', 'rotatex', 'rotatey', 'rotatez', 'scale', 'scale3d', 'scalex', 'scaley', 'scalez', 'skew', 'skewx', 'skewy', 'translate3d', 'translatex', 'translatey', 'translatez'], 
  transformorigin:['bottom', 'center', 'left', 'right', 'top'], 
  transformstyle:['flat', 'preserve3d'], transitionproperty:['all', 'none'], 
  transitiontimingfunction:['ease', 'easein', 'easeinout', 'easeout', 'linear'], 
  unicodebidi:['bidi', 'embed', 'normal'], verticalalign:['baseline', 'bottom', 'middle', 'sub', 'super', 'textbottom', 'texttop', 'top'], 
  voicebalance:['center', 'inherit', 'left', 'leftwards', 'right', 'rightwards'], 
  voicefamily:['agegenericvoicenumber', 'inherit', 'specificvoice'], 
  voicepitch:['high', 'inherit', 'low', 'medium', 'xhigh', 'xlow'], 
  voicepitchrange:['high', 'inherit', 'low', 'medium', 'xhigh', 'xlow'], 
  voicerate:['fast', 'inherit', 'medium', 'slow', 'xfast', 'xslow'], 
  voicestress:['inherit', 'moderate', 'none', 'reduced', 'strong'], 
  voicevolume:['inherit', 'loud', 'medium', 'silent', 'soft', 'xloud', 'xsoft'], 
  whitespace:['normal', 'nowrap', 'pre', 'preline', 'prewrap'], 
  whitespacecollapse:['collapse', 'discard', 'preserve', 'preservebreaks'], 
  wordbreak:['breakall', 'breakstrict', 'keepall', 'loose', 'normal'], 
  wordwrap:['breakword', 'normal']
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