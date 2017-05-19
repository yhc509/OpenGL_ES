//
//  BaseScene.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef BaseScene_hpp
#define BaseScene_hpp

#include <GLKit/GLKit.h>
#include <vector>

class BaseObject;

class BaseScene {
public:
    BaseScene();
    virtual ~BaseScene();
    virtual void Init();
    virtual void Draw(GLKMatrix4 proj);
    virtual void Update();

protected:
    std::vector<BaseObject*>* mObjects;
};




#endif /* BaseScene_hpp */
