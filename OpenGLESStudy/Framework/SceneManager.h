//
//  SceneManager.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef SceneManager_hpp
#define SceneManager_hpp

#include <GLKit/GLKit.h>
class BaseScene;

class SceneManager {
public:
    ~SceneManager();
    static SceneManager* GetInstance();
    
public:
    void Init();
    void Manage(GLKMatrix4 proj);
    void Destroy();
    
    void LoadScene(BaseScene* pScene);
    
private:
    SceneManager();
    BaseScene* mCurScene;
    BaseScene* mNextScene;

};

#endif /* SceneManager_hpp */
