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

class BaseObject {
public:
    BaseObject();
    virtual ~BaseObject();
    
    virtual void Draw() = 0;
    virtual void Update() = 0;
};



#endif /* BaseObject_hpp */
