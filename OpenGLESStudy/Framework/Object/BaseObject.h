//
//  BaseObject.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef BaseObject_hpp
#define BaseObject_hpp

#include <string>
#include <GLKit/GLKit.h>

class BaseObject {
public:
    BaseObject();
    virtual ~BaseObject();
    
    virtual void Draw(GLKMatrix4 proj) = 0;
    virtual void Update() = 0;
};



#endif /* BaseObject_hpp */
