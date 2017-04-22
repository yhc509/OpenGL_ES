//
//  FirstScene.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef FirstScene_hpp
#define FirstScene_hpp

#include "BaseScene.h"

class FirstScene : public BaseScene {
public:
    FirstScene();
    ~FirstScene();
    
    void Init();
    void Draw();
    void Update();
    
private:
    
};


#endif /* FirstScene_hpp */
