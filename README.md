# Jay-C7

[![Build Status](https://travis-ci.org/czechboy0/Jay-C7.svg?branch=master)](https://travis-ci.org/czechboy0/Jay-C7)
[![Latest Release](https://img.shields.io/github/release/czechboy0/jay-c7.svg)](https://github.com/czechboy0/jay-c7/releases/latest)
![Platforms](https://img.shields.io/badge/platforms-Linux%20%7C%20OS%20X-blue.svg)
![Package Managers](https://img.shields.io/badge/package%20managers-SwiftPM-yellow.svg)

[![Blog](https://img.shields.io/badge/blog-honzadvorsky.com-green.svg)](http://honzadvorsky.com)
[![Twitter Czechboy0](https://img.shields.io/badge/twitter-czechboy0-green.svg)](http://twitter.com/czechboy0)

[C7](https://github.com/open-swift/C7) conformance for [Jay](https://github.com/czechboy0/Jay).

If you want to use C7.JSON type with Jay in your project, just use this package, which automatically includes the appripriate Jay version.

# Usage

## Parsing from data (deserialization)
```swift
do {
	//get data from disk/network
	let data: [UInt8] = ...

	//ask Jay to parse your data
	let json = try Jay().c7jsonFromData(data) // C7.JSON

	//if it doesn't throw an error, all went well
	if let tasks = json.dictionary?["today"]?.array {
	    //you have a dictionary root object, with an array under the key "today"
	    print(tasks) //["laundry", "cook dinner for gf"]
	} 
} catch {
	print("Parsing error: \(error)")
}
```

## Formatting into data (serialization)
```swift
do {

	let json: JSON = ... // C7.JSON
	let data = try Jay(formatting: .prettified).dataFromC7Json(json: json) // [UInt8]

	//send data over network, save to disk
} catch {
	print("Formatting error: \(error)")
}
```

# Installation

## Swift Package Manager

```swift
.Package(url: "https://github.com/czechboy0/Jay-C7.git", majorVersion: 0, minor: 14)
```

:gift_heart: Contributing
------------
Please create an issue with a description of your problem or open a pull request with a fix.

:v: License
-------
MIT

:alien: Author
------
Honza Dvorsky - http://honzadvorsky.com, [@czechboy0](http://twitter.com/czechboy0)
