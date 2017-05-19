//
//  SceneManager.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "SceneManager.h"
#include "BaseScene.h"
#include "FirstScene.h"
#include "Timer.h"

static SceneManager* instance;

SceneManager* SceneManager::GetInstance() {
    if(instance == nullptr){
        instance = new SceneManager();
    }
    return instance;
}

SceneManager::SceneManager()
: mCurScene(nullptr), mNextScene(nullptr)
{
}

SceneManager::~SceneManager(){
    
}


void SceneManager::Init(){
    mCurScene = new FirstScene();
    mNextScene = mCurScene;
}

void SceneManager::Manage(GLKMatrix4 proj){
    Timer::GetInstance()->GetTick();
    float delta = Timer::GetInstance()->GetDeltaTime();
    
    {
        // Update
        mCurScene->Update();
    }
    
    {
        // Draw
        if(delta > SKIP_TICKS){
            // Draw Pass
        }
        else {
            // Draw
            mCurScene->Draw(proj);
        }
    }
    
    {
        // SceneManage
        if(mCurScene != mNextScene){
            delete mCurScene;
            mCurScene = mNextScene;
        }
    }

}

void SceneManager::Destroy(){
    if(mCurScene) delete mCurScene;
    if(mNextScene) delete mNextScene;
}

void SceneManager::LoadScene(BaseScene* pScene) {
    mNextScene = pScene;
}
