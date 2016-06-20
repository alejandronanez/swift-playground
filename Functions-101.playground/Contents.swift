/**
    Write a function that:
    1. Is called fullName
    2. Takes 2 parameters: firstName - lastName
    3. It concatenates the 2 parameters and returns them
*/

// Using _ to omit external name for the 2nd argument.
func fullName(firstName: String = "First Name", _ lastName: String = "Last Name") -> String {
    return firstName + " " + lastName
}

print(fullName("Foo", "Bar"))

/**
    Write a function that:
    1. Accepts a Dictionaty as parameter
    2. Returns a named tuple
    3. Dictionary should have 'title', 'artist' and 'album'
*/

func dictionaryToTuple(data: Dictionary<String, String>) -> (title: String, artist: String, album: String) {
    return (data["title"]!, data["artist"]!, data["album"]!)
}

let myDictionary : [String: String] = ["title": "Foo", "artist": "Foo Band", "album": "Foo LIVE"]

let newTuple = dictionaryToTuple(myDictionary);

print(newTuple)

/**
    OPTIONALS:
    func foo(bar: String) -> String? ----> Could return String or anything else
    This returns a struct. Like: {Some: "bar"}
    To access that value, we need to do: let baz = foo("that") and then !baz
    This only works if we're get a value back if we get nil for example, we would need to do:
    
    if let baz = foo("thing") {
        print(baz)
    }


    '?' makes a value an Optional
    '!' unwraps the value from the Optional

    Also you can chain Optionals like: foo("thing")?.toInt()?.anotherMethod()?.andAnotherOne()
*/