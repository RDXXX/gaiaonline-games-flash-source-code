.class public Lcom/ansca/corona/CameraServices;
.super Ljava/lang/Object;
.source "CameraServices.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static getCameraCount()I
    .locals 6

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 78
    .local v0, "cameraCount":I
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    const-class v3, Landroid/hardware/Camera;

    const-string v4, "getNumberOfCameras"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 81
    .local v1, "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 82
    .local v2, "result":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    .end local v1    # "getNumberOfCamerasMethod":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static hasCamera()Z
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasRearCamera()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasFrontFacingCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasFrontFacingCamera()Z
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "hasCamera":Z
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 58
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.camera.front"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 62
    :cond_0
    return v1
.end method

.method public static hasPermission()Z
    .locals 4

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 20
    .local v1, "hasPermission":Z
    :try_start_0
    const-string v2, "android.permission.CAMERA"

    .line 21
    .local v2, "permissionName":Ljava/lang/String;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 27
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "permissionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 23
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "permissionName":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 26
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "permissionName":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static hasRearCamera()Z
    .locals 4

    .prologue
    .line 43
    const/4 v1, 0x0

    .line 44
    .local v1, "hasCamera":Z
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.camera"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 48
    :cond_0
    return v1
.end method
