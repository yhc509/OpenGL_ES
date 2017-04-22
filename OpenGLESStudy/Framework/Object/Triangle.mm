//
//  Triangle.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "Triangle.h"
#import <GLKit/GLKit.h>

GLuint vertexBufferID;
typedef struct {
    GLKVector3  positionCoords;
}
SceneVertex;

const SceneVertex vertices[] =
{
    {{-0.5f, -0.5f, 0.0}},
    {{ 0.5f, -0.5f, 0.0}},
    {{-0.5f,  0.5f, 0.0}}
};


TriangleObject::TriangleObject()
{
    Init();
}

TriangleObject::~TriangleObject(){
    
}

void TriangleObject::Init(){
    
    glGenBuffers(1, &vertexBufferID);
    glBindBuffer(GL_ARRAY_BUFFER, vertexBufferID);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    
}

void TriangleObject::Draw(){
    glEnableVertexAttribArray(GLKVertexAttribPosition);
    glVertexAttribPointer(GLKVertexAttribPosition, 3, GL_FLOAT, GL_FALSE, sizeof(SceneVertex), NULL);
    glDrawArrays(GL_TRIANGLES, 0, 3);
}

void TriangleObject::Update(){
    
}

void TriangleObject::Destroy(){
    
}


