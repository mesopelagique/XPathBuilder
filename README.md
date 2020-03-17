# XPathBuilder

`xpath` allow you to build [XPath](https://en.wikipedia.org/wiki/XPath) expression

## elements

An `element` is a path element starting with `/`

```4d
// /Book
xpath .element("Book").toXPath()
```

### any element of type

```4d
// //Book
xpath .any(xpath .element("Book")).toXPath()
```

### complete example 

```4d
// /bookstore/book[price='35.00']
xpath .element("bookstore").with(xpath .element("book").with(xpath .element("price").is("35.00"))).toXPath()
```

## attributes

Attribute allow to filter elements

```4d
// @someAttribute"
xpath .attribute("someAttribute").toXPath()

// [@someAttribute='aValue']
xpath .attribute("someAttribute").is("aValue").toXPath()

// [contains(@anAttribute,'someValue')]
xpath .attribute("anAttribute").containing("someValue").toXPath()
```

## predicates

### position

```4d
// [1]
xpath .predicate("1").toXPath()
```

### contains

```4d
// [contains(something,'aValue')]
$someFragment:=xpath .fragment("something")
xpath .containing("aValue").decorate($someFragment).toXPath()
```

### index

```4d
// something[2]
xpath .index(2).decorate($someFragment).toXPath()
// ...or
$someFragment.decorateBy(xpath .index(2)).toXPath()
```

## expressions

`predicate`, `attribute`, `element` are all expressions, but and `expression` could also be a collection of `expression` to concatenate.

### collections of nodes

```4d
// /Book@lang[2]
$element:=xpath .element("Book")
$attribute:=xpath .attribute("lang")
$predicate:=xpath .predicate("2")

xpath .expression(New collection:C1472($element;$attribute;$predicate)).toXPath()
```

### appending

```4d
// /Book
xpath .expression().with(xpath .element("Book")).toXPath()
```

### predicate index

```4d
// something[3]
xpath .expression(xpath .fragment("something")).atIndex(3).toXPath()
```
