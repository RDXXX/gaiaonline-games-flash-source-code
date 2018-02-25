.class Lcom/ansca/corona/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private fCamera:Landroid/hardware/Camera;

.field private fCameraOrientationInDegrees:I

.field private fDeviceOrientationInDegrees:I

.field private fHolder:Landroid/view/SurfaceHolder;

.field private fIsCameraOrientationKnown:Z

.field private fIsUsingFrontFacingCamera:Z

.field private fOrientationListener:Landroid/view/OrientationEventListener;

.field private fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

.field private fUsingCameraId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    .line 27
    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 28
    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    .line 30
    iput v1, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    .line 31
    iput v1, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    .line 32
    iput-boolean v1, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 33
    iput v1, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 34
    iput-boolean v1, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    .line 45
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 46
    .local v0, "holder":Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 47
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 52
    new-instance v1, Lcom/ansca/corona/CameraView$1;

    invoke-direct {v1, p0, p1}, Lcom/ansca/corona/CameraView$1;-><init>(Lcom/ansca/corona/CameraView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/ansca/corona/CameraView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CameraView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    return p1
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 17
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v1, 0x3fa999999999999aL    # 0.05

    .line 266
    .local v1, "ASPECT_TOLERANCE":D
    move/from16 v0, p2

    int-to-double v13, v0

    move/from16 v0, p3

    int-to-double v15, v0

    div-double v11, v13, v15

    .line 267
    .local v11, "targetRatio":D
    if-nez p1, :cond_1

    const/4 v6, 0x0

    .line 293
    :cond_0
    return-object v6

    .line 269
    :cond_1
    const/4 v6, 0x0

    .line 270
    .local v6, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 271
    .local v4, "minDiff":D
    move/from16 v10, p3

    .line 274
    .local v10, "targetHeight":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 275
    .local v9, "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v9, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v7, v13, v15

    .line 276
    .local v7, "ratio":D
    sub-double v13, v7, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3fa999999999999aL    # 0.05

    cmpl-double v13, v13, v15

    if-gtz v13, :cond_2

    .line 277
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_2

    .line 278
    move-object v6, v9

    .line 279
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_0

    .line 284
    .end local v7    # "ratio":D
    .end local v9    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    if-nez v6, :cond_0

    .line 285
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 286
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/Camera$Size;

    .line 287
    .restart local v9    # "size":Landroid/hardware/Camera$Size;
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v4

    if-gez v13, :cond_4

    .line 288
    move-object v6, v9

    .line 289
    iget v13, v9, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v4, v13

    goto :goto_1
.end method

.method private updateCameraInformation()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 381
    iput-boolean v6, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 382
    iput-boolean v6, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    .line 383
    iput v6, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 387
    :try_start_0
    const-string v7, "android.hardware.Camera$CameraInfo"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 388
    .local v1, "cameraInfoClassType":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 389
    .local v0, "cameraInfo":Ljava/lang/Object;
    const-class v7, Landroid/hardware/Camera;

    const-string v8, "getCameraInfo"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 391
    .local v3, "getCameraInfoMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v7, "facing"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 393
    .local v2, "facingField":Ljava/lang/reflect/Field;
    const-string v7, "orientation"

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 394
    .local v4, "orientationField":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v5, :cond_0

    :goto_0
    iput-boolean v5, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    .line 395
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    iput v5, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 396
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    .end local v0    # "cameraInfo":Ljava/lang/Object;
    .end local v1    # "cameraInfoClassType":Ljava/lang/Class;
    .end local v2    # "facingField":Ljava/lang/reflect/Field;
    .end local v3    # "getCameraInfoMethod":Ljava/lang/reflect/Method;
    .end local v4    # "orientationField":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .restart local v0    # "cameraInfo":Ljava/lang/Object;
    .restart local v1    # "cameraInfoClassType":Ljava/lang/Class;
    .restart local v2    # "facingField":Ljava/lang/reflect/Field;
    .restart local v3    # "getCameraInfoMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "orientationField":Ljava/lang/reflect/Field;
    :cond_0
    move v5, v6

    .line 394
    goto :goto_0

    .line 398
    .end local v0    # "cameraInfo":Ljava/lang/Object;
    .end local v1    # "cameraInfoClassType":Ljava/lang/Class;
    .end local v2    # "facingField":Ljava/lang/reflect/Field;
    .end local v3    # "getCameraInfoMethod":Ljava/lang/reflect/Method;
    .end local v4    # "orientationField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private updateCameraOrientation()V
    .locals 11

    .prologue
    const/16 v9, 0x5a

    const/4 v8, 0x0

    .line 305
    iget-object v7, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-nez v7, :cond_0

    .line 373
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v10, "window"

    invoke-virtual {v7, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 311
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 322
    const/4 v2, 0x0

    .line 325
    .local v2, "displayAngle":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v10

    if-ge v7, v10, :cond_6

    if-eqz v2, :cond_1

    const/16 v7, 0xb4

    if-ne v2, v7, :cond_6

    :cond_1
    const/4 v4, 0x1

    .line 329
    .local v4, "isNaturalOrientationPortrait":Z
    :goto_2
    iget-boolean v7, p0, Lcom/ansca/corona/CameraView;->fIsCameraOrientationKnown:Z

    if-eqz v7, :cond_7

    .line 331
    iget v5, p0, Lcom/ansca/corona/CameraView;->fCameraOrientationInDegrees:I

    .line 342
    .local v5, "mountedCameraOrientation":I
    :goto_3
    iget-boolean v7, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    if-eqz v7, :cond_9

    .line 344
    add-int v7, v5, v2

    rem-int/lit16 v0, v7, 0x168

    .line 345
    .local v0, "cameraAngle":I
    rsub-int v7, v0, 0x168

    rem-int/lit16 v0, v7, 0x168

    .line 351
    :goto_4
    iget-object v7, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v0}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 355
    iget-object v7, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 356
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    iget v7, p0, Lcom/ansca/corona/CameraView;->fDeviceOrientationInDegrees:I

    sub-int v3, v5, v7

    .line 357
    .local v3, "imageRotation":I
    if-gez v3, :cond_2

    .line 358
    add-int/lit16 v3, v3, 0x168

    .line 360
    :cond_2
    iget-boolean v7, p0, Lcom/ansca/corona/CameraView;->fIsUsingFrontFacingCamera:Z

    if-eqz v7, :cond_5

    .line 363
    if-eqz v4, :cond_3

    rem-int/lit16 v7, v3, 0xb4

    if-eqz v7, :cond_4

    :cond_3
    if-nez v4, :cond_5

    rem-int/lit16 v7, v3, 0xb4

    if-ne v7, v9, :cond_5

    .line 365
    :cond_4
    add-int/lit16 v7, v3, 0xb4

    rem-int/lit16 v3, v7, 0x168

    .line 368
    :cond_5
    invoke-virtual {v6, v3}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 369
    iget-object v7, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 313
    .end local v0    # "cameraAngle":I
    .end local v2    # "displayAngle":I
    .end local v3    # "imageRotation":I
    .end local v4    # "isNaturalOrientationPortrait":Z
    .end local v5    # "mountedCameraOrientation":I
    .end local v6    # "parameters":Landroid/hardware/Camera$Parameters;
    :pswitch_0
    const/16 v2, 0xb4

    .line 314
    .restart local v2    # "displayAngle":I
    goto :goto_1

    .line 316
    .end local v2    # "displayAngle":I
    :pswitch_1
    const/16 v2, 0x10e

    .line 317
    .restart local v2    # "displayAngle":I
    goto :goto_1

    .line 319
    .end local v2    # "displayAngle":I
    :pswitch_2
    const/16 v2, 0x5a

    .line 320
    .restart local v2    # "displayAngle":I
    goto :goto_1

    :cond_6
    move v4, v8

    .line 325
    goto :goto_2

    .line 337
    .restart local v4    # "isNaturalOrientationPortrait":Z
    :cond_7
    if-eqz v4, :cond_8

    move v5, v9

    .restart local v5    # "mountedCameraOrientation":I
    :goto_5
    goto :goto_3

    .end local v5    # "mountedCameraOrientation":I
    :cond_8
    move v5, v8

    goto :goto_5

    .line 349
    .restart local v5    # "mountedCameraOrientation":I
    :cond_9
    add-int/lit16 v7, v5, 0x168

    sub-int/2addr v7, v2

    rem-int/lit16 v0, v7, 0x168

    .restart local v0    # "cameraAngle":I
    goto :goto_4

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected disableCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 191
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 195
    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 198
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected enableCamera()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v1, 0x0

    .line 149
    .local v1, "openMethod":Ljava/lang/reflect/Method;
    :try_start_0
    const-class v2, Landroid/hardware/Camera;

    const-string v3, "open"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 152
    :goto_1
    if-eqz v1, :cond_2

    .line 153
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera;

    check-cast v2, Landroid/hardware/Camera;

    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 158
    :goto_2
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraInformation()V

    .line 159
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 160
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 161
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 174
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    .line 156
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 166
    iput-object v7, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    .line 168
    :cond_3
    const-string v2, "Corona"

    const-string v3, "Failed to enable camera."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public getSelectedCameraIndex()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    return v0
.end method

.method public isCameraDisabled()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraEnabled()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public selectCameraByIndex(I)V
    .locals 1
    .param p1, "cameraIndex"    # I

    .prologue
    .line 98
    iget v0, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    if-ne p1, v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput p1, p0, Lcom/ansca/corona/CameraView;->fUsingCameraId:I

    .line 106
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->disableCamera()V

    .line 108
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->enableCamera()V

    goto :goto_0
.end method

.method public setTakePictureListener(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    .line 88
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 243
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 244
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 246
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/ansca/corona/CameraView;->fHolder:Landroid/view/SurfaceHolder;

    .line 230
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->enableCamera()V

    .line 231
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->disableCamera()V

    .line 255
    return-void
.end method

.method public takePicture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/ansca/corona/CameraView;->isCameraDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 216
    invoke-direct {p0}, Lcom/ansca/corona/CameraView;->updateCameraOrientation()V

    .line 217
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 220
    iget-object v0, p0, Lcom/ansca/corona/CameraView;->fCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/ansca/corona/CameraView;->fTakePictureListener:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    goto :goto_0
.end method
