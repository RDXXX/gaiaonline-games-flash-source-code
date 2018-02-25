.class Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1902
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ansca/corona/opengl/GLSurfaceView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView$1;

    .prologue
    .line 1901
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1985
    iget-boolean v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v3, :cond_1

    .line 1986
    iput v4, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    .line 1988
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1989
    .local v1, "systemPropertiesClass":Ljava/lang/Class;
    const-string v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1991
    .local v0, "getIntMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.opengles.version"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1993
    .local v2, "value":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1996
    .end local v0    # "getIntMethod":Ljava/lang/reflect/Method;
    .end local v1    # "systemPropertiesClass":Ljava/lang/Class;
    :goto_0
    iget v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-lt v3, v4, :cond_0

    .line 1997
    iput-boolean v7, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 2003
    :cond_0
    iput-boolean v7, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 2005
    :cond_1
    return-void

    .line 1995
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1966
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1967
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1968
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1969
    .local v0, "renderer":Ljava/lang/String;
    iget v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x20000

    if-ge v3, v4, :cond_0

    .line 1970
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1972
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1974
    :cond_0
    iget-boolean v3, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1980
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1982
    .end local v0    # "renderer":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0    # "renderer":Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1970
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1974
    goto :goto_1

    .line 1966
    .end local v0    # "renderer":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 1950
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1951
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1957
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1961
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1962
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .prologue
    .line 1908
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->access$1102(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;Z)Z

    .line 1909
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 1912
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1913
    monitor-exit p0

    return-void

    .line 1908
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)Z
    .locals 2
    .param p1, "thread"    # Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .prologue
    const/4 v0, 0x1

    .line 1923
    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-nez v1, :cond_2

    .line 1924
    :cond_0
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    .line 1925
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1939
    :cond_1
    :goto_0
    return v0

    .line 1928
    :cond_2
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->checkGLESVersion()V

    .line 1929
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1936
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    if-eqz v0, :cond_3

    .line 1937
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->mEglOwner:Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->requestReleaseEglContextLocked()V

    .line 1939
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
