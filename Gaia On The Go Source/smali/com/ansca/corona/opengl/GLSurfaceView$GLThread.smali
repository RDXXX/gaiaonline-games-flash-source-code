.class Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

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

.field private mExited:Z

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

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
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
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/ansca/corona/opengl/GLSurfaceView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1361
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1846
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1362
    iput v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1363
    iput v2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1364
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1365
    iput v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1366
    iput-object p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1367
    return-void
.end method

.method static synthetic access$1102(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1359
    iput-boolean p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1408
    new-instance v18, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    .line 1409
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1410
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1412
    const/4 v8, 0x0

    .line 1413
    .local v8, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1414
    .local v3, "createEglContext":Z
    const/4 v4, 0x0

    .line 1415
    .local v4, "createEglSurface":Z
    const/4 v5, 0x0

    .line 1416
    .local v5, "createGlInterface":Z
    const/4 v10, 0x0

    .line 1417
    .local v10, "lostEglContext":Z
    const/4 v12, 0x0

    .line 1418
    .local v12, "sizeChanged":Z
    const/16 v17, 0x0

    .line 1419
    .local v17, "wantRenderNotification":Z
    const/4 v6, 0x0

    .line 1420
    .local v6, "doRenderNotification":Z
    const/4 v2, 0x0

    .line 1421
    .local v2, "askedToReleaseEglContext":Z
    const/16 v16, 0x0

    .line 1422
    .local v16, "w":I
    const/4 v9, 0x0

    .line 1423
    .local v9, "h":I
    const/4 v7, 0x0

    .line 1426
    .local v7, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v19

    monitor-enter v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1428
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 1429
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1660
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v19

    monitor-enter v19

    .line 1661
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1663
    monitor-exit v19

    return-void

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 1432
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/lang/Runnable;

    move-object v7, v0

    .line 1565
    :goto_2
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1567
    if-eqz v7, :cond_f

    .line 1568
    :try_start_4
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1569
    const/4 v7, 0x0

    .line 1570
    goto :goto_0

    .line 1438
    :cond_2
    const/4 v11, 0x0

    .line 1439
    .local v11, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 1440
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1442
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1449
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1453
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1454
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1455
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1456
    const/4 v2, 0x1

    .line 1460
    :cond_4
    if-eqz v10, :cond_5

    .line 1461
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1462
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1463
    const/4 v10, 0x0

    .line 1467
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 1471
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1472
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1474
    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1475
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1476
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1480
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 1484
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1485
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1488
    :cond_8
    if-eqz v6, :cond_9

    .line 1492
    const/16 v17, 0x0

    .line 1493
    const/4 v6, 0x0

    .line 1494
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1495
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1499
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1502
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1503
    if-eqz v2, :cond_d

    .line 1504
    const/4 v2, 0x0

    .line 1519
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 1520
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1521
    const/4 v4, 0x1

    .line 1522
    const/4 v5, 0x1

    .line 1523
    const/4 v12, 0x1

    .line 1526
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1527
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 1528
    const/4 v12, 0x1

    .line 1529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v16, v0

    .line 1530
    move-object/from16 v0, p0

    iget v9, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1531
    const/16 v17, 0x1

    .line 1539
    const/4 v4, 0x1

    .line 1541
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1543
    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1544
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1565
    .end local v11    # "pausing":Z
    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1660
    :catchall_2
    move-exception v18

    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v19

    monitor-enter v19

    .line 1661
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1662
    invoke-direct/range {p0 .. p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1663
    monitor-exit v19
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v18

    .line 1505
    .restart local v11    # "pausing":Z
    :cond_d
    :try_start_8
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v18

    if-eqz v18, :cond_a

    .line 1507
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1512
    const/16 v18, 0x1

    :try_start_a
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1513
    const/4 v3, 0x1

    .line 1515
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1508
    :catch_0
    move-exception v14

    .line 1509
    .local v14, "t":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V

    .line 1510
    throw v14

    .line 1563
    .end local v14    # "t":Ljava/lang/RuntimeException;
    :cond_e
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1573
    .end local v11    # "pausing":Z
    :cond_f
    if-eqz v4, :cond_11

    .line 1577
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v18

    if-nez v18, :cond_10

    .line 1578
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v19

    monitor-enter v19
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1579
    const/16 v18, 0x1

    :try_start_c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1580
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1581
    monitor-exit v19

    goto/16 :goto_0

    :catchall_3
    move-exception v18

    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v18

    .line 1584
    :cond_10
    const/4 v4, 0x0

    .line 1587
    :cond_11
    if-eqz v5, :cond_12

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v8, v0

    .line 1590
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1591
    const/4 v5, 0x0

    .line 1594
    :cond_12
    if-eqz v3, :cond_14

    .line 1598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1599
    .local v15, "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v15, :cond_13

    .line 1600
    invoke-static {v15}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v8, v1}, Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1602
    :cond_13
    const/4 v3, 0x0

    .line 1605
    .end local v15    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    :cond_14
    if-eqz v12, :cond_16

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1610
    .restart local v15    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v15, :cond_15

    .line 1611
    invoke-static {v15}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v8, v1, v9}, Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1613
    :cond_15
    const/4 v12, 0x0

    .line 1620
    .end local v15    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ansca/corona/opengl/GLSurfaceView;

    .line 1621
    .restart local v15    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    if-eqz v15, :cond_0

    if-lez v16, :cond_0

    if-lez v9, :cond_0

    .line 1622
    invoke-static {v15}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$900(Lcom/ansca/corona/opengl/GLSurfaceView;)Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/ansca/corona/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1623
    invoke-static {v15}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$1000(Lcom/ansca/corona/opengl/GLSurfaceView;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v13

    .line 1625
    .local v13, "swapError":I
    sparse-switch v13, :sswitch_data_0

    .line 1639
    const-string v18, "GLThread"

    const-string v19, "eglSwapBuffers"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1641
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v19

    monitor-enter v19
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1642
    const/16 v18, 0x1

    :try_start_e
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1643
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 1644
    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1647
    :goto_4
    :sswitch_0
    if-eqz v17, :cond_17

    .line 1648
    const/4 v6, 0x1

    .line 1650
    :cond_17
    const/16 v18, 0x0

    :try_start_f
    move/from16 v0, v18

    invoke-static {v15, v0}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$1002(Lcom/ansca/corona/opengl/GLSurfaceView;Z)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_0

    .line 1632
    :sswitch_1
    const/4 v10, 0x1

    .line 1633
    goto :goto_4

    .line 1644
    :catchall_4
    move-exception v18

    :try_start_10
    monitor-exit v19
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    throw v18
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1663
    .end local v13    # "swapError":I
    .end local v15    # "view":Lcom/ansca/corona/opengl/GLSurfaceView;
    :catchall_5
    move-exception v18

    :try_start_12
    monitor-exit v19
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v18

    .line 1625
    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1672
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1404
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V

    .line 1406
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1390
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1392
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEglHelper:Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1394
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1668
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1692
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1693
    :try_start_0
    iget v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasGLSurface()Z
    .locals 1

    .prologue
    .line 1678
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1739
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1743
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1744
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1745
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1750
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1755
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

    .line 1756
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1759
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1763
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1764
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1765
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1766
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1767
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1772
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1773
    :catch_0
    move-exception v0

    .line 1774
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1777
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

    .line 1778
    return-void
.end method

.method public onWindowResize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1781
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1782
    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    .line 1783
    iput p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1784
    iput p2, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1785
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1788
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1790
    :cond_0
    monitor-exit v1

    .line 1791
    return-void

    .line 1790
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1819
    if-nez p1, :cond_0

    .line 1820
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_0
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1823
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1825
    monitor-exit v1

    .line 1826
    return-void

    .line 1825
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
    .line 1796
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1797
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1798
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1799
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1801
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1802
    :catch_0
    move-exception v0

    .line 1803
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1806
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

    .line 1807
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1811
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1812
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1698
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1699
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1700
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1701
    monitor-exit v1

    .line 1702
    return-void

    .line 1701
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
    .line 1371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1377
    :try_start_0
    invoke-direct {p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1381
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V

    .line 1383
    :goto_0
    return-void

    .line 1378
    :catch_0
    move-exception v0

    .line 1381
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1682
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1683
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1685
    :cond_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1686
    :try_start_0
    iput p1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1687
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1688
    monitor-exit v1

    .line 1689
    return-void

    .line 1688
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1705
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1709
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1710
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1711
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1713
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1718
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

    .line 1719
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1722
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1726
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1727
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1728
    :goto_0
    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ansca/corona/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1730
    :try_start_1
    invoke-static {}, Lcom/ansca/corona/opengl/GLSurfaceView;->access$800()Lcom/ansca/corona/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1731
    :catch_0
    move-exception v0

    .line 1732
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1735
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

    .line 1736
    return-void
.end method
