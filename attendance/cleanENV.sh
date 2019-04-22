#! /bin/bash -
if [[ ! -e adminsdk.json ]]; then
    touch adminsdk.json
    echo $ADMIN_SDK > adminsdk.json
fi

if [[ ! -e firebase_token_generator.py ]]; then
    touch firebase_token_generator.py
    echo $TOKEN_GENERATOR > firebase_token_generator.py
fi
cp firebase_token_generator.py test/
