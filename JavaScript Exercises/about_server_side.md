### Callbacks
"You can use any argument names you like in the callback functions; when the callback is invoked the first argument will always be the request and the second will always be the response. It makes sense to name them such that you can identify the object you're working with in the body of the callback." - MDN

HTTP callbacks:
``` post(), put(), delete(), options(), trace(), copy(), lock(), mkcol(), move(), purge(), propfind(), proppatch(), unlock(), report(), mkactivity(), checkout(), merge(), m-search(), notify(), subscribe(), unsubscribe(), patch(), search(), and connect() ```

### Middleware

Middleware is used to simplify things such as working with cookies, authentication, accessing JSON data, logging, etc. Express maintains some [middleware packages](http://expressjs.com/en/resources/middleware.html)

To add a middleware function you wrote to the processing chain
`app.use()` or `app.add()`

Example: 
`let a_middleware_function = function(req, res, next) { next(); }`
for all routes
`app.use(a_middleware_function);`
for a specific route 
`app.use('/someroute', a_middleware_function);`

### [Express Static] (http://expressjs.com/en/4x/api.html#express.static) 

Can serve static files like images and CSS
Static is middleware, but is the only one a part of express

`app.use(express.static('<directory_name>'));`

using a specific folder in a directory
`app.use('<folder_name>', express.static('<directory_name>'));`
