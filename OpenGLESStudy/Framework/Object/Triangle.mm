//
//  Triangle.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 4. 22..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "Triangle.h"
#include "VertexArray.h"

typedef struct {
    GLKVector3  positionCoords;
    GLKVector2 textureCoords;
    GLKVector3  color;
}
SceneVertex;

const SceneVertex vertices[] =
{
    {{-0.5f, -0.5f, 0.0}, {0.0f, 0.0f}, {1.0f, 1.0f, 1.0f}},
    {{ 0.5f, -0.5f, 0.0}, {1.0f, 0.0f}, {1.0f, 1.0f, 1.0f}},
    {{-0.5f,  0.5f, 0.0}, {0.0f, 1.0f}, {1.0f, 1.0f, 1.0f}}
};


TriangleObject::TriangleObject()
: mVertexArray(new VertexArray(vertices, sizeof(SceneVertex), sizeof(vertices) / sizeof(SceneVertex), GL_STATIC_DRAW))
{
    
}

TriangleObject::~TriangleObject(){
    if(mVertexArray != nullptr) delete mVertexArray;
}

void TriangleObject::Draw(){
    mVertexArray->PrepareToDraw(GLKVertexAttribPosition, 3, offsetof(SceneVertex, positionCoords), YES);
    mVertexArray->PrepareToDraw(GLKVertexAttribTexCoord0, 2, offsetof(SceneVertex, textureCoords), YES);
    mVertexArray->PrepareToDraw(GLKVertexAttribColor, 3, offsetof(SceneVertex, color), YES);
    
    mVertexArray->Draw(GL_TRIANGLES, 0, 3);
}

void TriangleObject::Update(){
    
}

