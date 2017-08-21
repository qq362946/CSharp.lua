-- Generated by CSharp.lua Compiler 1.1.0
--[[
Copyright 2017 YANG Huan (sy.yanghuan@gmail.com).

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
]]
local System = System
local CSharpLua
local CSharpLuaLuaAst
local CSharpLuaLuaAstLuaExpressionSyntax
System.usingDeclare(function (global) 
  CSharpLua = global.CSharpLua
  CSharpLuaLuaAst = CSharpLua.LuaAst
  CSharpLuaLuaAstLuaExpressionSyntax = CSharpLua.LuaAst.LuaExpressionSyntax
end)
System.namespace("CSharpLua.LuaAst", function (namespace) 
  namespace.class("LuaExpressionSyntax", function (namespace) 
    namespace.class("EmptyLuaExpressionSyntax", function (namespace) 
      local Render, __ctor__
      __ctor__ = function (this) 
        this.__base__.__ctor__(this)
      end
      Render = function (this, renderer) 
      end
      return {
        __inherits__ = function (global) 
          return {
            global.CSharpLua.LuaAst.LuaExpressionSyntax
          }
        end, 
        Render = Render, 
        __ctor__ = __ctor__
      }
    end)
    local EmptyExpression, __staticCtor__, __ctor__
    __staticCtor__ = function (this) 
      EmptyExpression = CSharpLuaLuaAstLuaExpressionSyntax.EmptyLuaExpressionSyntax()
      this.EmptyExpression = EmptyExpression
    end
    __ctor__ = function (this) 
      CSharpLuaLuaAst.LuaSyntaxNode.__ctor__(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaSyntaxNode
        }
      end, 
      __staticCtor__ = __staticCtor__, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaAssignmentExpressionSyntax", function (namespace) 
    local getOperatorToken, Render, __ctor__
    __ctor__ = function (this, left, right) 
      this.__base__.__ctor__(this)
      this.Left = left or System.throw(CSharpLua.ArgumentNullException("left" --[[nameof(left)]]))
      this.Right = right or System.throw(CSharpLua.ArgumentNullException("right" --[[nameof(right)]]))
    end
    getOperatorToken = function (this) 
      return "=" --[[Tokens.Equals]]
    end
    Render = function (this, renderer) 
      renderer:Render21(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getOperatorToken = getOperatorToken, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaMultipleAssignmentExpressionSyntax", function (namespace) 
    local getOperatorToken, Render, __init__, __ctor__
    __init__ = function (this) 
      this.Lefts = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
      this.Rights = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    getOperatorToken = function (this) 
      return "=" --[[Tokens.Equals]]
    end
    Render = function (this, renderer) 
      renderer:Render22(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getOperatorToken = getOperatorToken, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaLineMultipleExpressionSyntax", function (namespace) 
    local Render, __init__, __ctor__
    __init__ = function (this) 
      this.Assignments = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    Render = function (this, renderer) 
      renderer:Render23(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaBinaryExpressionSyntax", function (namespace) 
    local Render, __ctor__
    __ctor__ = function (this, left, operatorToken, right) 
      this.__base__.__ctor__(this)
      this.Left = left or System.throw(CSharpLua.ArgumentNullException("left" --[[nameof(left)]]))
      this.OperatorToken = operatorToken
      this.Right = right or System.throw(CSharpLua.ArgumentNullException("right" --[[nameof(right)]]))
    end
    Render = function (this, renderer) 
      renderer:Render40(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaPrefixUnaryExpressionSyntax", function (namespace) 
    local Render, __ctor__
    __ctor__ = function (this, operand, operatorToken) 
      this.__base__.__ctor__(this)
      this.Operand = operand or System.throw(CSharpLua.ArgumentNullException("operand" --[[nameof(operand)]]))
      this.OperatorToken = operatorToken
    end
    Render = function (this, renderer) 
      renderer:Render44(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaParenthesizedExpressionSyntax", function (namespace) 
    local getOpenParenToken, getCloseParenToken, Render, __ctor__
    __ctor__ = function (this, expression) 
      this.__base__.__ctor__(this)
      this.Expression = expression or System.throw(CSharpLua.ArgumentNullException("expression" --[[nameof(expression)]]))
    end
    getOpenParenToken = function (this) 
      return "(" --[[Tokens.OpenParentheses]]
    end
    getCloseParenToken = function (this) 
      return ")" --[[Tokens.CloseParentheses]]
    end
    Render = function (this, renderer) 
      renderer:Render55(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getOpenParenToken = getOpenParenToken, 
      getCloseParenToken = getCloseParenToken, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaCodeTemplateExpressionSyntax", function (namespace) 
    local Render, __init__, __ctor__
    __init__ = function (this) 
      this.Expressions = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    Render = function (this, renderer) 
      renderer:Render59(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaArrayRankSpecifierSyntax", function (namespace) 
    local __init__, __ctor__
    __init__ = function (this) 
      this.Sizes = System.List(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this, rank) 
      __init__(this)
      this.__base__.__ctor__(this)
      this.Rank = rank
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaSyntaxNode
        }
      end, 
      Rank = 0, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaArrayTypeAdapterExpressionSyntax", function (namespace) 
    local getBaseType, getIsSimapleArray, Render, __ctor__
    __ctor__ = function (this, invocationExpression, rankSpecifier) 
      this.__base__.__ctor__(this)
      this.InvocationExpression = invocationExpression or System.throw(CSharpLua.ArgumentNullException("invocationExpression" --[[nameof(invocationExpression)]]))
      this.RankSpecifier = rankSpecifier or System.throw(CSharpLua.ArgumentNullException("rankSpecifier" --[[nameof(rankSpecifier)]]))
    end
    getBaseType = function (this) 
      return this.InvocationExpression.ArgumentList.Arguments:get(0).Expression
    end
    getIsSimapleArray = function (this) 
      return this.RankSpecifier.Rank == 1
    end
    Render = function (this, renderer) 
      this.InvocationExpression:Render(renderer)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      getBaseType = getBaseType, 
      getIsSimapleArray = getIsSimapleArray, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaInternalMethodExpressionSyntax", function (namespace) 
    local Render, __ctor__
    __ctor__ = function (this, expression) 
      this.__base__.__ctor__(this)
      this.Expression = expression or System.throw(CSharpLua.ArgumentNullException("expression" --[[nameof(expression)]]))
    end
    Render = function (this, renderer) 
      this.Expression:Render(renderer)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)

  namespace.class("LuaSequenceListExpressionSyntax", function (namespace) 
    local Render, __init__, __ctor__
    __init__ = function (this) 
      this.Expressions = CSharpLuaLuaAst.LuaSyntaxList_1(CSharpLuaLuaAst.LuaExpressionSyntax)()
    end
    __ctor__ = function (this) 
      __init__(this)
      this.__base__.__ctor__(this)
    end
    Render = function (this, renderer) 
      renderer:Render61(this)
    end
    return {
      __inherits__ = function (global) 
        return {
          global.CSharpLua.LuaAst.LuaExpressionSyntax
        }
      end, 
      Render = Render, 
      __ctor__ = __ctor__
    }
  end)
end)
