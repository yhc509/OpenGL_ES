//
//  TextureManager.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "TextureManager.h"

TextureManager* TextureManager::mInstance = nullptr;

TextureManager* TextureManager::GetInstance(){
    if(mInstance == nullptr){
        mInstance = new TextureManager();
    }
    return mInstance;

}

TextureManager::TextureManager()
: mContainer(new std::map<std::string, CGImageRef>()) {
    
}

TextureManager::~TextureManager(){
    mInstance = nullptr;
}

void TextureManager::LoadTexture(std::string key){
    CGImageRef imageRef = [[UIImage imageNamed:@"leaves.gif"] CGImage];
    
    mContainer->insert(std::pair<std::string, CGImageRef>(key, imageRef));
}

CGImageRef TextureManager::GetTexture(std::string key){
    auto result = mContainer->find(key);
    if(result == mContainer->end()){
        this->LoadTexture(key);
        result = mContainer->find(key);
    }
    return result->second;
}

void TextureManager::UnloadTexture(std::string key){
    mContainer->erase(key);
}
