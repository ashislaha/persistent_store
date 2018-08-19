# Persistent Store in iOS: (In Progress)

Let's explore different types of persistent store in iOS: Like (1). plist (2). Core data (3) Realm.

The container contains overall 3 projects, we will explore all of the above persistent stores.

## (1). Plist:

UserDefault is a tiny database, it's a plist, locating it into the sandbox, it's named "projectName.plist"

<img width="1440" alt="screen shot 2018-08-19 at 9 05 55 pm" src="https://user-images.githubusercontent.com/10649284/44310570-49308900-a3f6-11e8-8807-e1629313aa40.png">

But we cannot save the model data into UserDefault because the model is not conforming to the NSCoding protocol like String, Dictionary etc.

So, we can create our own plist and save the data model, and retrieve it while it is necessary.

### saving the model into plist 
<img width="1440" alt="screen shot 2018-08-19 at 9 14 17 pm" src="https://user-images.githubusercontent.com/10649284/44310571-49308900-a3f6-11e8-9ce9-ee36842c5cb5.png">

### Retrieving the plist:
<img width="1440" alt="screen shot 2018-08-19 at 9 21 40 pm" src="https://user-images.githubusercontent.com/10649284/44310572-49308900-a3f6-11e8-982d-c7a575e35624.png">

For more details, check the project.

## (2). Realm:



## (3). Core data:


