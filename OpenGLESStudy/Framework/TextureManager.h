//
//  TextureManager.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef TextureManager_hpp
#define TextureManager_hpp

#import <string>
#import <map>
#import <GLKit/GLKit.h>

class TextureManager {
public:
    static TextureManager* GetInstance();
    
private:
    static TextureManager* mInstance;
    
public:
    ~TextureManager();
    void LoadTexture(std::string key);
    CGImageRef GetTexture(std::string key);
    void UnloadTexture(std::string key);
    
private:
    TextureManager();
    std::map<std::string, CGImageRef>* mContainer;
    
};

#endif /* TextureManager_hpp */
