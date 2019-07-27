import UIKit
import Foundation



/*:
 ### TUPLES
 
 Declare a constant tuple that contains three Int values followed by a String. Use this to represent a date (month, day, year) followed by an emoji or word you might associate with that day.
 */
//HINT: "CTRL + CMD + SPACE to open the emoji window."


// TODO: Write solution here



let myBirthday = (12, 01, 1994, "🥳")
/*:
 Create another tuple, but this time name the constituent components. Give them names related to the data that they contain: month, day, year and emoji.
 */


// TODO: Write solution here
let theJudgementBureauDay = (month: 03, day: 03, year: 2011, emoji: "🥳")
/*:
 In one line, read the day and emoji values into two constants. You’ll need to employ the underscore to ignore the month and year.
 */

// TODO: Write solution here

let (_, day, _, emoji) = theJudgementBureauDay
print(day,emoji)
/*:
 Up until now, you’ve only seen constant tuples. But you can create variable tuples, too. Create one more tuple, like in the exercises above, but this time use var instead of let. Now change the emoji to a new value. */

// TODO: Write solution here



var greenBookDay = (month: 08, day: 11, year: 2018, emoji: "🍿")
greenBookDay.emoji = "🎬"
print(greenBookDay)




