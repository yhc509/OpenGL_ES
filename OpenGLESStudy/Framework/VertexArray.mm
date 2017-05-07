//
//  VertexArray.cpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#include "VertexArray.h"

VertexArray::VertexArray(const GLvoid * dataPtr, GLsizeiptr pStride, GLsizei pCount, GLenum usage)
: name(0)
{
    glGenBuffers(1, &name);
    InitVertexArray(dataPtr, pStride, pCount, usage);
}

VertexArray::~VertexArray(){
    if (0 != name)
    {
        glDeleteBuffers (1, &name); // Step 7
        name = 0;
    }
}

void VertexArray::InitVertexArray(const GLvoid * dataPtr, GLsizeiptr pStride, GLsizei pCount, GLenum usage){
    stride = pStride;
    bufferSizeBytes = stride * pCount;
    
    glBindBuffer(GL_ARRAY_BUFFER, name);
    glBufferData(GL_ARRAY_BUFFER, bufferSizeBytes, dataPtr, usage);
}

void VertexArray::PrepareToDraw(GLuint index, GLint count, GLsizeiptr offset, bool shouldEnable){
    glBindBuffer(GL_ARRAY_BUFFER, name);
    
    if(shouldEnable)
    {
        glEnableVertexAttribArray(index);
    }
    
    glVertexAttribPointer(index, count, GL_FLOAT, GL_FALSE, stride, (GLvoid*)offset);
    
#ifdef DEBUG
    {  // Report any errors
        GLenum error = glGetError();
        if(GL_NO_ERROR != error)
        {
            NSLog(@"GL Error: 0x%x", error);
        }
    }
#endif
}

void VertexArray::Draw(GLenum mode, GLint first, GLsizei count){
    glDrawArrays(mode, first, count);
}
