//
//  ViewController.m
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#import "ViewController.h"
#include "SceneManager.h"

@implementation ViewController

@synthesize baseEffect;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Initialize OpenGL ES
    GLKView *view = (GLKView *)self.view;
    NSAssert([view isKindOfClass:[GLKView class]],
             @"View controller's view is not a GLKView");
    
    view.context = [[EAGLContext alloc]
                    initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    [EAGLContext setCurrentContext:view.context];
    
    // Create Shader
    self.baseEffect = [[GLKBaseEffect alloc] init];
    self.baseEffect.useConstantColor = GL_TRUE;
    self.baseEffect.constantColor = GLKVector4Make(1.0f, 1.0f, 1.0f, 1.0f);
    
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
    
    // Initialize Scene
    SceneManager::GetInstance()->Init();
}

- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    [self.baseEffect prepareToDraw];
    glClear(GL_COLOR_BUFFER_BIT);
    
    SceneManager::GetInstance()->Manage();
}

@end
