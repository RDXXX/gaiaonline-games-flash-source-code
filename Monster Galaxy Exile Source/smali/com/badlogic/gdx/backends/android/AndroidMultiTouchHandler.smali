.class public Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;
.super Ljava/lang/Object;
.source "AndroidMultiTouchHandler.java"

# interfaces
.implements Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logAction(II)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "pointer"    # I

    .prologue
    .line 94
    const-string v0, ""

    .line 95
    .local v0, "actionStr":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 96
    const-string v0, "DOWN"

    .line 111
    :goto_0
    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v2, "AndroidMultiTouchHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Android pointer id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 98
    const-string v0, "POINTER DOWN"

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 100
    const-string v0, "UP"

    goto :goto_0

    .line 101
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 102
    const-string v0, "POINTER UP"

    goto :goto_0

    .line 103
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 104
    const-string v0, "OUTSIDE"

    goto :goto_0

    .line 105
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 106
    const-string v0, "CANCEL"

    goto :goto_0

    .line 107
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 108
    const-string v0, "MOVE"

    goto :goto_0

    .line 110
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V
    .locals 2
    .param p1, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;
    .param p2, "type"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "pointer"    # I
    .param p6, "timeStamp"    # J

    .prologue
    .line 116
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 117
    .local v0, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iput-wide p6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    .line 118
    iput p5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    .line 119
    iput p3, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    .line 120
    iput p4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    .line 121
    iput p2, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    .line 122
    iget-object v1, p1, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "input"    # Lcom/badlogic/gdx/backends/android/AndroidInput;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 31
    .local v8, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v12, v0, 0x8

    .line 32
    .local v12, "pointerIndex":I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 34
    .local v11, "pointerId":I
    const/4 v3, 0x0

    .local v3, "x":I
    const/4 v4, 0x0

    .line 35
    .local v4, "y":I
    const/4 v5, 0x0

    .line 37
    .local v5, "realPointerIndex":I
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 40
    .local v6, "timeStamp":J
    monitor-enter p2

    .line 41
    packed-switch v8, :pswitch_data_0

    .line 90
    :cond_0
    :goto_0
    :try_start_0
    monitor-exit p2

    .line 91
    return-void

    .line 44
    :pswitch_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getFreePointerIndex()I

    move-result v5

    .line 45
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aput v11, v0, v5

    .line 46
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v3, v0

    .line 47
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 48
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    .line 49
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v3, v0, v5

    .line 50
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v4, v0, v5

    .line 51
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 52
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 53
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v5

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 60
    :pswitch_1
    :try_start_1
    invoke-virtual {p2, v11}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v5

    .line 61
    const/4 v0, -0x1

    if-eq v5, v0, :cond_0

    .line 62
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    .line 63
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v3, v0

    .line 64
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 65
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    .line 66
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v3, v0, v5

    .line 67
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v4, v0, v5

    .line 68
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 69
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aput v1, v0, v5

    .line 70
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v5

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 75
    .local v10, "pointerCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v10, :cond_0

    .line 76
    move v12, v9

    .line 77
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 78
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v3, v0

    .line 79
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v4, v0

    .line 80
    invoke-virtual {p2, v11}, Lcom/badlogic/gdx/backends/android/AndroidInput;->lookUpPointerIndex(I)I

    move-result v5

    .line 81
    const/4 v0, -0x1

    if-ne v5, v0, :cond_1

    .line 75
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 82
    :cond_1
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;->postTouchEvent(Lcom/badlogic/gdx/backends/android/AndroidInput;IIIIJ)V

    .line 83
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v1, v1, v5

    sub-int v1, v3, v1

    aput v1, v0, v5

    .line 84
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    iget-object v1, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v1, v1, v5

    sub-int v1, v4, v1

    aput v1, v0, v5

    .line 85
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aput v3, v0, v5

    .line 86
    iget-object v0, p2, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aput v4, v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportsMultitouch(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Z
    .locals 2
    .param p1, "activity"    # Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
