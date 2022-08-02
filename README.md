# flutter_zoom_call

Zoom like application(android and ios) with backend in firebase and Jitsi for video conferencing in flutter.




# Features

## (1) Google sign-in :
* Login into app via gmail account


## (2) Join or Create Meeting :

### Before joining:
* Join via link of meeting/join via meeting id from app
* Edit name before joining
* Meeting id validation
* Option to enable/disable audio and video before joining
* Waiting lobby appears if lobby is enabled in that meeting
*  Password is needed if meeting password had been set

### After joining:
* Detects no of participants and if there is password set for the meeting 
* Supports PIP mode
* Invite others via link (gmail,whtsapp,SMS etc)
* Low bandwidth mode(only audio mode)
* Raise /lower ur hand during meeting
* Toggle camera
* Enable/disable lobby mode anytime
* Set enable/disable password for meeting
* Enter/exit tile view
* Start/stop screen sharing
* Share/Play YouTube video link
* Mute everyone / Disable everyone’s camera
* Group chat while meeting(public group chat)
* Help will redirect to website
* Toggle views of participants
* Allow/Reject lobby’s participants



## (3) Meeting History :
* User can see date and meeting id of every meeting created/joined by user from meeting history page.





# Packages

 - #### jitsi_meet : for video calling feature
 
 - #### firebase_auth & google_sign_in : for authenticating user via google gmail account

 - ####  cloud_firestore : for storing history of meeting and userdata in firebase firestore

 - ####  firebase_remote_config : for fetching clientId in app from firebase

 - ####  flutter_bloc : for managing the state of widgets

 - ####  freezed & freezed_annotation : for generating freezed classes of states

 - ####  dartz  : for custom error handling

 - ####  get_it : for dependency injection 

 - ####  intl : for date time format and conversions




# Folder Structure

flutter-zoom-call

```sh
├── lib
    │   
    ├── core   
    │   │── failure
    │   ├── navigation
    │   ├── theme
    │   
    ├── config   
    │   ├── firebase_remote_config.dart
    │            
    ├── features  
    │   │   
    │   ├── zoom_video_call
    │      │   
    │      │ 
    │      ├── data
    │      │   ├── data_sources
    │      │   ├── models
    │      │   ├── repositories
    │      │ 
    │      │ 
    │      ├── domain
    │      │   ├── repositories
    │      │   ├── use_cases
    │      │    
    │      │   
    │      ├── presentation
    │      │   ├── cubits
    │      │   ├── pages
    │      │    
    │      ├── injection_container
    │         
    │       
    ├─── utils
    │      ├── constants
    │      ├── extensions
    │      ├── widgets
    │    
    ├──────── main.dart     





