## Monadic Computation in Swift

##### OMG why?

---

## Agenda!

<br>

- Problem realisation |
- 2 ways of solving the problem |
- Functional approach: Monads to rescue |
- Monadic Types: Result, Promise |
- Verify Monds solve the problem |
- Extensions |
- QA |

---

## Observation

- URLSession's dataTask API |
- Composing URLSession's dataTask is painful |
- Type signature should be mathematical proof |

---?code=code/code.playground/Sources/Problems.swift&lang=swift&title=Observation

@[8-17](URLSession's dataTask API with 3 optional parameters)
@[26-34](Nested dataTask/ Callback hell)
@[41-52](Type signate that lie)

---

## Problems
- Composability [hard] |
- Error Propagation [hard or ignored] |
- True Type signature [ignored] |

---

## 2 paradigm
- OOP |
  + Object for encapsulation, abstraction and composition 
  + Profoundly used 
- FP |
  + function as encapsulation, abstraction and composition 
  + Profoundly ignored 
- Today we will get some inspiration from FP |

---

### A Game to realise our journey
- MAD.A.DAM game |
  + M: Multiply 
  + A: Add 
  + D: Divide 
  + These functions take 1 argument 
  + The other is randomly generated 
- Given a input x, compute MAD.A.DAM |

---

### MAD.A.DAM
<p><span class="slide-title">MAD.A.DAM block</span></p>

```swift
  let x = getUserInput()
  let output = m(a(d(a(d(a(m(x)))))))
```

---

## Functional Programming and the Monad

@title[JavaScript Block]

<p><span class="slide-title">JavaScript Block</span></p>

```javascript
// Include http module.
var http = require("http");

// Create the server. Function passed as parameter
// is called on every request made.
http.createServer(function (request, response) {
  // Attach listener on end event.  This event is
  // called when client sent, awaiting response.
  request.on("end", function () {
    // Write headers to the response.
    // HTTP 200 status, Content-Type text/plain.
    response.writeHead(200, {
      'Content-Type': 'text/plain'
    });
    // Send data and end response.
    response.end('Hello HTTP!');
  });

// Listen on the 8080 port.
}).listen(8080);
```

@[1,2](You can present code inlined within your slide markdown too.)
@[9-17](Displayed using code-syntax highlighting just like your IDE.)
@[19-20](Again, all of this without ever leaving your slideshow.)

---?gist=onetapbeyond/494e0fecaf0d6a2aa2acadfb8eb9d6e8&lang=scala&title=Scala GIST

@[23](You can even present code found within any GitHub GIST.)
@[41-53](GIST source code is beautifully rendered on any slide.)
@[57-62](And code-presenting works seamlessly for GIST too, both online and offline.)

---

## Template Help

- [Code Presenting](https://github.com/gitpitch/gitpitch/wiki/Code-Presenting)
  + [Repo Source](https://github.com/gitpitch/gitpitch/wiki/Code-Delimiter-Slides), [Static Blocks](https://github.com/gitpitch/gitpitch/wiki/Code-Slides), [GIST](https://github.com/gitpitch/gitpitch/wiki/GIST-Slides) 
- [Custom CSS Styling](https://github.com/gitpitch/gitpitch/wiki/Slideshow-Custom-CSS)
- [Slideshow Background Image](https://github.com/gitpitch/gitpitch/wiki/Background-Setting)
- [Slide-specific Background Images](https://github.com/gitpitch/gitpitch/wiki/Image-Slides#background)
- [Custom Logo](https://github.com/gitpitch/gitpitch/wiki/Logo-Setting), [TOC](https://github.com/gitpitch/gitpitch/wiki/Table-of-Contents), and [Footnotes](https://github.com/gitpitch/gitpitch/wiki/Footnote-Setting)

---

## Go GitPitch Pro!

<br>
<div class="left">
    <i class="fa fa-user-secret fa-5x" aria-hidden="true"> </i><br>
    <a href="https://gitpitch.com/pro-features" class="pro-link">
    More details here.</a>
</div>
<div class="right">
    <ul>
        <li>Private Repos</li>
        <li>Private URLs</li>
        <li>Password-Protection</li>
        <li>Image Opacity</li>
        <li>SVG Image Support</li>
    </ul>
</div>

---

### Questions?

<br>

@fa[twitter gp-contact](@gitpitch)

@fa[github gp-contact](gitpitch)

@fa[medium gp-contact](@gitpitch)

---?image=assets/image/gitpitch-audience.jpg

@title[Download this Template!]

### <span class="white">Get your presentation started!</span>
### [Download this template @fa[external-link gp-download]](https://gitpitch.com/template/download/blue)

