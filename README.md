# instagram_clone_ui

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

flutter build qilish uchun qilinadigan ishlar
1. oldin keystore yaratib olamiz Misol uchun
  keytool -genkey -v -keystore /Users/yusupoverkinjon/Desktop/Flutter/KeyStores/epa-usta-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
2. android papka ichida /android/key.properties faylini yaratib olamiz va ichiga shu holatda yozamiz
storePassword=1234567
keyPassword=1234567
keyAlias=upload
storeFile=D:/Jks/projectNomi/upload-keystore.jks
3. [project]/android/app/build.gradle ichiga shu yozilgan kodni tashlaymiz
def keystoreProperties = new Properties()
   def keystorePropertiesFile = rootProject.file('key.properties')
   if (keystorePropertiesFile.exists()) {
       keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
   }
//shuni yuqorisiga
   android {
         ...
   }
4. va shu fayl ichidan  buildTypes topamiz va shu holatda kiritamiz
   signingConfigs {
       release {
           keyAlias keystoreProperties['keyAlias']
           keyPassword keystoreProperties['keyPassword']
           storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
           storePassword keystoreProperties['storePassword']
       }
   }
   buildTypes {
       release {
           signingConfig signingConfigs.release
       }
   }
5. va terminalga shu buyryqni kiritamiz 
flutter build apk --split-per-abi # instagram-clone