//
//  Time.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef Timer_hpp
#define Timer_hpp

#include <stdio.h>

class Timer {
public:
    ~Timer();
    static Timer* GetInstance();
    
public:
    void GetTick();
    float GetDeltaTime() const;
    
private:
    Timer();
    
    float mPrevTime;
    float mCurTime;
    float mDeltaTime;
};

const int FRAMES_PER_SECOND = 60;
const float SKIP_TICKS = 1.0f / FRAMES_PER_SECOND;


#endif /* Time_hpp */
