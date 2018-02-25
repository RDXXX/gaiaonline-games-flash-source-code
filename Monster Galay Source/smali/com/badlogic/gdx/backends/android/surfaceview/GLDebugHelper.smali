.class public Lcom/badlogic/gdx/backends/android/surfaceview/GLDebugHelper;
.super Ljava/lang/Object;
.source "GLDebugHelper.java"


# static fields
.field public static final CONFIG_CHECK_GL_ERROR:I = 0x1

.field public static final CONFIG_CHECK_THREAD:I = 0x2

.field public static final CONFIG_LOG_ARGUMENT_NAMES:I = 0x4

.field public static final ERROR_WRONG_THREAD:I = 0x7000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)Ljavax/microedition/khronos/egl/EGL;
    .locals 1
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    .prologue
    .line 72
    if-eqz p2, :cond_0

    .line 73
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/EGLLogWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/badlogic/gdx/backends/android/surfaceview/EGLLogWrapper;-><init>(Ljavax/microedition/khronos/egl/EGL;ILjava/io/Writer;)V

    .end local p0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL;
    move-object p0, v0

    .line 75
    .end local v0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    .restart local p0    # "egl":Ljavax/microedition/khronos/egl/EGL;
    :cond_0
    return-object p0
.end method

.method public static wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;
    .locals 3
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL;
    .param p1, "configFlags"    # I
    .param p2, "log"    # Ljava/io/Writer;

    .prologue
    .line 56
    if-eqz p1, :cond_2

    .line 57
    new-instance v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLErrorWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;I)V

    .line 59
    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL;
    :goto_0
    if-eqz p2, :cond_1

    .line 60
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 61
    .local v1, "logArgumentNames":Z
    :goto_1
    new-instance p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;

    invoke-direct {p0, v0, p2, v1}, Lcom/badlogic/gdx/backends/android/surfaceview/GLLogWrapper;-><init>(Ljavax/microedition/khronos/opengles/GL;Ljava/io/Writer;Z)V

    .line 63
    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .end local v1    # "logArgumentNames":Z
    .restart local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    :goto_2
    return-object p0

    .line 60
    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .end local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    goto :goto_2

    :cond_2
    move-object v0, p0

    .end local p0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    .restart local v0    # "gl":Ljavax/microedition/khronos/opengles/GL;
    goto :goto_0
.end method
