
#!/bin/bash
if [ ! -z "$IOS_FIREBASE_BASE64" ]; then
  echo "Decoding GoogleService-Info.plist into ios/Bolivision/GoogleService-Info.plist"
  mkdir -p ios/Bolivision
  echo "$IOS_FIREBASE_BASE64" | base64 --decode > ios/Bolivision/GoogleService-Info.plist
else
  echo "IOS_FIREBASE_BASE64 not set. If you intend to use Codemagic secrets, add the base64 of your GoogleService-Info.plist to that variable."
fi
