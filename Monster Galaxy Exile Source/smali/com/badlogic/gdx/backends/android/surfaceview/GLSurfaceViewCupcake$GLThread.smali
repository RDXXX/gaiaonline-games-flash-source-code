.class Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceViewCupcake.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mDone:Z

.field private mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

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

.field private mHasSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderMode:I

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSizeChanged:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 618
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    .line 619
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 843
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 620
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    .line 621
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 622
    iput v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 623
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 624
    iput v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    .line 625
    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 626
    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 627
    const-string v0, "GLThread"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->setName(Ljava/lang/String;)V

    .line 628
    return-void
.end method

.method private getEvent()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 826
    monitor-enter p0

    .line 827
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    monitor-exit p0

    .line 832
    :goto_0
    return-object v0

    .line 831
    :cond_0
    monitor-exit p0

    .line 832
    const/4 v0, 0x0

    goto :goto_0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private guardedRun()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 653
    new-instance v8, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;-><init>(Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;)V

    iput-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    .line 654
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->start()V

    .line 656
    const/4 v1, 0x0

    .line 657
    .local v1, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v6, 0x1

    .line 658
    .local v6, "tellRendererSurfaceCreated":Z
    const/4 v5, 0x1

    .line 663
    .local v5, "tellRendererSurfaceChanged":Z
    :cond_0
    :goto_0
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-nez v8, :cond_4

    .line 670
    const/4 v3, 0x0

    .line 671
    .local v3, "needStart":Z
    monitor-enter p0

    .line 673
    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->getEvent()Ljava/lang/Runnable;

    move-result-object v4

    .local v4, "r":Ljava/lang/Runnable;
    if-eqz v4, :cond_1

    .line 674
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 691
    .end local v4    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 676
    .restart local v4    # "r":Ljava/lang/Runnable;
    :cond_1
    :try_start_1
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    if-eqz v8, :cond_2

    .line 677
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->finish()V

    .line 678
    const/4 v3, 0x1

    .line 680
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->needToWait()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 681
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_2

    .line 683
    :cond_3
    iget-boolean v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-eqz v8, :cond_5

    .line 684
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    .end local v3    # "needStart":Z
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_4
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->finish()V

    .line 724
    return-void

    .line 686
    .restart local v3    # "needStart":Z
    .restart local v4    # "r":Ljava/lang/Runnable;
    :cond_5
    :try_start_2
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 687
    .local v0, "changed":Z
    iget v7, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 688
    .local v7, "w":I
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 689
    .local v2, "h":I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 690
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 691
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 692
    if-eqz v3, :cond_6

    .line 693
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->start()V

    .line 694
    const/4 v6, 0x1

    .line 695
    const/4 v0, 0x1

    .line 697
    :cond_6
    if-eqz v0, :cond_7

    .line 698
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->this$0:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;

    invoke-virtual {v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    .end local v1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 699
    .restart local v1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x1

    .line 701
    :cond_7
    if-eqz v6, :cond_8

    .line 702
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v9, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    iget-object v9, v9, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v8, v1, v9}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 703
    const/4 v6, 0x0

    .line 705
    :cond_8
    if-eqz v5, :cond_9

    .line 706
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v8, v1, v7, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 707
    const/4 v5, 0x0

    .line 709
    :cond_9
    if-lez v7, :cond_0

    if-lez v2, :cond_0

    .line 711
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    invoke-interface {v8, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 716
    iget-object v8, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEglHelper:Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;

    invoke-virtual {v8}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$EglHelper;->swap()Z

    goto :goto_0
.end method

.method private needToWait()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 727
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    if-eqz v2, :cond_1

    .line 739
    :cond_0
    :goto_0
    return v0

    .line 731
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 732
    goto :goto_0

    .line 735
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    if-lez v2, :cond_4

    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    if-eq v2, v1, :cond_0

    :cond_4
    move v0, v1

    .line 739
    goto :goto_0
.end method


# virtual methods
.method public getRenderMode()I
    .locals 1

    .prologue
    .line 755
    monitor-enter p0

    .line 756
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    monitor-exit p0

    return v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 782
    monitor-enter p0

    .line 783
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    .line 784
    monitor-exit p0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 788
    monitor-enter p0

    .line 789
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mPaused:Z

    .line 790
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 791
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowResize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 795
    monitor-enter p0

    .line 796
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mWidth:I

    .line 797
    iput p2, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHeight:I

    .line 798
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mSizeChanged:Z

    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 800
    monitor-exit p0

    .line 801
    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 820
    monitor-enter p0

    .line 821
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    monitor-exit p0

    .line 823
    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 2

    .prologue
    .line 806
    monitor-enter p0

    .line 807
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mDone:Z

    .line 808
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 809
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :try_start_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 815
    :goto_0
    return-void

    .line 809
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 761
    monitor-enter p0

    .line 762
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRequestRender:Z

    .line 763
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 764
    monitor-exit p0

    .line 765
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 640
    :try_start_0
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    :try_start_1
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->guardedRun()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 650
    :goto_0
    return-void

    .line 641
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 645
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 648
    sget-object v1, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake;->sEglSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    throw v1
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    const/4 v0, 0x1

    .line 743
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 744
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_1
    monitor-enter p0

    .line 747
    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mRenderMode:I

    .line 748
    if-ne p1, v0, :cond_2

    .line 749
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 751
    :cond_2
    monitor-exit p0

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 1

    .prologue
    .line 768
    monitor-enter p0

    .line 769
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    .line 770
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 771
    monitor-exit p0

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 1

    .prologue
    .line 775
    monitor-enter p0

    .line 776
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/surfaceview/GLSurfaceViewCupcake$GLThread;->mHasSurface:Z

    .line 777
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 778
    monitor-exit p0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
