//
//  ViewController.m
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#import "ViewController.h"
#import "SceneManager.h"

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize OpenGL ES
    GLKView *view = (GLKView *)self.view;
    NSAssert([view isKindOfClass:[GLKView class]],
             @"View controller's view is not a GLKView");
    
    view.drawableDepthFormat = GLKViewDrawableDepthFormat16;
    
    view.context = [[EAGLContext alloc]
                    initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    [EAGLContext setCurrentContext:view.context];
    
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    glEnable(GL_DEPTH_TEST);
    
    // Initialize Scene
    SceneManager::GetInstance()->Init();
}

- (void)glkView:(GLKView *)view
     drawInRect:(CGRect)rect
{
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    
    float aspectRatio = (GLfloat) view.drawableWidth / (GLfloat) view.drawableHeight;
    GLKMatrix4 proj = GLKMatrix4MakeScale(1.0f, aspectRatio, 1.0f);
    SceneManager::GetInstance()->Manage(proj);
}

@end
