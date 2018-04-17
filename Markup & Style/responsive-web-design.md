# Responsive Web Design

"Rather than creating spaces that influence the behavior of people that pass through them, responsive designers are investigating ways for a piece of architecture and its inhabitants to mutually influence and inform each other."

Create flexible, adaptive sites with:

1. A flexible, grid-based layout
2. Flexible images and media
3. Media queries

To calculate ems: 
    target/context = ems
To calculate ems for an h1: 
    32/16 = 2em

p. 29 "Nasty, evil pixels. We hates them."
they prevent us from creating flexible sites

convert pixels to a percentage
        target/context = % 
ex:
        900/960 = 0.9375
        93.75%

Use % in padding and margins

Become context-aware: better understanding the ratio-based
relationships between element and container
 
Flexible Images

Whereas max-width: 100% instructs our
images to never exceed the width of their containers, width:
100% forces our images to always match the width of their containing
elements.

Media Queries 

History: stemmed from wanting to define css properties based on media type such as screen, print, presentation

so it would look like:
```
@media screen {
    ...
}
```
or
``` 
@media print {
    ...
}
```

Now we know its meant for screen
so that is constant and the dimensions change 

``` 
@media screen and (min-width: 1024px) {
        body {
            font-size: 100%;
        }
    }
 ```