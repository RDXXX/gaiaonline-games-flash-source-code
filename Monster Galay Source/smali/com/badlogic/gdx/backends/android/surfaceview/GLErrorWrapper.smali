.class Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;
.super Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;
.source "GLErrorWrapper.java"


# instance fields
.field mCheckError:Z

.field mCheckThread:Z

.field mOurThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;I)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p2, "configFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLWrapperBase;-><init>(Ljavax/microedition/khronos/opengles/GL;)V

    .line 33
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mCheckError:Z

    .line 34
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mCheckThread:Z

    .line 35
    return-void

    :cond_0
    move v0, v2

    .line 33
    goto :goto_0

    :cond_1
    move v1, v2

    .line 34
    goto :goto_1
.end method

.method private checkError()V
    .locals 2

    .prologue
    .line 51
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mCheckError:Z

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .local v0, "glError":I
    if-eqz v0, :cond_0

    .line 54
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLException;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLException;-><init>(I)V

    throw v1

    .line 57
    .end local v0    # "glError":I
    :cond_0
    return-void
.end method

.method private checkThread()V
    .locals 4

    .prologue
    .line 38
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mCheckThread:Z

    if-eqz v1, :cond_0

    .line 39
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 40
    .local v0, "currentThread":Ljava/lang/Thread;
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    if-nez v1, :cond_1

    .line 41
    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    .line 48
    .end local v0    # "currentThread":Ljava/lang/Thread;
    :cond_0
    return-void

    .line 43
    .restart local v0    # "currentThread":Ljava/lang/Thread;
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mOurThread:Ljava/lang/Thread;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLException;

    const/16 v2, 0x7000

    const-string v3, "OpenGL method called from wrong thread."

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/backends/android/surfaceview/GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public glActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 64
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 65
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 66
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # F

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 70
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 71
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 72
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 76
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 77
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 78
    return-void
.end method

.method public glBindTexture(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "texture"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 83
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 84
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .param p1, "sfactor"    # I
    .param p2, "dfactor"    # I

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 89
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 90
    return-void
.end method

.method public glClear(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 95
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 96
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 101
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 102
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 106
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 107
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 108
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .param p1, "depth"    # F

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 112
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 113
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 114
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .param p1, "depth"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 119
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 120
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 125
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 126
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .param p1, "texture"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 131
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 132
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 825
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 826
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 827
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 819
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 820
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 821
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # Ljava/nio/IntBuffer;

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 837
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 838
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 839
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .param p1, "plane"    # I
    .param p2, "equation"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 830
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 831
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 832
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 833
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 136
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 137
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 138
    return-void
.end method

.method public glColor4x(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "alpha"    # I

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 142
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 143
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 144
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .param p1, "red"    # Z
    .param p2, "green"    # Z
    .param p3, "blue"    # Z
    .param p4, "alpha"    # Z

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 148
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 149
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 150
    return-void
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 155
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 156
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "imageSize"    # I
    .param p8, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 162
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 163
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "imageSize"    # I
    .param p9, "data"    # Ljava/nio/Buffer;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 168
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 169
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 170
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "border"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 174
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 175
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 176
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 181
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 182
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 186
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 187
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 188
    return-void
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 199
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 200
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 192
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 193
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 194
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .param p1, "func"    # I

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 205
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 206
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 211
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 212
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .param p1, "near"    # F
    .param p2, "far"    # F

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 217
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 218
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .param p1, "near"    # I
    .param p2, "far"    # I

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 223
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 224
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 228
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 229
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 230
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 235
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 236
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "first"    # I
    .param p3, "count"    # I

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 241
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 242
    return-void
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "count"    # I
    .param p3, "type"    # I
    .param p4, "indices"    # Ljava/nio/Buffer;

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 246
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 247
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 248
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 844
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 845
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 846
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 847
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 856
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 857
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 858
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 859
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .param p1, "coords"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 851
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 852
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 853
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 863
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 864
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 865
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 875
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 876
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 877
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 869
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 870
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 871
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .param p1, "x"    # S
    .param p2, "y"    # S
    .param p3, "z"    # S
    .param p4, "width"    # S
    .param p5, "height"    # S

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 881
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 882
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 883
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/ShortBuffer;

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 893
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 894
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 895
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .param p1, "coords"    # [S
    .param p2, "offset"    # I

    .prologue
    .line 886
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 887
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 888
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 889
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 899
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 900
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 901
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "coords"    # Ljava/nio/IntBuffer;

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 911
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 912
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 913
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .param p1, "coords"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 905
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 906
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 907
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .param p1, "cap"    # I

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 253
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 254
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .param p1, "array"    # I

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 259
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 260
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 265
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 266
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 271
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 272
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 275
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 277
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 278
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 288
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 289
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 290
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 283
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 284
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 294
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 295
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 296
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 307
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 308
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 300
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 301
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 302
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 313
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 314
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 318
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 319
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 320
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 324
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 325
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 326
    return-void
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # Ljava/nio/IntBuffer;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 336
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 337
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 338
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .param p1, "n"    # I
    .param p2, "textures"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 330
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 331
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 332
    return-void
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 342
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 343
    .local v0, "result":I
    return v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 354
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 355
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 356
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 348
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 349
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 350
    return-void
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # I

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 360
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 362
    return-object v0
.end method

.method public glHint(II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "mode"    # I

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 368
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 369
    return-void
.end method

.method public glLightModelf(IF)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # F

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 374
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 375
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 386
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 387
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [F
    .param p3, "offset"    # I

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 380
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 381
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 391
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 392
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 393
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 403
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 404
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 405
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "params"    # [I
    .param p3, "offset"    # I

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 398
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 399
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 410
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 411
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 420
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 422
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 423
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 414
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 415
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 416
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 417
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 427
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 428
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 429
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 440
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 441
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .param p1, "light"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 433
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 434
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 435
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 446
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 447
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 452
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 453
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 457
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 458
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 459
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 468
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 470
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 471
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 464
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 465
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 482
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 483
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 475
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 476
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 477
    return-void
.end method

.method public glLogicOp(I)V
    .locals 1
    .param p1, "opcode"    # I

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 487
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 488
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 489
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 493
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 494
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 495
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 506
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 507
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 500
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 501
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 511
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 512
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 513
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 523
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 524
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 525
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .param p1, "face"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 517
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 518
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 519
    return-void
.end method

.method public glMatrixMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 529
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 530
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 531
    return-void
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 542
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 543
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .param p1, "m"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 534
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 535
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 536
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 537
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 1
    .param p1, "m"    # Ljava/nio/IntBuffer;

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 554
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 555
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .param p1, "m"    # [I
    .param p2, "offset"    # I

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 548
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 549
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # F
    .param p3, "t"    # F
    .param p4, "r"    # F
    .param p5, "q"    # F

    .prologue
    .line 558
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 560
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 561
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "s"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "q"    # I

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 566
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 567
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .param p1, "nx"    # F
    .param p2, "ny"    # F
    .param p3, "nz"    # F

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 572
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 573
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .param p1, "nx"    # I
    .param p2, "ny"    # I
    .param p3, "nz"    # I

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 578
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 579
    return-void
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "stride"    # I
    .param p3, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 584
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 585
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .param p1, "left"    # F
    .param p2, "right"    # F
    .param p3, "bottom"    # F
    .param p4, "top"    # F
    .param p5, "near"    # F
    .param p6, "far"    # F

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 590
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 591
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "top"    # I
    .param p5, "near"    # I
    .param p6, "far"    # I

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 595
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 596
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 597
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .param p1, "pname"    # I
    .param p2, "param"    # I

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 601
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 602
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 603
    return-void
.end method

.method public glPointSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 608
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 609
    return-void
.end method

.method public glPointSizex(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 612
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 614
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 615
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .param p1, "factor"    # F
    .param p2, "units"    # F

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 620
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 621
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .param p1, "factor"    # I
    .param p2, "units"    # I

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 625
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 626
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 627
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 632
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 633
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 638
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 639
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 2
    .param p1, "mantissa"    # Ljava/nio/IntBuffer;
    .param p2, "exponent"    # Ljava/nio/IntBuffer;

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 924
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    .line 925
    .local v0, "valid":I
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 926
    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 2
    .param p1, "mantissa"    # [I
    .param p2, "mantissaOffset"    # I
    .param p3, "exponent"    # [I
    .param p4, "exponentOffset"    # I

    .prologue
    .line 916
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 917
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v1, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    .line 918
    .local v0, "valid":I
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 919
    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "type"    # I
    .param p7, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 644
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 645
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .param p1, "angle"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 650
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 651
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 655
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 656
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 657
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .param p1, "value"    # F
    .param p2, "invert"    # Z

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 662
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 663
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "invert"    # Z

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 668
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 669
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 672
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 674
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 675
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 680
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 681
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 686
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 687
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 690
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 692
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 693
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .param p1, "func"    # I
    .param p2, "ref"    # I
    .param p3, "mask"    # I

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 698
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 699
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 704
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 705
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .param p1, "fail"    # I
    .param p2, "zfail"    # I
    .param p3, "zpass"    # I

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 709
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 710
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 711
    return-void
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 716
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 717
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 721
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 722
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 723
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/FloatBuffer;

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 733
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 734
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 735
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [F
    .param p4, "offset"    # I

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 728
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 729
    return-void
.end method

.method public glTexEnvx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 739
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 740
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 741
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 751
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 752
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 753
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 745
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 746
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 747
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "internalformat"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "border"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 758
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 759
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 760
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # F

    .prologue
    .line 763
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 764
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 765
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 766
    return-void
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # Ljava/nio/IntBuffer;

    .prologue
    .line 781
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 782
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 783
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 784
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "params"    # [I
    .param p4, "offset"    # I

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 776
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 777
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 778
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .param p1, "target"    # I
    .param p2, "pname"    # I
    .param p3, "param"    # I

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 770
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 771
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 772
    return-void
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .param p1, "target"    # I
    .param p2, "level"    # I
    .param p3, "xoffset"    # I
    .param p4, "yoffset"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "format"    # I
    .param p8, "type"    # I
    .param p9, "pixels"    # Ljava/nio/Buffer;

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 789
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 790
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 791
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 795
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 796
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 797
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 801
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 802
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 803
    return-void
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "type"    # I
    .param p3, "stride"    # I
    .param p4, "pointer"    # Ljava/nio/Buffer;

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 807
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 808
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 809
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkThread()V

    .line 813
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 814
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;->checkError()V

    .line 815
    return-void
.end method
