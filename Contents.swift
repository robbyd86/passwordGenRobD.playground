//: Playground - noun: a place where people can play

import UIKit

/*variables to use
let numPassword : NSString = "0123456789"
let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let symPassword : NSString = "@#$"
let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"
let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
*/


//will store generator for place I work (DMI - Dovenmuehle Mortgage Inc.)
class DmiPassword
 {
//any character
func randomPasswordWithLength (len : Int) -> NSString
{

let password : NSString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$"


var randomPassword : NSMutableString = NSMutableString(capacity: len)

for (var i=0; i < len; i += 1)
{
    var length = UInt32 (password.length)
    var rand = arc4random_uniform(length)
    randomPassword.appendFormat("%C", password.characterAtIndex(Int(rand)))
}
return randomPassword
}
//test randomPasswordWithLength(4)

//any number
 func randomNumPasswordWithLength (len : Int) -> NSString
 {
 
let numPassword : NSString = "0123456789"
 
 
 var randomNumPassword : NSMutableString = NSMutableString(capacity: len)
 
 for (var i=0; i < len; i += 1)
 {
 var length = UInt32 (numPassword.length)
 var rand = arc4random_uniform(length)
 randomNumPassword.appendFormat("%C", numPassword.characterAtIndex(Int(rand)))
 }
 return randomNumPassword
 }
//test randomNumPasswordWithLength(1)

//any capital
 func randomCapPasswordWithLength (len : Int) -> NSString
 {
 
let capPassword : NSString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
 
  var randomCapPassword : NSMutableString = NSMutableString(capacity: len)
 
 for (var i=0; i < len; i += 1)
 {
 var length = UInt32 (capPassword.length)
 var rand = arc4random_uniform(length)
 randomCapPassword.appendFormat("%C", capPassword.characterAtIndex(Int(rand)))
 }
 return randomCapPassword
 }
//test randomCapPasswordWithLength(1)

//any symbol
 func randomSymPasswordWithLength (len : Int) -> NSString
 {
 
 let symPassword : NSString = "@#$"
 
 
 var randomSymPassword : NSMutableString = NSMutableString(capacity: len)
 
 for (var i=0; i < len; i += 1)
 {
 var length = UInt32 (symPassword.length)
 var rand = arc4random_uniform(length)
 randomSymPassword.appendFormat("%C", symPassword.characterAtIndex(Int(rand)))
 }
 return randomSymPassword
 }
//test randomSymPasswordWithLength(1)

//any lowercase
 func randomLowPasswordWithLength (len : Int) -> NSString
 {
 
 let lowPassword : NSString = "abcdefghijklmnopqrstuvwxyz"
 
 
 var randomLowPassword : NSMutableString = NSMutableString(capacity: len)
 
 for (var i=0; i < len; i += 1)
 {
 var length = UInt32 (lowPassword.length)
 var rand = arc4random_uniform(length)
 randomLowPassword.appendFormat("%C", lowPassword.characterAtIndex(Int(rand)))
 }
 return randomLowPassword
 }
// test randomLowPasswordWithLength(1)
 
    
//put it all together
 func fullDmiPassword()
 {
 print("DMI Password: \(randomPasswordWithLength(4))\(randomLowPasswordWithLength(1))\(randomSymPasswordWithLength(1))\(randomCapPasswordWithLength(1))\(randomNumPasswordWithLength(1))")
 }
    
}

//generate a password for work
let newDmiPassword = DmiPassword()
newDmiPassword.fullDmiPassword()

 