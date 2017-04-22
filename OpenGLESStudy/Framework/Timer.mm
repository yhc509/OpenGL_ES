//
//  Time.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "Timer.h"
#include <time.h>
#include <iostream>

static Timer* instance;

Timer* Timer::GetInstance() {
    if(instance == nullptr){
        instance = new Timer();
    }
    return instance;
}

Timer::Timer()
: mPrevTime(clock()), mCurTime(mPrevTime), mDeltaTime(0) {
    
}

Timer::~Timer(){
    
}

void Timer::GetTick() {
    mCurTime = clock();
    mDeltaTime = (mCurTime - mPrevTime) / (float)CLOCKS_PER_SEC;
    
    mPrevTime = mCurTime;
}

float Timer::GetDeltaTime() const {
    return mDeltaTime;
}
