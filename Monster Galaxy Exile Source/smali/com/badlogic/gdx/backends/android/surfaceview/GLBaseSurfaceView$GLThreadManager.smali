.class Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLBaseSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThreadManager"
.end annotation


# instance fields
.field private mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1045
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public releaseEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .line 1080
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1081
    return-void
.end method

.method public declared-synchronized threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V
    .locals 1
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .prologue
    .line 1051
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z

    .line 1052
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1053
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .line 1055
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    monitor-exit p0

    return-void

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)Z
    .locals 1
    .param p1, "thread"    # Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->mEglOwner:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;

    .line 1067
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1068
    const/4 v0, 0x1

    .line 1070
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
