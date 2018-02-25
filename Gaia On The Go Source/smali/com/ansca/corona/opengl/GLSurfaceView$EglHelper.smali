.class Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EglHelper"
.end annotation


# instance fields
.field mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ansca/corona/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRetriedCreatingSurface:Z


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ansca/corona/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ansca/corona/opengl/GLSurfaceView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    .line 1032
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1033
    return-void
.end method

.method private destroySurfaceImp()V
    .locals 6

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1259
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1260
    .local v0, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    .line 1261
    invoke-static {v0}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$500(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v3, v4}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 1263
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1265
    .end local v0    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    :cond_1
    return-void
.end method

.method public static formatEglError(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 1302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 1306
    packed-switch p0, :pswitch_data_0

    .line 1338
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1308
    :pswitch_0
    const-string v0, "EGL_SUCCESS"

    goto :goto_0

    .line 1310
    :pswitch_1
    const-string v0, "EGL_NOT_INITIALIZED"

    goto :goto_0

    .line 1312
    :pswitch_2
    const-string v0, "EGL_BAD_ACCESS"

    goto :goto_0

    .line 1314
    :pswitch_3
    const-string v0, "EGL_BAD_ALLOC"

    goto :goto_0

    .line 1316
    :pswitch_4
    const-string v0, "EGL_BAD_ATTRIBUTE"

    goto :goto_0

    .line 1318
    :pswitch_5
    const-string v0, "EGL_BAD_CONFIG"

    goto :goto_0

    .line 1320
    :pswitch_6
    const-string v0, "EGL_BAD_CONTEXT"

    goto :goto_0

    .line 1322
    :pswitch_7
    const-string v0, "EGL_BAD_CURRENT_SURFACE"

    goto :goto_0

    .line 1324
    :pswitch_8
    const-string v0, "EGL_BAD_DISPLAY"

    goto :goto_0

    .line 1326
    :pswitch_9
    const-string v0, "EGL_BAD_MATCH"

    goto :goto_0

    .line 1328
    :pswitch_a
    const-string v0, "EGL_BAD_NATIVE_PIXMAP"

    goto :goto_0

    .line 1330
    :pswitch_b
    const-string v0, "EGL_BAD_NATIVE_WINDOW"

    goto :goto_0

    .line 1332
    :pswitch_c
    const-string v0, "EGL_BAD_PARAMETER"

    goto :goto_0

    .line 1334
    :pswitch_d
    const-string v0, "EGL_BAD_SURFACE"

    goto :goto_0

    .line 1336
    :pswitch_e
    const-string v0, "EGL_CONTEXT_LOST"

    goto :goto_0

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x3000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "error"    # I

    .prologue
    .line 1298
    invoke-static {p1, p2}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void
.end method

.method private recreateSurface()Z
    .locals 6

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1188
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1189
    .local v1, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_1

    .line 1190
    invoke-virtual {v1}, Lcom/ansca/corona/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1191
    .local v0, "holder":Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1192
    invoke-static {v1}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1194
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1198
    .end local v0    # "holder":Landroid/view/SurfaceHolder;
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->start()V

    .line 1199
    invoke-virtual {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    return v2
.end method

.method private throwEglException(Ljava/lang/String;)V
    .locals 1
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    invoke-static {p1, v0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;I)V

    .line 1286
    return-void
.end method

.method public static throwEglException(Ljava/lang/String;I)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "error"    # I

    .prologue
    .line 1289
    invoke-static {p0, p1}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->formatEglError(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method createGL()Ljavax/microedition/khronos/opengles/GL;
    .locals 5

    .prologue
    .line 1208
    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v4}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1209
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL;
    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1210
    .local v3, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v3, :cond_3

    .line 1211
    invoke-static {v3}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$600(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1212
    invoke-static {v3}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$600(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLWrapper;->wrap(Ljavax/microedition/khronos/opengles/GL;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1215
    :cond_0
    invoke-static {v3}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x3

    if-eqz v4, :cond_3

    .line 1216
    const/4 v0, 0x0

    .line 1217
    .local v0, "configFlags":I
    const/4 v2, 0x0

    .line 1218
    .local v2, "log":Ljava/io/Writer;
    invoke-static {v3}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 1219
    or-int/lit8 v0, v0, 0x1

    .line 1221
    :cond_1
    invoke-static {v3}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$700(Lcom/ansca/corona/opengl/GLSurfaceView;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1222
    new-instance v2, Lcom/ansca/corona/opengl/GLSurfaceView$LogWriter;

    .end local v2    # "log":Ljava/io/Writer;
    invoke-direct {v2}, Lcom/ansca/corona/opengl/GLSurfaceView$LogWriter;-><init>()V

    .line 1224
    .restart local v2    # "log":Ljava/io/Writer;
    :cond_2
    invoke-static {v1, v0, v2}, Landroid/opengl/GLDebugHelper;->wrap(Ljavax/microedition/khronos/opengles/GL;ILjava/io/Writer;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .line 1227
    .end local v0    # "configFlags":I
    .end local v2    # "log":Ljava/io/Writer;
    :cond_3
    return-object v1
.end method

.method public createSurface()Z
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1102
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v6, :cond_0

    .line 1103
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "egl not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1105
    :cond_0
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-nez v6, :cond_1

    .line 1106
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "eglDisplay not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1108
    :cond_1
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v6, :cond_2

    .line 1109
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "mEglConfig not initialized"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1116
    :cond_2
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1121
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1122
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1123
    .local v4, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v4, :cond_3

    .line 1124
    invoke-virtual {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 1125
    .local v1, "holder":Landroid/view/SurfaceHolder;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Surface;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1126
    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$500(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    move-result-object v6

    iget-object v9, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v10, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v11, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v6, v9, v10, v11, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLWindowSurfaceFactory;->createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1130
    .end local v1    # "holder":Landroid/view/SurfaceHolder;
    :cond_3
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v9, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v9, :cond_6

    .line 1131
    :cond_4
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 1132
    .local v0, "error":I
    const/16 v6, 0x300b

    if-ne v0, v6, :cond_5

    .line 1133
    const-string v6, "EglHelper"

    const-string v8, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move v6, v7

    .line 1178
    .end local v0    # "error":I
    :goto_0
    return v6

    .line 1142
    :cond_6
    iget-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v9, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v10, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v11, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v12, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v6, v9, v10, v11, v12}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1147
    const-string v6, "EGLHelper"

    const-string v8, "eglMakeCurrent"

    iget-object v9, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v9}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v9

    invoke-static {v6, v8, v9}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    move v6, v7

    .line 1148
    goto :goto_0

    .line 1153
    :cond_7
    iget-boolean v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    if-nez v6, :cond_8

    .line 1154
    const/16 v6, 0x1f01

    invoke-static {v6}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 1155
    .local v3, "rendererName":Ljava/lang/String;
    if-eqz v3, :cond_8

    const-string v6, "PowerVR SGX 540"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v6

    instance-of v6, v6, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    if-eqz v6, :cond_8

    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->getMinAlphaSize()I

    move-result v6

    if-lez v6, :cond_8

    .line 1161
    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v6}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->getMinAlphaSize()I

    move-result v2

    .line 1162
    .local v2, "previousMinAlphaSize":I
    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v6, v7}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->setMinAlphaSize(I)V

    .line 1163
    const/4 v5, 0x0

    .line 1165
    .local v5, "wasSurfaceCreated":Z
    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->recreateSurface()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1168
    :goto_1
    if-nez v5, :cond_8

    .line 1171
    iput-boolean v8, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mHasRetriedCreatingSurface:Z

    .line 1172
    invoke-static {v4}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v6

    check-cast v6, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;

    invoke-virtual {v6, v2}, Lcom/ansca/corona/opengl/GLSurfaceView$ComponentSizeChooser;->setMinAlphaSize(I)V

    .line 1173
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->recreateSurface()Z

    move-result v6

    goto :goto_0

    .end local v2    # "previousMinAlphaSize":I
    .end local v3    # "rendererName":Ljava/lang/String;
    .end local v5    # "wasSurfaceCreated":Z
    :cond_8
    move v6, v8

    .line 1178
    goto :goto_0

    .line 1167
    .restart local v2    # "previousMinAlphaSize":I
    .restart local v3    # "rendererName":Ljava/lang/String;
    .restart local v5    # "wasSurfaceCreated":Z
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public destroySurface()V
    .locals 0

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    .line 1252
    return-void
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1271
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v1, :cond_1

    .line 1272
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1273
    .local v0, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v0, :cond_0

    .line 1274
    invoke-static {v0}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1276
    :cond_0
    iput-object v5, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1278
    .end local v0    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    .line 1279
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 1280
    iput-object v5, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1282
    :cond_2
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1046
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 1051
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 1053
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 1054
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1060
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1061
    .local v0, "version":[I
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1062
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1064
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1065
    .local v1, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-nez v1, :cond_4

    .line 1066
    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1067
    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1077
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 1078
    :cond_2
    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 1079
    const-string v2, "createContext"

    invoke-direct {p0, v2}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->throwEglException(Ljava/lang/String;)V

    .line 1085
    :cond_3
    iput-object v6, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1086
    return-void

    .line 1069
    :cond_4
    invoke-static {v1}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$300(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v4}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 1075
    invoke-static {v1}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$400(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v2, v3, v4, v5}, Lcom/ansca/corona/opengl/GLSurfaceView$EGLContextFactory;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    goto :goto_0
.end method

.method public swap()I
    .locals 3

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    const/16 v0, 0x3001

    .line 1244
    :goto_0
    return v0

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1242
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_0

    .line 1244
    :cond_2
    const/16 v0, 0x3000

    goto :goto_0
.end method
