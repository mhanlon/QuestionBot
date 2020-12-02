struct MyQuestionAnswerer {
    func responseTo(question: String) -> String {
        let lowercaseQuestion = question.lowercased()
        if ( lowercaseQuestion == "where are the cookies?" ) {
            return "In the cookie jar!"
        } else if ( lowercaseQuestion.hasPrefix("where") ) {
            return "To the North!"
        } else if ( lowercaseQuestion.hasPrefix("hello") ) {
            return "Why, hello there!"
        } else if ( !lowercaseQuestion.hasSuffix("?") ) {
            return "That's not a question."
        } else {
            if lowercaseQuestion.contains("cookie") {
                return "I LOVE cookies."
            }
            let randomValue = lowercaseQuestion.count % 2
            if randomValue == 0 {
                return "Because I said so."
            } else {
                return "I'm not sure."
            }
        }
    }
}
