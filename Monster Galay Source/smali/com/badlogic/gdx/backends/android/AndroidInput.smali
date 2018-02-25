.class public final Lcom/badlogic/gdx/backends/android/AndroidInput;
.super Ljava/lang/Object;
.source "AndroidInput.java"

# interfaces
.implements Lcom/badlogic/gdx/Input;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;,
        Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    }
.end annotation


# instance fields
.field final R:[F

.field public accelerometerAvailable:Z

.field private final accelerometerValues:[F

.field final app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

.field private azimuth:F

.field private catchBack:Z

.field private catchMenu:Z

.field private compassAvailable:Z

.field private final config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

.field private currentEventTimeStamp:J

.field deltaX:[I

.field deltaY:[I

.field private handle:Landroid/os/Handler;

.field final hasMultitouch:Z

.field private inclination:F

.field private justTouched:Z

.field keyEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field keyboardAvailable:Z

.field private keys:Lcom/badlogic/gdx/utils/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/IntMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final magneticFieldValues:[F

.field private manager:Landroid/hardware/SensorManager;

.field private final nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

.field final orientation:[F

.field private pitch:F

.field private processor:Lcom/badlogic/gdx/InputProcessor;

.field realId:[I

.field requestFocus:Z

.field private roll:F

.field private sleepTime:I

.field private text:Ljava/lang/String;

.field private textListener:Lcom/badlogic/gdx/Input$TextInputListener;

.field touchEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

.field touchX:[I

.field touchY:[I

.field touched:[Z

.field usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool",
            "<",
            "Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidApplication;Landroid/view/View;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 12
    .param p1, "activity"    # Lcom/badlogic/gdx/backends/android/AndroidApplication;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidInput$1;

    const/16 v5, 0x10

    const/16 v6, 0x3e8

    invoke-direct {v4, p0, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidInput$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 80
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidInput$2;

    const/16 v5, 0x10

    const/16 v6, 0x3e8

    invoke-direct {v4, p0, v5, v6}, Lcom/badlogic/gdx/backends/android/AndroidInput$2;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;II)V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    .line 88
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    .line 89
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    .line 90
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    .line 91
    new-array v4, v8, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    .line 92
    new-array v4, v8, [Z

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    .line 93
    const/16 v4, 0xa

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 95
    new-instance v4, Lcom/badlogic/gdx/utils/IntMap;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/IntMap;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    .line 97
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 98
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    .line 99
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->text:Ljava/lang/String;

    .line 100
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->textListener:Lcom/badlogic/gdx/Input$TextInputListener;

    .line 104
    iput v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 105
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 106
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 108
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 110
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    .line 111
    iput v9, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 112
    iput v9, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 113
    iput v9, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 114
    iput v9, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->inclination:F

    .line 115
    iput-boolean v7, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 119
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 320
    iput-boolean v10, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 474
    const/16 v4, 0x9

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    .line 475
    new-array v4, v11, [F

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    .line 122
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 123
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 124
    invoke-virtual {p2, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 125
    invoke-virtual {p2, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 126
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 127
    invoke-virtual {p2}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 128
    iput-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 131
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    const/4 v5, -0x1

    aput v5, v4, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    .line 133
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    .line 134
    iget v4, p3, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->touchSleepTime:I

    iput v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    .line 135
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 136
    .local v3, "sdkVersion":I
    const/4 v4, 0x5

    if-lt v3, v4, :cond_5

    .line 137
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;

    invoke-direct {v4}, Lcom/badlogic/gdx/backends/android/AndroidMultiTouchHandler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    .line 140
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->supportsMultitouch(Lcom/badlogic/gdx/backends/android/AndroidApplication;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    .line 142
    const-string v4, "vibrator"

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    .line 144
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->getRotation()I

    move-result v2

    .line 145
    .local v2, "rotation":I
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    iget-object v4, v4, Lcom/badlogic/gdx/backends/android/AndroidApplication;->graphics:Lcom/badlogic/gdx/backends/android/AndroidGraphics;

    invoke-virtual {v4}, Lcom/badlogic/gdx/backends/android/AndroidGraphics;->getDesktopDisplayMode()Lcom/badlogic/gdx/Graphics$DisplayMode;

    move-result-object v1

    .line 146
    .local v1, "mode":Lcom/badlogic/gdx/Graphics$DisplayMode;
    if-eqz v2, :cond_1

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_2

    :cond_1
    iget v4, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v5, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-ge v4, v5, :cond_4

    :cond_2
    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_6

    :cond_3
    iget v4, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->width:I

    iget v5, v1, Lcom/badlogic/gdx/Graphics$DisplayMode;->height:I

    if-gt v4, v5, :cond_6

    .line 148
    :cond_4
    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    .line 152
    :goto_2
    return-void

    .line 139
    .end local v1    # "mode":Lcom/badlogic/gdx/Graphics$DisplayMode;
    .end local v2    # "rotation":I
    :cond_5
    new-instance v4, Lcom/badlogic/gdx/backends/android/AndroidSingleTouchHandler;

    invoke-direct {v4}, Lcom/badlogic/gdx/backends/android/AndroidSingleTouchHandler;-><init>()V

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    goto :goto_1

    .line 150
    .restart local v1    # "mode":Lcom/badlogic/gdx/Graphics$DisplayMode;
    .restart local v2    # "rotation":I
    :cond_6
    sget-object v4, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    iput-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    goto :goto_2
.end method

.method private updateOrientation()V
    .locals 4

    .prologue
    .line 478
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->R:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 480
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    .line 481
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    .line 482
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->orientation:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    .line 484
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelVibrate()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 459
    return-void
.end method

.method public getAccelerometerX()F
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 1

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 491
    :goto_0
    return v0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 491
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->azimuth:F

    goto :goto_0
.end method

.method public getCurrentEventTime()J
    .locals 2

    .prologue
    .line 645
    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    aget v0, v0, p1

    return v0
.end method

.method public getDeltaY()I
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFreePointerIndex()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 563
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v1, v3

    .line 564
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 565
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 571
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 564
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_1
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 569
    .local v2, "tmp":[I
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    .line 571
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 1

    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 499
    :goto_0
    return v0

    .line 498
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 499
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->pitch:F

    goto :goto_0
.end method

.method public getRoll()F
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 507
    :goto_0
    return v0

    .line 506
    :cond_0
    invoke-direct {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->updateOrientation()V

    .line 507
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->roll:F

    goto :goto_0
.end method

.method public getRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    invoke-virtual {v2}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 591
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 601
    :goto_0
    :pswitch_0
    return v1

    .line 595
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 597
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 599
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/Input$TextInputListener;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$3;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method public getX()I
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getX(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchX:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getY()I
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    monitor-exit p0

    return v0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getY(I)I
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchY:[I

    aget v0, v0, p1

    monitor-exit p0

    return v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isButtonPressed(I)Z
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidInput;->isTouched()Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCursorCatched()Z
    .locals 1

    .prologue
    .line 616
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 1
    .param p1, "key"    # I

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    .line 235
    :goto_1
    return v0

    .line 233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKey(I)Z

    move-result v0

    monitor-exit p0

    goto :goto_1

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 3
    .param p1, "peripheral"    # Lcom/badlogic/gdx/Input$Peripheral;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 554
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_0

    .line 555
    :cond_2
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->HardwareKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyboardAvailable:Z

    goto :goto_0

    .line 556
    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->OnscreenKeyboard:Lcom/badlogic/gdx/Input$Peripheral;

    if-eq p1, v2, :cond_0

    .line 557
    sget-object v2, Lcom/badlogic/gdx/Input$Peripheral;->Vibrator:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 558
    :cond_4
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_5

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->hasMultitouch:Z

    goto :goto_0

    :cond_5
    move v0, v1

    .line 559
    goto :goto_0
.end method

.method public isTouched()Z
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    monitor-exit p0

    return v0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTouched(I)Z
    .locals 1
    .param p1, "pointer"    # I

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touched:[Z

    aget-boolean v0, v0, p1

    monitor-exit p0

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public justTouched()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    return v0
.end method

.method public lookUpPointerIndex(I)I
    .locals 7
    .param p1, "pointerId"    # I

    .prologue
    .line 575
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    array-length v2, v3

    .line 576
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 577
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_0

    .line 585
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 576
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 581
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 582
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->realId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 584
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v4, "AndroidInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pointer ID lookup failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 401
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    int-to-char v0, v4

    .line 347
    .local v0, "character":C
    const/16 v4, 0x43

    if-ne p2, v4, :cond_0

    const/16 v0, 0x8

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 350
    .local v1, "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 389
    :goto_0
    monitor-exit p0

    .line 392
    if-ne p2, v8, :cond_5

    .line 395
    :cond_1
    :goto_1
    return v2

    .line 352
    :pswitch_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 353
    .restart local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    const/4 v4, 0x0

    iput-char v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 354
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 355
    const/4 v4, 0x0

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 358
    if-ne p2, v7, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 359
    const/16 p2, 0xff

    .line 360
    iput p2, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 363
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    iget v5, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 389
    .end local v0    # "character":C
    .end local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 367
    .restart local v0    # "character":C
    .restart local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 368
    .restart local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    const/4 v4, 0x0

    iput-char v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 370
    const/4 v4, 0x1

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 372
    if-ne p2, v7, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 373
    const/16 p2, 0xff

    .line 374
    iput p2, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 376
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    check-cast v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 379
    .restart local v1    # "event":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    iput-char v0, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    .line 380
    const/4 v4, 0x0

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    .line 381
    const/4 v4, 0x2

    iput v4, v1, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    .line 382
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    if-ne p2, v8, :cond_4

    .line 385
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keys:Lcom/badlogic/gdx/utils/IntMap;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/IntMap;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 393
    :cond_5
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    if-eqz v4, :cond_6

    if-eq p2, v7, :cond_1

    .line 394
    :cond_6
    iget-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x52

    if-eq p2, v4, :cond_1

    :cond_7
    move v2, v3

    .line 395
    goto/16 :goto_1

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 405
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 406
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->nativeOrientation:Lcom/badlogic/gdx/Input$Orientation;

    sget-object v1, Lcom/badlogic/gdx/Input$Orientation;->Portrait:Lcom/badlogic/gdx/Input$Orientation;

    if-ne v0, v1, :cond_2

    .line 407
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 415
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->magneticFieldValues:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    :cond_1
    return-void

    .line 409
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    aput v1, v0, v3

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    neg-float v1, v1

    aput v1, v0, v2

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerValues:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    aput v1, v0, v4

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->requestFocusFromTouch()Z

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->requestFocus:Z

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchHandler:Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;

    invoke-interface {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidTouchHandler;->onTouch(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)V

    .line 333
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    if-eqz v0, :cond_1

    .line 335
    :try_start_0
    iget v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->sleepTime:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 336
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method processEvents()V
    .locals 8

    .prologue
    .line 254
    monitor-enter p0

    .line 255
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 257
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    if-eqz v4, :cond_1

    .line 258
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 260
    .local v3, "processor":Lcom/badlogic/gdx/InputProcessor;
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 261
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 262
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;

    .line 263
    .local v0, "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    iget-wide v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->timeStamp:J

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 264
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->type:I

    packed-switch v4, :pswitch_data_0

    .line 274
    :goto_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :pswitch_0
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    goto :goto_1

    .line 317
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 269
    .restart local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :pswitch_1
    :try_start_1
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyCode:I

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    goto :goto_1

    .line 272
    :pswitch_2
    iget-char v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;->keyChar:C

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto :goto_1

    .line 277
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$KeyEvent;
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 278
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    .line 279
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 280
    .local v0, "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iget-wide v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->timeStamp:J

    iput-wide v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->currentEventTimeStamp:J

    .line 281
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    packed-switch v4, :pswitch_data_1

    .line 292
    :goto_3
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 283
    :pswitch_3
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    .line 284
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    goto :goto_3

    .line 287
    :pswitch_4
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    goto :goto_3

    .line 290
    :pswitch_5
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->x:I

    iget v5, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->y:I

    iget v6, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->pointer:I

    invoke-interface {v3, v4, v5, v6}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_3

    .line 295
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "processor":Lcom/badlogic/gdx/InputProcessor;
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 296
    .restart local v2    # "len":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v2, :cond_3

    .line 297
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;

    .line 298
    .restart local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    iget v4, v0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->type:I

    if-nez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->justTouched:Z

    .line 299
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedTouchEvents:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 302
    .end local v0    # "e":Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
    :cond_3
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 303
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_4

    .line 304
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->usedKeyEvents:Lcom/badlogic/gdx/utils/Pool;

    iget-object v5, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 303
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 308
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_5

    .line 309
    const/4 v1, 0x0

    :goto_6
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 310
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaX:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 311
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->deltaY:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 315
    :cond_5
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->keyEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 316
    iget-object v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->touchEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 317
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    return-void

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method registerSensorListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 511
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useAccelerometer:Z

    if-eqz v2, :cond_3

    .line 512
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 513
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 514
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    .line 522
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->config:Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    iget-boolean v2, v2, Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;->useCompass:Z

    if-eqz v2, :cond_5

    .line 523
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->app:Lcom/badlogic/gdx/backends/android/AndroidApplication;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/backends/android/AndroidApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 524
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 525
    .local v1, "sensor":Landroid/hardware/Sensor;
    if-eqz v1, :cond_4

    .line 526
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 527
    iget-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v1, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    .line 535
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_1
    :goto_1
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v3, "AndroidInput"

    const-string v4, "sensor listener setup"

    invoke-interface {v2, v3, v4}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 517
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, p0, v0, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    .line 520
    .end local v0    # "accelerometer":Landroid/hardware/Sensor;
    :cond_3
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->accelerometerAvailable:Z

    goto :goto_0

    .line 531
    .restart local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_4
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1

    .line 534
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    :cond_5
    iput-boolean v4, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->compassAvailable:Z

    goto :goto_1
.end method

.method public setCatchBackKey(Z)V
    .locals 0
    .param p1, "catchBack"    # Z

    .prologue
    .line 438
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchBack:Z

    .line 439
    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0
    .param p1, "catchMenu"    # Z

    .prologue
    .line 443
    iput-boolean p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->catchMenu:Z

    .line 444
    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0
    .param p1, "catched"    # Z

    .prologue
    .line 612
    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 641
    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 1
    .param p1, "processor"    # Lcom/badlogic/gdx/InputProcessor;

    .prologue
    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    .line 249
    monitor-exit p0

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->handle:Landroid/os/Handler;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$4;

    invoke-direct {v1, p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidInput$4;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    return-void
.end method

.method unregisterSensorListeners()V
    .locals 3

    .prologue
    .line 539
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->manager:Landroid/hardware/SensorManager;

    .line 543
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v1, "AndroidInput"

    const-string v2, "sensor listener tear down"

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public vibrate(I)V
    .locals 3
    .param p1, "milliseconds"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 449
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInput;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 454
    return-void
.end method
