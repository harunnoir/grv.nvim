local M = {}

function M.get(c, opts)
  local highlights = {}

  -- diff
  highlights.diffAdded = 'Added'
  highlights.diffRemoved = 'Removed'
  highlights.diffChanged = 'Changed'
  highlights.diffOldFile = 'Yellow'
  highlights.diffNewFile = 'Orange'
  highlights.diffFile = 'Aqua'
  highlights.diffLine = 'Grey'
  highlights.diffIndexLine = 'Purple'

  -- vim-plug
  highlights.plug1 = { fg = c.orange[1], bold = true }
  highlights.plugNumber = { fg = c.yellow[1], bold = true }
  highlights.plug2 = 'Green'
  highlights.plugBracket = 'Grey'
  highlights.plugName = 'Aqua'
  highlights.plugDash = 'Orange'
  highlights.plugError = 'Red'
  highlights.plugNotLoaded = 'Grey'
  highlights.plugRelDate = 'Grey'
  highlights.plugH2 = 'Orange'
  highlights.plugMessage = 'Orange'
  highlights.plugStar = 'Red'
  highlights.plugUpdate = 'Blue'
  highlights.plugDeleted = 'Grey'
  highlights.plugEdge = 'Yellow'
  highlights.plugSha = 'Green'

  -- coctree
  highlights.CocTreeOpenClose = 'Aqua'
  highlights.CocTreeDescription = 'Grey'

  -- coc-explorer
  highlights.CocExplorerBufferRoot = 'Orange'
  highlights.CocExplorerBufferExpandIcon = 'Aqua'
  highlights.CocExplorerBufferBufnr = 'Purple'
  highlights.CocExplorerBufferModified = 'Yellow'
  highlights.CocExplorerBufferReadonly = 'Red'
  highlights.CocExplorerBufferBufname = 'Grey'
  highlights.CocExplorerBufferFullpath = 'Grey'
  highlights.CocExplorerFileRoot = 'Orange'
  highlights.CocExplorerFileRootName = 'Green'
  highlights.CocExplorerFileExpandIcon = 'Aqua'
  highlights.CocExplorerFileFullpath = 'Grey'
  highlights.CocExplorerFileDirectory = 'Green'
  highlights.CocExplorerFileGitStaged = 'Purple'
  highlights.CocExplorerFileGitUnstaged = 'Yellow'

  -- tagbar
  highlights.TagbarFoldIcon = 'Green'
  highlights.TagbarSignature = 'Green'
  highlights.TagbarKind = 'Red'
  highlights.TagbarScope = 'Orange'
  highlights.TagbarNestedKind = 'Aqua'
  highlights.TagbarVisibilityPrivate = 'Red'
  highlights.TagbarVisibilityPublic = 'Blue'

  -- vista.vim
  highlights.VistaBracket = 'Grey'
  highlights.VistaChildrenNr = 'Orange'
  highlights.VistaScope = 'Red'
  highlights.VistaTag = 'Green'
  highlights.VistaPrefix = 'Grey'
  highlights.VistaIcon = 'Orange'
  highlights.VistaScopeKind = 'Yellow'
  highlights.VistaColon = 'Grey'
  highlights.VistaLineNr = 'Grey'
  highlights.VistaHeadNr = 'Fg'
  highlights.VistaPublic = 'Green'
  highlights.VistaProtected = 'Yellow'
  highlights.VistaPrivate = 'Red'

  -- symbols-outline.nvim
  highlights.FocusedSymbol = 'NormalFloat'

  -- aerial.nvim
  highlights.AerialLine = 'CursorLine'
  highlights.AerialGuide = 'LineNr'

  -- markdown
  highlights.markdownH1 = { fg = c.red[1], bold = true }
  highlights.markdownH2 = { fg = c.orange[1], bold = true }
  highlights.markdownH3 = { fg = c.yellow[1], bold = true }
  highlights.markdownH4 = { fg = c.green[1], bold = true }
  highlights.markdownH5 = { fg = c.blue[1], bold = true }
  highlights.markdownH6 = { fg = c.purple[1], bold = true }
  highlights.markdownItalic = { italic = true }
  highlights.markdownBold = { bold = true }
  highlights.markdownItalicDelimiter = { fg = c.grey1[1], italic = true }
  highlights.markdownUrl = 'TSURI'
  highlights.markdownCode = 'Green'
  highlights.markdownCodeBlock = 'Aqua'
  highlights.markdownCodeDelimiter = 'Aqua'
  highlights.markdownBlockquote = 'Grey'
  highlights.markdownListMarker = 'Red'
  highlights.markdownOrderedListMarker = 'Red'
  highlights.markdownRule = 'Purple'
  highlights.markdownHeadingRule = 'Grey'
  highlights.markdownUrlDelimiter = 'Grey'
  highlights.markdownLinkDelimiter = 'Grey'
  highlights.markdownLinkTextDelimiter = 'Grey'
  highlights.markdownHeadingDelimiter = 'Grey'
  highlights.markdownLinkText = 'Purple'
  highlights.markdownUrlTitleDelimiter = 'Green'
  highlights.markdownIdDeclaration = 'markdownLinkText'
  highlights.markdownBoldDelimiter = 'Grey'
  highlights.markdownId = 'Yellow'

  -- vim-markdown
  highlights.mkdURL = { fg = c.blue[1], underline = true }
  highlights.mkdInlineURL = { fg = c.purple[1], underline = true }
  highlights.mkdItalic = { fg = c.grey1[1], italic = true }
  highlights.mkdCodeDelimiter = 'Aqua'
  highlights.mkdBold = 'Grey'
  highlights.mkdLink = 'Purple'
  highlights.mkdHeading = 'Grey'
  highlights.mkdListItem = 'Red'
  highlights.mkdRule = 'Purple'
  highlights.mkdDelimiter = 'Grey'
  highlights.mkdId = 'Yellow'

  -- markdown treesitter
  highlights['@markup.heading.1.markdown'] = 'markdownH1'
  highlights['@markup.heading.2.markdown'] = 'markdownH2'
  highlights['@markup.heading.3.markdown'] = 'markdownH3'
  highlights['@markup.heading.4.markdown'] = 'markdownH4'
  highlights['@markup.heading.5.markdown'] = 'markdownH5'
  highlights['@markup.heading.6.markdown'] = 'markdownH6'
  highlights['@markup.heading.1.marker.markdown'] = '@conceal'
  highlights['@markup.heading.2.marker.markdown'] = '@conceal'
  highlights['@markup.heading.3.marker.markdown'] = '@conceal'
  highlights['@markup.heading.4.marker.markdown'] = '@conceal'
  highlights['@markup.heading.5.marker.markdown'] = '@conceal'
  highlights['@markup.heading.6.marker.markdown'] = '@conceal'
  if not require('grv.util').has_nvim('0.10') then
    highlights['@markup.italic'] = { italic = true }
    highlights['@markup.strikethrough'] = { strikethrough = true }
  end

  -- vimwiki
  highlights.VimwikiHeader1 = { fg = c.red[1], bold = true }
  highlights.VimwikiHeader2 = { fg = c.orange[1], bold = true }
  highlights.VimwikiHeader3 = { fg = c.yellow[1], bold = true }
  highlights.VimwikiHeader4 = { fg = c.green[1], bold = true }
  highlights.VimwikiHeader5 = { fg = c.blue[1], bold = true }
  highlights.VimwikiHeader6 = { fg = c.purple[1], bold = true }
  highlights.VimwikiLink = { fg = c.blue[1], underline = true }
  highlights.VimwikiItalic = { italic = true }
  highlights.VimwikiBold = { bold = true }
  highlights.VimwikiUnderline = { underline = true }
  highlights.VimwikiList = 'Red'
  highlights.VimwikiTag = 'Aqua'
  highlights.VimwikiCode = 'Green'
  highlights.VimwikiHR = 'Yellow'
  highlights.VimwikiHeaderChar = 'Grey'
  highlights.VimwikiMarkers = 'Grey'
  highlights.VimwikiPre = 'Green'
  highlights.VimwikiPreDelim = 'Green'
  highlights.VimwikiNoExistsLink = 'Red'

  -- rst
  highlights.rstStandaloneHyperlink = { fg = c.purple[1], underline = true }
  highlights.rstSubstitutionReference = 'Blue'
  highlights.rstInterpretedTextOrHyperlinkReference = 'Aqua'
  highlights.rstTableLines = 'Grey'

  -- tex
  highlights.texStatement = 'Green'
  highlights.texOnlyMath = 'Grey'
  highlights.texDefName = 'Yellow'
  highlights.texNewCmd = 'Orange'
  highlights.texCmdName = 'Blue'
  highlights.texBeginEnd = 'Red'
  highlights.texBeginEndName = 'Blue'
  highlights.texDocType = 'Purple'
  highlights.texDocTypeArgs = 'Orange'
  highlights.texDelimiter = 'Conceal'

  -- vimtex
  highlights.texCmd = 'Green'
  highlights.texCmdClass = 'Purple'
  highlights.texCmdTitle = 'Purple'
  highlights.texCmdAuthor = 'Purple'
  highlights.texCmdPart = 'Purple'
  highlights.texCmdBib = 'Purple'
  highlights.texCmdPackage = 'Yellow'
  highlights.texCmdNew = 'Yellow'
  highlights.texArgNew = 'Orange'
  highlights.texPartArgTitle = 'BlueItalic'
  highlights.texFileArg = 'BlueItalic'
  highlights.texEnvArgName = 'BlueItalic'
  highlights.texMathEnvArgName = 'BlueItalic'
  highlights.texTitleArg = 'BlueItalic'
  highlights.texAuthorArg = 'BlueItalic'

  -- html
  highlights.htmlH1 = { fg = c.red[1], bold = true }
  highlights.htmlH2 = { fg = c.orange[1], bold = true }
  highlights.htmlH3 = { fg = c.yellow[1], bold = true }
  highlights.htmlH4 = { fg = c.green[1], bold = true }
  highlights.htmlH5 = { fg = c.blue[1], bold = true }
  highlights.htmlH6 = { fg = c.purple[1], bold = true }
  highlights.htmlLink = { underline = true }
  highlights.htmlBold = { bold = true }
  highlights.htmlBoldUnderline = { bold = true, underline = true }
  highlights.htmlBoldItalic = { bold = true, italic = true }
  highlights.htmlBoldUnderlineItalic = { bold = true, underline = true, italic = true }
  highlights.htmlUnderline = { underline = true }
  highlights.htmlUnderlineItalic = { underline = true, italic = true }
  highlights.htmlItalic = { italic = true }
  highlights.htmlTag = 'Green'
  highlights.htmlEndTag = 'Blue'
  highlights.htmlTagN = 'OrangeItalic'
  highlights.htmlTagName = 'OrangeItalic'
  highlights.htmlArg = 'Aqua'
  highlights.htmlScriptTag = 'Purple'
  highlights.htmlSpecialTagName = 'RedItalic'

  -- treesitter html
  highlights.htmlTSText = 'TSNone'
  highlights['@text.html'] = 'htmlTSText'

  -- xml
  highlights.xmlTag = 'Green'
  highlights.xmlEndTag = 'Blue'
  highlights.xmlTagName = 'OrangeItalic'
  highlights.xmlEqual = 'Orange'
  highlights.xmlAttrib = 'Aqua'
  highlights.xmlEntity = 'Red'
  highlights.xmlEntityPunct = 'Red'
  highlights.xmlDocTypeDecl = 'Grey'
  highlights.xmlDocTypeKeyword = 'PurpleItalic'
  highlights.xmlCdataStart = 'Grey'
  highlights.xmlCdataCdata = 'Purple'

  -- css
  highlights.cssAttrComma = 'Fg'
  highlights.cssBraces = 'Grey'
  highlights.cssTagName = 'PurpleItalic'
  highlights.cssClassNameDot = 'Red'
  highlights.cssClassName = 'RedItalic'
  highlights.cssFunctionName = 'Yellow'
  highlights.cssAttr = 'Orange'
  highlights.cssProp = 'Aqua'
  highlights.cssCommonAttr = 'Yellow'
  highlights.cssPseudoClassId = 'Blue'
  highlights.cssPseudoClassFn = 'Green'
  highlights.cssPseudoClass = 'Purple'
  highlights.cssImportant = 'RedItalic'
  highlights.cssSelectorOp = 'Orange'
  highlights.cssSelectorOp2 = 'Orange'
  highlights.cssColor = 'Green'
  highlights.cssAttributeSelector = 'Aqua'
  highlights.cssUnitDecorators = 'Orange'
  highlights.cssValueLength = 'Green'
  highlights.cssValueInteger = 'Green'
  highlights.cssValueNumber = 'Green'
  highlights.cssValueAngle = 'Green'
  highlights.cssValueTime = 'Green'
  highlights.cssValueFrequency = 'Green'
  highlights.cssVendor = 'Grey'
  highlights.cssNoise = 'Grey'

  -- scss
  highlights.scssMixinName = 'Yellow'
  highlights.scssSelectorChar = 'Red'
  highlights.scssSelectorName = 'RedItalic'
  highlights.scssInterpolationDelimiter = 'Green'
  highlights.scssVariableValue = 'Green'
  highlights.scssNull = 'Purple'
  highlights.scssBoolean = 'Purple'
  highlights.scssVariableAssignment = 'Grey'
  highlights.scssForKeyword = 'PurpleItalic'
  highlights.scssAttribute = 'Orange'
  highlights.scssFunctionName = 'Yellow'

  -- sass
  highlights.sassProperty = 'Aqua'
  highlights.sassAmpersand = 'Orange'
  highlights.sassClass = 'RedItalic'
  highlights.sassClassChar = 'Red'
  highlights.sassMixing = 'PurpleItalic'
  highlights.sassMixinName = 'Orange'
  highlights.sassCssAttribute = 'Yellow'
  highlights.sassInterpolationDelimiter = 'Green'
  highlights.sassFunction = 'Yellow'
  highlights.sassControl = 'RedItalic'
  highlights.sassFor = 'RedItalic'
  highlights.sassFunctionName = 'GreenBold'

  -- less
  highlights.lessMixinChar = 'Grey'
  highlights.lessClass = 'RedItalic'
  highlights.lessVariable = 'Blue'
  highlights.lessAmpersandChar = 'Orange'
  highlights.lessFunction = 'Yellow'

  -- javascript
  highlights.javaScriptNull = 'Aqua'
  highlights.javaScriptIdentifier = 'Orange'
  highlights.javaScriptParens = 'Grey'
  highlights.javaScriptBraces = 'Grey'
  highlights.javaScriptGlobal = 'Purple'
  highlights.javaScriptMessage = 'Yellow'
  highlights.javaScriptFunction = 'RedItalic'
  highlights.javaScriptOperator = 'Orange'
  highlights.javaScriptMember = 'Aqua'

  -- vim-javascript
  highlights.jsThis = 'Purple'
  highlights.jsUndefined = 'Aqua'
  highlights.jsNull = 'Aqua'
  highlights.jsNan = 'Aqua'
  highlights.jsSuper = 'Purple'
  highlights.jsPrototype = 'Purple'
  highlights.jsFunction = 'RedItalic'
  highlights.jsGlobalNodeObjects = 'PurpleItalic'
  highlights.jsGlobalObjects = 'Yellow'
  highlights.jsArrowFunction = 'Purple'
  highlights.jsArrowFuncArgs = 'Blue'
  highlights.jsFuncArgs = 'Blue'
  highlights.jsObjectProp = 'Aqua'
  highlights.jsVariableDef = 'Blue'
  highlights.jsObjectKey = 'Aqua'
  highlights.jsParen = 'Blue'
  highlights.jsFunctionKey = 'GreenBold'
  highlights.jsClassDefinition = 'Yellow'
  highlights.jsDot = 'Grey'
  highlights.jsDestructuringBlock = 'Blue'
  highlights.jsSpreadExpression = 'Purple'
  highlights.jsSpreadOperator = 'Green'
  highlights.jsModuleKeyword = 'Yellow'
  highlights.jsObjectValue = 'Blue'
  highlights.jsTemplateExpression = 'Yellow'
  highlights.jsTemplateBraces = 'Yellow'
  highlights.jsClassMethodType = 'Orange'

  -- javascript LSP
  highlights['@lsp.typemod.variable.defaultLibrary.javascript'] = 'TSConstBuiltin'
  highlights['@lsp.typemod.variable.defaultLibrary.javascriptreact'] = 'TSConstBuiltin'

  -- vim-jsx-pretty
  highlights.jsxTagName = 'OrangeItalic'
  highlights.jsxOpenPunct = 'Green'
  highlights.jsxClosePunct = 'Blue'
  highlights.jsxEscapeJs = 'Blue'
  highlights.jsxAttrib = 'Aqua'

  -- typescript (yats)
  highlights.typescriptMethodAccessor = 'OrangeItalic'
  highlights.typescriptVariable = 'Orange'
  highlights.typescriptVariableDeclaration = 'Blue'
  highlights.typescriptTypeReference = 'Yellow'
  highlights.typescriptBraces = 'Grey'
  highlights.typescriptEnumKeyword = 'RedItalic'
  highlights.typescriptEnum = 'Yellow'
  highlights.typescriptIdentifierName = 'Aqua'
  highlights.typescriptProp = 'Aqua'
  highlights.typescriptCall = 'Blue'
  highlights.typescriptInterfaceName = 'Yellow'
  highlights.typescriptMember = 'Aqua'
  highlights.typescriptArrowFunc = 'Purple'
  highlights.typescriptAbstract = 'Orange'
  highlights.typescriptClassName = 'Yellow'
  highlights.typescriptClassHeritage = 'Yellow'
  highlights.typescriptInterfaceHeritage = 'Yellow'
  highlights.typescriptIdentifier = 'Purple'
  highlights.typescriptGlobal = 'Purple'
  highlights.typescriptOperator = 'RedItalic'
  highlights.typescriptNodeGlobal = 'PurpleItalic'
  highlights.typescriptExport = 'PurpleItalic'
  highlights.typescriptDefaultParam = 'Orange'
  highlights.typescriptImport = 'PurpleItalic'
  highlights.typescriptTypeParameter = 'Yellow'
  highlights.typescriptReadonlyModifier = 'Orange'
  highlights.typescriptAccessibilityModifier = 'Orange'
  highlights.typescriptAmbientDeclaration = 'RedItalic'
  highlights.typescriptTemplateSubstitution = 'Yellow'
  highlights.typescriptTemplateSB = 'Yellow'
  highlights.typescriptExceptions = 'RedItalic'
  highlights.typescriptCastKeyword = 'RedItalic'
  highlights.typescriptOptionalMark = 'Orange'
  highlights.typescriptNull = 'Aqua'
  highlights.typescriptMappedIn = 'RedItalic'
  highlights.typescriptFuncTypeArrow = 'Purple'
  highlights.typescriptTernaryOp = 'Orange'
  highlights.typescriptParenExp = 'Blue'
  highlights.typescriptIndexExpr = 'Blue'
  highlights.typescriptDotNotation = 'Grey'
  highlights.typescriptSource = 'PurpleItalic'
  highlights.typescriptMessage = 'Yellow'
  highlights.typescriptGlobalObjects = 'Aqua'
  highlights.typescriptInterpolation = 'Yellow'
  highlights.typescriptInterpolationDelimiter = 'Yellow'

  -- typescript tree-sitter overrides
  highlights.tsxTSConstructor = 'TSType'
  highlights['@constructor.tsx'] = 'tsxTSConstructor'
  highlights['@punctuation.special.typescript'] = 'TSOperator'
  highlights['@punctuation.special.tsx'] = 'TSOperator'
  highlights['@lsp.typemod.variable.defaultLibrary.typescript'] = 'TSConstBuiltin'
  highlights['@lsp.typemod.variable.defaultLibrary.typescriptreact'] = 'TSConstBuiltin'

  -- dart
  highlights.dartCoreClasses = 'Aqua'
  highlights.dartTypeName = 'Aqua'
  highlights.dartInterpolation = 'Blue'
  highlights.dartTypeDef = 'RedItalic'
  highlights.dartClassDecl = 'RedItalic'
  highlights.dartLibrary = 'PurpleItalic'
  highlights.dartMetadata = 'Blue'

  -- coffee
  highlights.coffeeExtendedOp = 'Orange'
  highlights.coffeeSpecialOp = 'Fg'
  highlights.coffeeDotAccess = 'Grey'
  highlights.coffeeCurly = 'Grey'
  highlights.coffeeParen = 'Grey'
  highlights.coffeeBracket = 'Grey'
  highlights.coffeeOperator = 'RedItalic'
  highlights.coffeeStatement = 'Orange'
  highlights.coffeeSpecialIdent = 'Purple'
  highlights.coffeeObject = 'Purple'
  highlights.coffeeObjAssign = 'Aqua'

  -- purescript
  highlights.purescriptModuleKeyword = 'PurpleItalic'
  highlights.purescriptModule = 'Aqua'
  highlights.purescriptModuleParams = 'Blue'
  highlights.purescriptAsKeyword = 'OrangeItalic'
  highlights.purescriptHidingKeyword = 'OrangeItalic'
  highlights.purescriptWhere = 'OrangeItalic'
  highlights.purescriptIdentifier = 'Blue'
  highlights.purescriptFunction = 'Yellow'
  highlights.purescriptType = 'Aqua'

  -- c/cpp
  highlights.cppSTLnamespace = 'Purple'
  highlights.cppSTLtype = 'Yellow'
  highlights.cppAccess = 'PurpleItalic'
  highlights.cppStructure = 'RedItalic'
  highlights.cppSTLios = 'Aqua'
  highlights.cppSTLiterator = 'PurpleItalic'
  highlights.cppSTLexception = 'Purple'
  highlights.cppSTLVariable = 'Aqua'

  -- objc
  highlights.objcModuleImport = 'PurpleItalic'
  highlights.objcException = 'RedItalic'
  highlights.objcProtocolList = 'Aqua'
  highlights.objcObjDef = 'PurpleItalic'
  highlights.objcDirective = 'RedItalic'
  highlights.objcPropertyAttribute = 'Orange'
  highlights.objcHiddenArgument = 'Aqua'

  -- cs
  highlights.csUnspecifiedStatement = 'PurpleItalic'
  highlights.csStorage = 'RedItalic'
  highlights.csClass = 'RedItalic'
  highlights.csNewType = 'Aqua'
  highlights.csContextualStatement = 'PurpleItalic'
  highlights.csInterpolationDelimiter = 'Yellow'
  highlights.csInterpolation = 'Yellow'

  -- python
  highlights.pythonBuiltin = 'Yellow'
  highlights.pythonExceptions = 'Purple'
  highlights.pythonDecoratorName = 'Blue'
  highlights.pythonExClass = 'Purple'
  highlights.pythonBuiltinType = 'Yellow'
  highlights.pythonBuiltinObj = 'Blue'
  highlights.pythonDottedName = 'PurpleItalic'
  highlights.pythonBuiltinFunc = 'GreenBold'
  highlights.pythonFunction = 'AquaBold'
  highlights.pythonDecorator = 'Orange'
  highlights.pythonInclude = 'Include'
  highlights.pythonImport = 'PreProc'
  highlights.pythonRun = 'Blue'
  highlights.pythonCoding = 'Grey'
  highlights.pythonOperator = 'Orange'
  highlights.pythonConditional = 'RedItalic'
  highlights.pythonRepeat = 'RedItalic'
  highlights.pythonException = 'RedItalic'
  highlights.pythonNone = 'Aqua'
  highlights.pythonDot = 'Grey'

  -- semshi
  highlights.semshiUnresolved = { fg = c.yellow[1], undercurl = true }
  highlights.semshiImported = 'TSInclude'
  highlights.semshiParameter = 'TSParameter'
  highlights.semshiParameterUnused = 'Grey'
  highlights.semshiSelf = 'TSVariableBuiltin'
  highlights.semshiGlobal = 'TSType'
  highlights.semshiBuiltin = 'TSTypeBuiltin'
  highlights.semshiAttribute = 'TSAttribute'
  highlights.semshiLocal = 'TSKeyword'
  highlights.semshiFree = 'TSKeyword'
  highlights.semshiSelected = 'CurrentWord'
  highlights.semshiErrorSign = 'RedSign'
  highlights.semshiErrorChar = 'RedSign'

  -- lua
  highlights.luaFunc = 'GreenBold'
  highlights.luaFunction = 'Aqua'
  highlights.luaTable = 'Fg'
  highlights.luaIn = 'RedItalic'
  highlights.luaFuncCall = 'GreenBold'
  highlights.luaLocal = 'Orange'
  highlights.luaSpecialValue = 'GreenBold'
  highlights.luaBraces = 'Grey'
  highlights.luaBuiltIn = 'Purple'
  highlights.luaNoise = 'Grey'
  highlights.luaLabel = 'Purple'
  highlights.luaFuncTable = 'Yellow'
  highlights.luaFuncArgName = 'Blue'
  highlights.luaEllipsis = 'Orange'
  highlights.luaDocTag = 'Green'
  highlights.luaTSConstructor = 'luaBraces'
  highlights['@constructor.lua'] = 'luaTSConstructor'

  -- moon
  highlights.moonInterpDelim = 'Yellow'
  highlights.moonInterp = 'Blue'
  highlights.moonFunction = 'Green'
  highlights.moonLuaFunc = 'AquaBold'
  highlights.moonSpecialVar = 'Purple'
  highlights.moonObject = 'Yellow'
  highlights.moonDotAccess = 'Grey'

  -- java
  highlights.javaClassDecl = 'RedItalic'
  highlights.javaMethodDecl = 'RedItalic'
  highlights.javaVarArg = 'Green'
  highlights.javaAnnotation = 'Blue'
  highlights.javaUserLabel = 'Purple'
  highlights.javaTypedef = 'Aqua'

  -- kotlin
  highlights.ktSimpleInterpolation = 'Yellow'
  highlights.ktComplexInterpolation = 'Yellow'
  highlights.ktComplexInterpolationBrace = 'Yellow'
  highlights.ktStructure = 'RedItalic'
  highlights.ktKeyword = 'Aqua'

  -- scala
  highlights.scalaNameDefinition = 'Aqua'
  highlights.scalaInterpolationBoundary = 'Yellow'
  highlights.scalaInterpolation = 'Blue'
  highlights.scalaTypeOperator = 'Orange'
  highlights.scalaOperator = 'Orange'
  highlights.scalaKeywordModifier = 'Orange'

  -- go
  highlights.goPackage = 'Define'
  highlights.goImport = 'Include'
  highlights.goVar = 'OrangeItalic'
  highlights.goConst = 'goVar'
  highlights.goType = 'Yellow'
  highlights.goSignedInts = 'goType'
  highlights.goUnsignedInts = 'goType'
  highlights.goFloats = 'goType'
  highlights.goComplexes = 'goType'
  highlights.goVarDefs = 'Aqua'
  highlights.goDeclType = 'OrangeItalic'
  highlights.goFunctionCall = 'Function'
  highlights.goPredefinedIdentifiers = 'Aqua'
  highlights.goBuiltins = 'GreenBold'
  highlights.goVarArgs = 'Grey'
  highlights.goTSInclude = 'Purple'
  highlights.goTSNamespace = 'Fg'
  highlights.goTSConstBuiltin = 'AquaItalic'
  highlights['@include.go'] = 'goTSInclude'
  highlights['@namespace.go'] = 'goTSNamespace'
  highlights['@module.go'] = 'goTSNamespace'
  highlights['@constant.builtin.go'] = 'goTSConstBuiltin'
  highlights['@lsp.typemod.variable.defaultLibrary.go'] = 'goTSConstBuiltin'
  highlights['@lsp.type.namespace.go'] = 'goTSNamespace'

  -- rust
  highlights.rustStructure = 'Orange'
  highlights.rustIdentifier = 'Purple'
  highlights.rustModPath = 'Orange'
  highlights.rustModPathSep = 'Grey'
  highlights.rustSelf = 'Blue'
  highlights.rustSuper = 'Blue'
  highlights.rustDeriveTrait = 'PurpleItalic'
  highlights.rustEnumVariant = 'Purple'
  highlights.rustMacroVariable = 'Blue'
  highlights.rustAssert = 'Aqua'
  highlights.rustPanic = 'Aqua'
  highlights.rustPubScopeCrate = 'PurpleItalic'
  highlights.CocRustChainingHint = 'Grey'
  highlights.CocRustTypeHint = 'Grey'

  -- swift
  highlights.swiftInterpolatedWrapper = 'Yellow'
  highlights.swiftInterpolatedString = 'Blue'
  highlights.swiftProperty = 'Aqua'
  highlights.swiftTypeDeclaration = 'Orange'
  highlights.swiftClosureArgument = 'Purple'

  -- php
  highlights.phpVarSelector = 'Blue'
  highlights.phpDefine = 'OrangeItalic'
  highlights.phpStructure = 'RedItalic'
  highlights.phpSpecialFunction = 'GreenBold'
  highlights.phpInterpSimpleCurly = 'Yellow'
  highlights.phpComparison = 'Orange'
  highlights.phpMethodsVar = 'Aqua'
  highlights.phpMemberSelector = 'Green'
  highlights.phpParent = 'Grey'
  highlights.phpNowDoc = 'Green'
  highlights.phpFunction = 'GreenBold'
  highlights.phpMethod = 'GreenBold'
  highlights.phpClass = 'Orange'
  highlights.phpSuperglobals = 'Purple'

  -- ruby
  highlights.rubyKeywordAsMethod = 'GreenBold'
  highlights.rubyInterpolation = 'Yellow'
  highlights.rubyInterpolationDelimiter = 'Yellow'
  highlights.rubyStringDelimiter = 'Green'
  highlights.rubyBlockParameterList = 'Blue'
  highlights.rubyDefine = 'RedItalic'
  highlights.rubyModuleName = 'Purple'
  highlights.rubyAccess = 'Orange'
  highlights.rubyAttribute = 'Yellow'
  highlights.rubyMacro = 'RedItalic'

  -- haskell
  highlights.haskellBrackets = 'Blue'
  highlights.haskellIdentifier = 'Yellow'
  highlights.haskellAssocType = 'Aqua'
  highlights.haskellQuotedType = 'Aqua'
  highlights.haskellType = 'Aqua'
  highlights.haskellDeclKeyword = 'RedItalic'
  highlights.haskellWhere = 'RedItalic'
  highlights.haskellDeriving = 'PurpleItalic'
  highlights.haskellForeignKeywords = 'PurpleItalic'

  -- perl
  highlights.perlStatementPackage = 'PurpleItalic'
  highlights.perlStatementInclude = 'PurpleItalic'
  highlights.perlStatementStorage = 'Orange'
  highlights.perlStatementList = 'Orange'
  highlights.perlMatchStartEnd = 'Orange'
  highlights.perlVarSimpleMemberName = 'Aqua'
  highlights.perlVarSimpleMember = 'Fg'
  highlights.perlMethod = 'GreenBold'

  -- pod
  highlights.podVerbatimLine = 'Green'
  highlights.podCmdText = 'Yellow'

  -- ocaml
  highlights.ocamlArrow = 'Orange'
  highlights.ocamlEqual = 'Orange'
  highlights.ocamlOperator = 'Orange'
  highlights.ocamlKeyChar = 'Orange'
  highlights.ocamlModPath = 'Green'
  highlights.ocamlFullMod = 'Green'
  highlights.ocamlModule = 'Purple'
  highlights.ocamlConstructor = 'Aqua'
  highlights.ocamlFuncWith = 'Yellow'
  highlights.ocamlWith = 'Yellow'
  highlights.ocamlAnyVar = 'Blue'

  -- erlang
  highlights.erlangAtom = 'Aqua'
  highlights.erlangLocalFuncRef = 'GreenBold'
  highlights.erlangLocalFuncCall = 'GreenBold'
  highlights.erlangGlobalFuncRef = 'GreenBold'
  highlights.erlangGlobalFuncCall = 'GreenBold'
  highlights.erlangAttribute = 'PurpleItalic'
  highlights.erlangPipe = 'Orange'

  -- elixir
  highlights.elixirStringDelimiter = 'Green'
  highlights.elixirKeyword = 'Orange'
  highlights.elixirInterpolation = 'Yellow'
  highlights.elixirInterpolationDelimiter = 'Yellow'
  highlights.elixirSelf = 'Purple'
  highlights.elixirPseudoVariable = 'Purple'
  highlights.elixirModuleDefine = 'PurpleItalic'
  highlights.elixirBlockDefinition = 'RedItalic'
  highlights.elixirDefine = 'RedItalic'

  -- lisp
  highlights.lispAtomMark = 'Green'
  highlights.lispKey = 'Aqua'
  highlights.lispFunc = 'OrangeItalic'

  -- clojure
  highlights.clojureMacro = 'PurpleItalic'
  highlights.clojureFunc = 'AquaBold'
  highlights.clojureConstant = 'Yellow'
  highlights.clojureSpecial = 'RedItalic'
  highlights.clojureDefine = 'RedItalic'
  highlights.clojureKeyword = 'Orange'
  highlights.clojureVariable = 'Blue'
  highlights.clojureMeta = 'Yellow'
  highlights.clojureDeref = 'Yellow'

  -- matlab
  highlights.matlabSemicolon = 'Fg'
  highlights.matlabFunction = 'RedItalic'
  highlights.matlabImplicit = 'GreenBold'
  highlights.matlabDelimiter = 'Fg'
  highlights.matlabOperator = 'GreenBold'
  highlights.matlabArithmeticOperator = 'Orange'
  highlights.matlabRelationalOperator = 'Orange'
  highlights.matlabLogicalOperator = 'Orange'

  -- octave
  highlights.octaveDelimiter = 'Fg'
  highlights.octaveSemicolon = 'Grey'
  highlights.octaveOperator = 'Orange'
  highlights.octaveVariable = 'YellowItalic'
  highlights.octaveVarKeyword = 'YellowItalic'

  -- sh/bash
  highlights.shRange = 'Fg'
  highlights.shTestOpr = 'Orange'
  highlights.shOption = 'Aqua'
  highlights.bashStatement = 'Orange'
  highlights.shOperator = 'Orange'
  highlights.shQuote = 'Green'
  highlights.shSet = 'Orange'
  highlights.shSetList = 'Blue'
  highlights.shSnglCase = 'Orange'
  highlights.shVariable = 'Blue'
  highlights.shVarAssign = 'Orange'
  highlights.shCmdSubRegion = 'Green'
  highlights.shCommandSub = 'Orange'
  highlights.shFunction = 'GreenBold'
  highlights.shFunctionKey = 'RedItalic'

  -- zsh
  highlights.zshOptStart = 'PurpleItalic'
  highlights.zshOption = 'Blue'
  highlights.zshSubst = 'Yellow'
  highlights.zshFunction = 'GreenBold'
  highlights.zshDeref = 'Blue'
  highlights.zshTypes = 'Orange'
  highlights.zshVariableDef = 'Blue'

  -- fish
  highlights.fishStatement = 'Orange'
  highlights.fishLabel = 'RedItalic'
  highlights.fishCommandSub = 'Yellow'

  -- ps1
  highlights.ps1FunctionInvocation = 'AquaBold'
  highlights.ps1FunctionDeclaration = 'AquaBold'
  highlights.ps1InterpolationDelimiter = 'Yellow'
  highlights.ps1BuiltIn = 'Yellow'

  -- vimscript
  highlights.vimCommentTitle = { fg = c.grey1[1], bold = true }
  highlights.vimLet = 'Orange'
  highlights.vimFunction = 'GreenBold'
  highlights.vimIsCommand = 'Fg'
  highlights.vimUserFunc = 'GreenBold'
  highlights.vimFuncName = 'GreenBold'
  highlights.vimMap = 'PurpleItalic'
  highlights.vimNotation = 'Aqua'
  highlights.vimMapLhs = 'Green'
  highlights.vimMapRhs = 'Green'
  highlights.vimSetEqual = 'Yellow'
  highlights.vimSetSep = 'Fg'
  highlights.vimOption = 'Aqua'
  highlights.vimUserAttrbKey = 'Yellow'
  highlights.vimUserAttrb = 'Green'
  highlights.vimAutoCmdSfxList = 'Aqua'
  highlights.vimSynType = 'Orange'
  highlights.vimHiBang = 'Orange'
  highlights.vimSet = 'Yellow'
  -- vim brackets/parens/separators → grey0 to match treesitter punctuation
  highlights.vimParenSep    = { fg = c.grey0[1] }
  highlights.vimSep         = { fg = c.grey0[1] }
  highlights.vimOperParen   = { fg = c.grey0[1] }
  highlights.vimBracket     = { fg = c.grey0[1] }
  highlights.vimCurly       = { fg = c.grey0[1] }

  -- make
  highlights.makeIdent = 'Aqua'
  highlights.makeSpecTarget = 'Yellow'
  highlights.makeTarget = 'Blue'
  highlights.makeCommands = 'Orange'

  -- cmake
  highlights.cmakeCommand = 'Orange'
  highlights.cmakeKWconfigure_package_config_file = 'Yellow'
  highlights.cmakeKWwrite_basic_package_version_file = 'Yellow'
  highlights.cmakeKWExternalProject = 'Aqua'
  highlights.cmakeKWadd_compile_definitions = 'Aqua'
  highlights.cmakeKWadd_compile_options = 'Aqua'
  highlights.cmakeKWadd_custom_command = 'Aqua'
  highlights.cmakeKWadd_custom_target = 'Aqua'
  highlights.cmakeKWadd_definitions = 'Aqua'
  highlights.cmakeKWadd_dependencies = 'Aqua'
  highlights.cmakeKWadd_executable = 'Aqua'
  highlights.cmakeKWadd_library = 'Aqua'
  highlights.cmakeKWadd_link_options = 'Aqua'
  highlights.cmakeKWadd_subdirectory = 'Aqua'
  highlights.cmakeKWadd_test = 'Aqua'
  highlights.cmakeKWfile = 'Aqua'
  highlights.cmakeKWfind_package = 'Aqua'
  highlights.cmakeKWforeach = 'Aqua'
  highlights.cmakeKWfunction = 'Aqua'
  highlights.cmakeKWif = 'Aqua'
  highlights.cmakeKWinclude = 'Aqua'
  highlights.cmakeKWinstall = 'Aqua'
  highlights.cmakeKWlist = 'Aqua'
  highlights.cmakeKWmacro = 'Aqua'
  highlights.cmakeKWmessage = 'Aqua'
  highlights.cmakeKWoption = 'Aqua'
  highlights.cmakeKWproject = 'Aqua'
  highlights.cmakeKWset = 'Aqua'
  highlights.cmakeKWstring = 'Aqua'
  highlights.cmakeKWtarget_compile_definitions = 'Aqua'
  highlights.cmakeKWtarget_compile_features = 'Aqua'
  highlights.cmakeKWtarget_compile_options = 'Aqua'
  highlights.cmakeKWtarget_include_directories = 'Aqua'
  highlights.cmakeKWtarget_link_libraries = 'Aqua'
  highlights.cmakeKWtarget_sources = 'Aqua'

  -- json
  highlights.jsonKeyword = 'Orange'
  highlights.jsonQuote = 'Grey'
  highlights.jsonBraces = 'Grey'

  -- yaml
  highlights.yamlKey = 'Orange'
  highlights.yamlConstant = 'Purple'

  -- toml
  highlights.tomlTable = { fg = c.purple[1], bold = true }
  highlights.tomlKey = 'Orange'
  highlights.tomlBoolean = 'Aqua'
  highlights.tomlTableArray = 'tomlTable'

  -- gitcommit
  highlights.gitcommitSummary = 'Red'
  highlights.gitcommitUntracked = 'Grey'
  highlights.gitcommitDiscarded = 'Grey'
  highlights.gitcommitSelected = 'Grey'
  highlights.gitcommitUnmerged = 'Grey'
  highlights.gitcommitOnBranch = 'Grey'
  highlights.gitcommitArrow = 'Grey'
  highlights.gitcommitFile = 'Green'
  highlights['@text.gitcommit'] = 'TSNone'

  -- dosini
  highlights.dosiniHeader = { fg = c.red[1], bold = true }
  highlights.dosiniLabel = 'Yellow'
  highlights.dosiniValue = 'Green'
  highlights.dosiniNumber = 'Green'

  -- help
  highlights.helpNote = { fg = c.purple[1], bold = true }
  highlights.helpHeadline = { fg = c.red[1], bold = true }
  highlights.helpHeader = { fg = c.orange[1], bold = true }
  highlights.helpURL = { fg = c.green[1], underline = true }
  highlights.helpHyperTextEntry = { fg = c.yellow[1], bold = true }
  highlights.helpHyperTextJump = 'Yellow'
  highlights.helpCommand = 'Aqua'
  highlights.helpExample = 'Green'
  highlights.helpSpecial = 'Blue'
  highlights.helpSectionDelim = 'Grey'

  -- neotest summary
  highlights.NeotestNamespace = 'Purple'
  highlights.NeotestFile = 'Blue'
  highlights.NeotestDir = 'Directory'
  highlights.NeotestIndent = 'NonText'
  highlights.NeotestExpandMarker = { fg = c.bg5[1] }
  highlights.NeotestAdapterName = 'Red'
  highlights.NeotestMarked = 'Orange'
  highlights.NeotestTarget = 'Red'

  -- LspCxxHl
  highlights.LspCxxHlSkippedRegion = 'Grey'
  highlights.LspCxxHlSkippedRegionBeginEnd = 'TSKeyword'
  highlights.LspCxxHlGroupEnumConstant = 'BlueItalic'
  highlights.LspCxxHlGroupNamespace = 'TSNamespace'
  highlights.LspCxxHlGroupMemberVariable = 'TSVariable'

  -- LspSemantic tokens (vim-lsp)
  highlights.LspSemanticType = 'TSType'
  highlights.LspSemanticClass = 'TSType'
  highlights.LspSemanticEnum = 'TSType'
  highlights.LspSemanticInterface = 'TSType'
  highlights.LspSemanticStruct = 'TSType'
  highlights.LspSemanticTypeParameter = 'TSType'
  highlights.LspSemanticParameter = 'TSParameter'
  highlights.LspSemanticVariable = 'TSVariable'
  highlights.LspSemanticProperty = 'TSProperty'
  highlights.LspSemanticEnumMember = 'TSProperty'
  highlights.LspSemanticEvents = 'TSLabel'
  highlights.LspSemanticFunction = 'TSFunction'
  highlights.LspSemanticMethod = 'TSMethod'
  highlights.LspSemanticKeyword = 'TSKeyword'
  highlights.LspSemanticModifier = 'TSOperator'
  highlights.LspSemanticComment = 'TSComment'
  highlights.LspSemanticString = 'TSString'
  highlights.LspSemanticNumber = 'TSNumber'
  highlights.LspSemanticRegexp = 'TSStringRegex'
  highlights.LspSemanticOperator = 'TSOperator'

  return highlights
end

return M
