//
//  BaseScene.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "BaseScene.h"
#include "BaseObject.h"

BaseScene::BaseScene()
: mObjects(new std::vector<BaseObject*>())
{
    
}

BaseScene::~BaseScene(){
    while(!mObjects->empty()) {
        auto obj = mObjects->begin();
        mObjects->erase(obj);
        delete *obj;
    }
}


void BaseScene::Init(){
}

void BaseScene::Draw(){
    for(auto obj : *mObjects) {
        obj->Draw();
    }
}

void BaseScene::Update(){
    for(auto obj : *mObjects) {
        obj->Update();
    }
}
