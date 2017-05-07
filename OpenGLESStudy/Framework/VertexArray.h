//
//  VertexArray.hpp
//  OpenGLESStudy
//
//  Created by 장윤형 on 2017. 5. 7..
//  Copyright © 2017년 장윤형. All rights reserved.
//

#ifndef VertexArray_hpp
#define VertexArray_hpp

#import <GLKit/GLKit.h>

class VertexArray {
public:
    VertexArray(const GLvoid* dataPtr, GLsizeiptr pStride, GLsizei pCount, GLenum usage);
    ~VertexArray();
    
    void InitVertexArray(const GLvoid* dataPtr, GLsizeiptr pStride, GLsizei pCount, GLenum usage);
    void PrepareToDraw(GLuint index, GLint count, GLsizeiptr offset, bool shouldEnable);
    void Draw(GLenum mode, GLint first, GLsizei count);
    
    GLuint name;
    GLsizeiptr bufferSizeBytes;
    GLsizeiptr stride;
};

typedef enum {
    AGLKVertexAttribPosition = GLKVertexAttribPosition,
    AGLKVertexAttribNormal = GLKVertexAttribNormal,
    AGLKVertexAttribColor = GLKVertexAttribColor,
    AGLKVertexAttribTexCoord0 = GLKVertexAttribTexCoord0,
    AGLKVertexAttribTexCoord1 = GLKVertexAttribTexCoord1,
} AGLKVertexAttrib;


#endif /* VertexArray_hpp */
