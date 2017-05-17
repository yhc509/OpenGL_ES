//
//  ShaderManager.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef ShaderManager_hpp
#define ShaderManager_hpp

#import <GLKit/GLKit.h>
#include <string>

class Material {
public:
    Material();
    ~Material();
    
    GLKBaseEffect* GetBaseEffect();
    void SetTexture(std::string textureName);
    void SetAmbientLight(float r, float g, float b, float a);
    void SetDiffuseLight(float r, float g, float b, float a);
    void SetSpecularLight(float r, float g, float b, float a);
    
private:
    void InitShader();
    
    GLKBaseEffect* mBaseEffect;
    CGImageRef mTexture;
    
    GLKVector4 mAmbientLight;
    GLKVector4 mDiffuseLight;
    GLKVector4 mSpecularLight;
    
};
#endif /* ShaderManager_hpp */
