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

class VertexArray;
class Material;

class TriangleObject : public BaseObject {
public:
    TriangleObject();
    ~TriangleObject();
    
    void Draw();
    void Update();
    
private:
    VertexArray* mVertexArray;
    Material* mMaterial;
};


#endif /* Triangle_hpp */
