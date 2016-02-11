# createClass for Framer

Create classes based on imported layers

#### Usage
```coffeescript
{createClass} = require 'createClassModule'
sketch = Framer.Importer.load("imported/list-class@2x")


Row = createClass(sketch.row)

for i in [0..10]
	item = new Row {y: 200*i}
	item.avatar.borderRadius = "50%"
	item.avatar.image = "http://fillmurray.com/100/100"
```