.class Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLBaseSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mExited:Z

.field private mHasSurface:Z

.field private mHaveEgl:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 681
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    .line 682
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 683
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 684
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 685
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 686
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    .line 687
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 688
    return-void
.end method

.method private guardedRun()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 719
    new-instance v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;)V

    iput-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    .line 721
    const/4 v4, 0x0

    .line 722
    .local v4, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 723
    .local v1, "createEglSurface":Z
    const/4 v6, 0x0

    .line 724
    .local v6, "sizeChanged":Z
    const/4 v8, 0x0

    .line 725
    .local v8, "wantRenderNotification":Z
    const/4 v2, 0x0

    .line 726
    .local v2, "doRenderNotification":Z
    const/4 v7, 0x0

    .line 727
    .local v7, "w":I
    const/4 v5, 0x0

    .line 728
    .local v5, "h":I
    const/4 v3, 0x0

    .line 731
    .local v3, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    sget-object v10, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 733
    :goto_1
    :try_start_1
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v9, :cond_1

    .line 734
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 863
    sget-object v10, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v10

    .line 864
    :try_start_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 865
    monitor-exit v10

    return-void

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 737
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 738
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 820
    :goto_2
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 822
    if-eqz v3, :cond_c

    .line 823
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 824
    const/4 v3, 0x0

    .line 825
    goto :goto_0

    .line 743
    :cond_2
    :try_start_5
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-eqz v9, :cond_3

    .line 747
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 751
    :cond_3
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v9, :cond_5

    .line 755
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v9, :cond_4

    .line 756
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 758
    :cond_4
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 759
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 763
    :cond_5
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v9, :cond_6

    .line 767
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 768
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 771
    :cond_6
    if-eqz v2, :cond_7

    .line 772
    const/4 v8, 0x0

    .line 773
    const/4 v2, 0x0

    .line 774
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z

    .line 775
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 779
    :cond_7
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v9, :cond_b

    iget v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    if-lez v9, :cond_b

    iget v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    if-lez v9, :cond_b

    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    if-nez v9, :cond_8

    iget v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    if-ne v9, v12, :cond_b

    .line 783
    :cond_8
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-nez v9, :cond_9

    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 784
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    .line 785
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->start()V

    .line 786
    const/4 v1, 0x1

    .line 787
    const/4 v6, 0x1

    .line 788
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 791
    :cond_9
    iget-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v9, :cond_b

    .line 792
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    iget-boolean v9, v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    if-eqz v9, :cond_a

    .line 793
    const/4 v6, 0x1

    .line 794
    iget v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 795
    iget v5, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 796
    const/4 v8, 0x1

    .line 805
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    .line 809
    :goto_3
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 820
    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 863
    :catchall_2
    move-exception v9

    sget-object v10, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v10

    .line 864
    :try_start_7
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->stopEglLocked()V

    .line 865
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9

    .line 807
    :cond_a
    const/4 v9, 0x0

    :try_start_8
    iput-boolean v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 818
    :cond_b
    sget-object v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 828
    :cond_c
    if-eqz v1, :cond_d

    .line 829
    :try_start_9
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    invoke-virtual {v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v4, v0

    .line 833
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v10, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    iget-object v10, v10, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v9, v4, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 834
    const/4 v1, 0x0

    .line 837
    :cond_d
    if-eqz v6, :cond_e

    .line 841
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v9, v4, v7, v5}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 842
    const/4 v6, 0x0

    .line 848
    :cond_e
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v9, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 849
    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->swap()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result v9

    if-nez v9, :cond_f

    .line 855
    :cond_f
    if-eqz v8, :cond_0

    .line 856
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 865
    :catchall_3
    move-exception v9

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v9
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    if-eqz v0, :cond_0

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHaveEgl:Z

    .line 712
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->destroySurface()V

    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$EglHelper;->finish()V

    .line 714
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    .line 716
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 880
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 881
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 920
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 921
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    .line 922
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 923
    monitor-exit v1

    .line 924
    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 927
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 928
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    .line 929
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 930
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 931
    monitor-exit v1

    .line 932
    return-void

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 935
    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v2

    .line 936
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWidth:I

    .line 937
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHeight:I

    .line 938
    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->mSizeChanged:Z

    .line 939
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 940
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z

    .line 941
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 944
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 949
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 950
    :catch_0
    move-exception v0

    .line 951
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 954
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 955
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 980
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 982
    monitor-exit v1

    .line 983
    return-void

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 960
    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v2

    .line 961
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mShouldExit:Z

    .line 962
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 963
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 965
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 966
    :catch_0
    move-exception v0

    .line 967
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 970
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 971
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 886
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 887
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRequestRender:Z

    .line 888
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 889
    monitor-exit v1

    .line 890
    return-void

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 698
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    .line 704
    :goto_0
    return-void

    .line 699
    :catch_0
    move-exception v0

    .line 702
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1, p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;->threadExiting(Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 870
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 871
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 874
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mRenderMode:I

    .line 875
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 876
    monitor-exit v1

    .line 877
    return-void

    .line 876
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 893
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v1

    .line 897
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    .line 898
    sget-object v0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 899
    monitor-exit v1

    .line 900
    return-void

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 903
    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    monitor-enter v2

    .line 907
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mHasSurface:Z

    .line 908
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 909
    :goto_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 911
    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView;->sGLThreadManager:Lcom/badlogic/gdx/backends/android/surfaceview/GLBaseSurfaceView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 916
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 917
    return-void
.end method
