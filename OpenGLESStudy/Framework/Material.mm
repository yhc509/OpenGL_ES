//
//  ShaderManager.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "Material.h"
#include "TextureManager.h"

Material::Material()
: mBaseEffect(nullptr), mTexture(nullptr),
mAmbientLight(GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f)),
mDiffuseLight(GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f)),
mSpecularLight(GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f))
{
    InitShader();
}

Material::~Material(){
    
}

void Material::InitShader(){
    mBaseEffect = [[GLKBaseEffect alloc] init];
    mBaseEffect.useConstantColor = GL_TRUE;
    mBaseEffect.constantColor = GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f);
    
    mBaseEffect.light0.enabled = GL_TRUE;
    mBaseEffect.light0.ambientColor = mAmbientLight;
    mBaseEffect.light0.diffuseColor = mDiffuseLight;
    mBaseEffect.light0.specularColor = mSpecularLight;
    mBaseEffect.light0.position = GLKVector4Make(1.0f, 0.0f, -0.8f, 0.0f);
}

GLKBaseEffect* Material::GetBaseEffect(){
    return mBaseEffect;
}

void Material::SetTexture(std::string textureName) {
    mTexture = TextureManager::GetInstance()->GetTexture(textureName);
    
    if(mTexture != nullptr) {
        GLKTextureInfo *textureInfo = [GLKTextureLoader
                                       textureWithCGImage:mTexture
                                       options:nil
                                       error:NULL];
        
        mBaseEffect.texture2d0.name = textureInfo.name;
        mBaseEffect.texture2d0.target = (GLKTextureTarget) textureInfo.target;
    }
    else {
        mBaseEffect.texture2d0.name = 0;
    }
}

void Material::SetAmbientLight(float r, float g, float b, float a) {
    mAmbientLight.r = r;
    mAmbientLight.g = g;
    mAmbientLight.b = b;
    mAmbientLight.a = a;
    mBaseEffect.light0.ambientColor = mAmbientLight;
}

void Material::SetDiffuseLight(float r, float g, float b, float a) {
    mDiffuseLight.r = r;
    mDiffuseLight.g = g;
    mDiffuseLight.b = b;
    mDiffuseLight.a = a;
    mBaseEffect.light0.diffuseColor = mDiffuseLight;
    
}

void Material::SetSpecularLight(float r, float g, float b, float a) {
    mSpecularLight.r = r;
    mSpecularLight.g = g;
    mSpecularLight.b = b;
    mSpecularLight.a = a;
    mBaseEffect.light0.specularColor = mSpecularLight;
}
