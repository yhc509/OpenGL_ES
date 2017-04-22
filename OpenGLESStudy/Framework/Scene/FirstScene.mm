//
//  FirstScene.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "FirstScene.h"
#include "Triangle.h"

FirstScene::FirstScene()
{
    Init();
}

FirstScene::~FirstScene(){
    BaseScene::~BaseScene();
}

void FirstScene::Init(){
    BaseScene::Init();
    mObjects->push_back(new TriangleObject());
}

void FirstScene::Draw(){
    BaseScene::Draw();
}

void FirstScene::Update(){
    BaseScene::Update();
}
