
log = (args...) -> console.log 'TCLAS:', args...

module.exports = (options, cssObj) ->
  if arguments.length < 2
    cssObj = options
    options = {}
  
  classes  = {}
  cssStack = [options.namespace ? 'global']
  css = ''
  
  do getClasses = (cssObj) ->
    for klass, val of cssObj
      parentClass = cssStack.join '-'
      className = parentClass + '-' + klass
      
      if klass is '_'
        if typeof val isnt 'string'
          throw new Error \
            'teacss Error: _ property must be a string: ' + parentClass
        css += "\n.#{parentClass}{\n#{val}\n}"
        
      else if typeof val is 'string'
        css += "\n.#{className}{\n#{val}\n}"
      
      else
        if klass of classes
          throw new Error 'teacss Error: Duplicate class name: ' + className
            
        classes[klass] = className
        
        if typeof val is 'object'
          cssStack.push klass
          getClasses val
          cssStack.pop()
          
        else
          throw new Error \
            'teacss Error: property must be _ or an object: ' + className
      
  (document.head.appendChild document.createElement('style')).textContent = css + '\n'

  (klass, ele = document.body) ->
    ele.querySelector '.' + classes[klass]
    
