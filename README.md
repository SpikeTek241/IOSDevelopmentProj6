# Project 6 - *Tumblr (Detail Viewer)*

Submitted by: **Kevin Jerome**

**Tumblr Detailed Viewer** is an app that is an iOS app that displays a Tumblr photo feed (from Humans of New York) using the Tumblr API. Users can tap on a post to view a full image and detailed caption on a separate screen.
 [TODO] 

Time spent: **7+** hours spent in total

## Required Features

The following **required** functionality is completed:

- [x] Setup navigation to the Detail Screen
- [x] Created the Detail View UI
- [x] Add the ability to pass data to the Detail View Controller
- [x] Made personal finishing touches to the UI


The following **additional** features are implemented:
- [x] Used Nuke to load full-size images asynchronously
- [x] Decoded HTML-encoded captions with `NSAttributedString`
- [x] Embedded Navigation Controller to allow push transitions + back button
- [x] Used Auto Layout and content mode (`AspectFit`) to properly size images
- [x] Added a navigation title ("Post Detail") for better UX
- [x] Cleaned up layout and text insets for more readable design

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 

[Guide]](https://www.youtube.com/watch?v=GA92eKlYio4) .

## Notes

Describe any challenges encountered while building the app.
### Challenges Faced:
- Decoding Tumblr’s deeply nested JSON to get the `original_size` image URL
- Removing strange characters from HTML-encoded caption strings
- Getting the navigation controller setup to enable proper back functionality
- Fixing broken `IBOutlet` references that crashed the app
- Understanding content mode and layout constraints for proper image rendering

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
