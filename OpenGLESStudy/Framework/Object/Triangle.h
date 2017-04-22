//
//  Triangle.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef Triangle_hpp
#define Triangle_hpp

#include "BaseObject.h"
class TriangleObject : public BaseObject {
public:
    TriangleObject();
    ~TriangleObject();
    
    void Init();
    void Draw();
    void Update();
    void Destroy();
    
private:
    
};


#endif /* Triangle_hpp */
