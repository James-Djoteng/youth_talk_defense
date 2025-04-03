# Youth Talk by JAMES LIYIMOAL DJOTENG

The Youth Talk's initial version is a show, so the Ui is designed to entertain and excite users into consuming content in video format that they can interact with by liking and commenting after they have initially logged into the platform or signed up.

##  IMPORTANT: When you are logged in please wait until you see the cover of the video before you click on the play icon.

## Getting Started

- Clone the repo to your local machine in vs code !
- Choose chrome(web) as your emulator
- Go to the main.dart file at lib/main.dart
- Run the app "Without Debugging" / in your terminal run firebase hosting:channel:deploy preview-youthTalk(this will run and test the app so you can test extra feaures apart from ui and front-end adjustments)

## Disclaimer on local run 
- The local run in the browser runs only in debug mode so it is for previewing ui and action on buttons and navigation. Not to test storage , video streaming and api queries.
- The local run is just a testing version so some feature like the profile picture upload, like and comment that require deployment or storage data may not load locally.
-The way firebase works is everytime you run firebase deploy we have a preview url create by firebase to be able to test all the features before deploying it to the hosting url.
- so if you want to test features that require storage and api queries run this on your terminal firebase hosting:channel:deploy preview-youthTalk. This will give you a run and test version of the app so you can edit, add changes, and visualize upated versions of the youth Talk app before deploying to the actual live channel.
- Not that the preview link at the first run may take some time before serving all the interface entirely so chill a little. After the first run all should be quick for future previews. The preview link expires in a day, so you will need to generate another when major changes want to be deployed after that deadline. This is way better than a local run and test as the preview locally expires in like 30 minutes.
- Otherwise just go to the live deployed url of this source code: https://youthtalk-b88c4.web.app/homePage
  
Congrats! you ve successfully launched the youth talk app.

## test deployment
- run firebase deploy --only hosting to check if deployment runs smoothly
- go to https://youthtalk-b88c4.web.app/homePage to see your deployed work

## Navigation on the app

- On your first run, Click on the "Yt" icon to navigate to the homepage.
- On the whole app the "Yt" button serves as a "go to previous page" button apart from the homepage.


## Common errors locally:

- The profile page button is deactivated, do not click on it as it might result in crashes.
- put your Chrome window to full screen to avoid overflow errors.
- On the Authentification page every tab is scrollable.
- Scroll to the end of the tab to see all the elements.
- The "Forgot Password" button is at the end of the scroll.
- ## when you are logged in please wait until you see the cover of the video before you click on the play icon.
- Only one video may play.
- If you can't hear any sound while the video is playing, please zoom your screen to the bottom-left corner of the video player, you will see the button to unmute the video.
- Please note that the video incorporated is just for testing purposed and we don not own any content included in the video.
- If yoou want minimal errors go straight to the deployed link. I went through the stress of debugging everything already. You don't have to, too.

## More updates including mentor view and watch history are currently in development in the beta version. Even though not part of this final capstone deliverable just wanted to let you know. Am exited for what's next with this grind ! Amazing work James.
