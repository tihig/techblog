c1 = Category.create name:"Programming", description:"All posts related to programming"
c2 = Category.create name:"Products", description:"All posts related to new products"
c3 = Category.create name:"Trends", description:"All posts including the latest trends"

Post.create title:"Red hot Ruby!", body:"Eeveryone should start programming with Ruby! This magnificent programming language is fluent and easy to learn." 
Post.create title:"Java 8, is it Java anymore?", body:"Everyone can agree that Java 8 has brought some new and long waited updates to our beloved programming language. The new improvements have made Java look more like a functional language than before. The question rises: is it Java anymore?"
Post.create title:"Seeking a new smartphone from the jungle of products? No worries!", body:"There are multiple choises of smartphones on the market these days, but choosing the right one for you might be difficult, if you have no idea what the differences are (besides the color or screen size). Here are some tips for choosing one!"
Post.create title:"Smartgoggles- are they here for good?", body:"Here on Techblog we are looking into the latest new gadget on the market: smartgoggles. "

Tag.create name:"New"
Tag.create name:"Oldschool"
