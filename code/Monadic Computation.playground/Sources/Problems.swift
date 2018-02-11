import Foundation

/// 1. dataTask has 3 optional parameters.
/// To properly check them we need 8 branches = 2 ^ 3
/// However in most cases, we don't. In some case, documentation
/// tells us that in some form of error repsonse wont ever be nil.
/// And hence this complexity is either ignored or commented out
func fetchData(from: URL, completion: @escaping ((Data?) -> Void)) {
    URLSession.shared.dataTask(with: from) { (opData, opResponse, opError) in
        if opError != nil && opData != nil {
            completion(opData!)
        } else {
            completion(nil)
            // TODO: Handle error. Talk to API guys
        }
    }
}


/// 2. Composing dataTask
/// Endpoint1 returns us a url to external service which has the content
/// We then need to walk the external URL to fetch the data
/// We tend to do a lot in this complex pieces of code
/// We tend to nest other complex items and the code is utterly hard to reason
/// utterly hard to test and reusability is only a godspoken theory
func getContent(contentLocatorURL: URL, completion: @escaping ((String?) -> Void)) {
    fetchData(from: contentLocatorURL) { opUrlData in
        if let contentURL = opUrlData?.extractedUrl {
            fetchData(from: contentURL, completion: { opData in
                completion(opData?.string)
            })
        }
    }
}


/// 3. Don't lie
/// Swift is a strongly typed language but not dependent typed.
/// A method signature should be mathematically provable. Its theorem for free.
/// However we tend to forget this and edge case bugs gets shipped
func multiply(_ lhs: Int, _ rhs: Int) -> Int {
    /// When 2 Ints are very large, this will overflow and in
    /// this case this signature is not true anymore
    /// multiply(Int.max, 3) will crash
    return lhs * rhs
}


/// Spot a problem here
func divide(_ lhs: Int, _ rhs: Int) -> Int {
    return lhs / rhs
}





/// Extension for demo purpose only
extension Data {
    
    var extractedUrl: URL? {
        return nil
    }
    
    var string: String? {
        return nil
    }
    
}

