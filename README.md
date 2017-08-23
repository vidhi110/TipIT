
# Pre-work - *TipIT*

**TipIT** is a tip calculator application for iOS.

Submitted by: **Vidhi Shah**

Time spent: **2** hours spent in total

## User Stories

The following **required** functionality is complete:

* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [X] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [X] Added basic autolayout constraints
- [X] Functionality of knowing per person share i.e Split bill 
- [X] Launch Screen image, AppIcon, settings icon 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<a href="http://imgur.com/wozf0OC"><img src="http://i.imgur.com/wozf0OC.gif" title="Video Walkthrough" /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** I started my job with ios developer but for some reason had to work on other some stuff past quite some time so even making a small app I had to spend some time as while doing complex app at work you ignore few basic functionality. Doing this really felt that  I really need some refresher course through which I can make my base strong and can help me improve my skills. 
As I never got proper training for ios development. I love developing in ios platform as I feel its so powerful and with swift it has improved a lot. Xcode is my favorite IDE. 

Outlets : Are controls added to the view controller and you can change the properties of that control the way you want e.g change text of tipValue label, change font etc 
Actions : Are used when you want to trigger any piece of code to do something. eg. calculate tip action executes the code which does calculation  
There are different types of events you can trigger a action based on the control you use. e.g touch up inside for button, value change for segmented control 

If you  open the source code of you will see the code in xml format. Actions and outlets are added in between the tags. 
Action is associated with the method name you wnat to call to perfom some action and on what event.
Outlet is associated with its name and id. You can call the control with this name and change it as you want in View controller


Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** A reference cycle occurs when object A has a strong reference to object B and vice versa. i.e when class instance has strong reference on closure and vice versa. 
This can happen when you reference self.testVar inside the closure. App might crash when you try to access self.testVar it might happen that for some reason self is nil. 
In order to avoid that you should always have  a weak reference to self to not have a strong reference cylce in closure. e.g [weal self] and call property  as self?.testVar 


## License

    Copyright [2017] [Vidhi Shah]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
