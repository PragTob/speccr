# Speccr

**Warning this does not even begin to work yet as I can't properly capture procs, waiting for [an issue](https://github.com/manastech/crystal/issues/896) to be resolved before this can move forward**

## Why Speccr, we already have spec?

I love it that crystal has spec builtin as a testing library and I like using it. I tried enhancing spec with dynamic matchers and others but stumbled upon a couple of problems from my perspective. Basically spec is RSpec2 style (`object.should matcher`) and not RSpec3 (`expect(object).to matcher`) and some methods are globally available. I prefer RSpec3 :) I thought about refactoring spec but figured it might be easier to start fresh. The goals of Speccr are:

* No monkey patching
* No globally defined methods, they are all bound on `Speccr` objects in order not to pollute any name space
* `expect` syntax
* Suppport for dynamic matchers (`be_empty` etc.) if that's feasible

Note, I'm interested in crystal and I like the language very much, but I'm no expert so no guarantees that this will actually get done but I want to try and building a testing framework seems like fun :) But this might still take a while ;)
