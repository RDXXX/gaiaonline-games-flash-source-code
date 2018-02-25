.class public Lcom/ansca/corona/CoronaActivity;
.super Landroid/app/Activity;
.source "CoronaActivity.java"


# static fields
.field private static final CORONA_PREFERENCES_LAST_INSTALL_TIME_KEY:Ljava/lang/String; = "lastInstallTime"

.field private static final CORONA_PREFERENCES_NAME:Ljava/lang/String; = "Corona"

.field static final CORONA_STATUSBAR_MODE_DARK:I = 0x3

.field static final CORONA_STATUSBAR_MODE_DEFAULT:I = 0x1

.field static final CORONA_STATUSBAR_MODE_HIDDEN:I = 0x0

.field static final CORONA_STATUSBAR_MODE_TRANSLUCENT:I = 0x2

.field static final FACEBOOK_LOGIN_REQUEST:I = 0x5

.field static final SELECT_IMAGE_REQUEST:I = 0x2

.field static final SEND_MAIL_REQUEST:I = 0x1

.field static final SEND_SMS_REQUEST:I = 0x6

.field static final TAKE_PICTURE_WITH_CORONA_REQUEST:I = 0x4

.field static final TAKE_PICTURE_WITH_EXTERNAL_APP_REQUEST:I = 0x3

.field private static sId:I

.field private static sTouchId:I

.field private static sTouches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ansca/corona/events/TouchData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fSplashScreenView:Landroid/widget/ImageView;

.field private myCameraShotDestinationFile:Ljava/io/File;

.field private myCameraShotSourceUri:Landroid/net/Uri;

.field private myFirstTapX:F

.field private myFirstTapY:F

.field private myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

.field private myHandler:Landroid/os/Handler;

.field private myImmediateTapCount:I

.field private myInitialIntent:Landroid/content/Intent;

.field private myIsActivityResumed:Z

.field private myLastTapTime:J

.field private myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

.field private mySelectImageDestinationFilePath:Ljava/lang/String;

.field private myStatusBarMode:I

.field private myStore:Lcom/ansca/corona/purchasing/StoreProxy;

.field private mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

.field private myTapHasStarted:Z

.field private myTapStartX:F

.field private myTapStartY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1475
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    .line 1476
    const/4 v0, 0x1

    sput v0, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    .line 1478
    const/4 v0, -0x1

    sput v0, Lcom/ansca/corona/CoronaActivity;->sId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    .line 41
    iput-boolean v3, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 43
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    .line 44
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    .line 47
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myCameraShotSourceUri:Landroid/net/Uri;

    .line 49
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myCameraShotDestinationFile:Ljava/io/File;

    .line 50
    iput-boolean v3, p0, Lcom/ansca/corona/CoronaActivity;->myTapHasStarted:Z

    .line 51
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myTapStartX:F

    .line 52
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myTapStartY:F

    .line 53
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myFirstTapX:F

    .line 54
    iput v0, p0, Lcom/ansca/corona/CoronaActivity;->myFirstTapY:F

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/CoronaActivity;->myLastTapTime:J

    .line 58
    iput v3, p0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    .line 61
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    .line 64
    iput-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ansca/corona/CoronaActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/CoronaActivity;
    .param p1, "x1"    # Landroid/widget/ImageView;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    return-object p1
.end method

.method private areCoordinatesWithinTapBounds(FFFF)Z
    .locals 4
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/high16 v3, 0x42200000    # 40.0f

    .line 1748
    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1749
    .local v0, "deltaX":F
    sub-float v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1750
    .local v1, "deltaY":F
    cmpg-float v2, v0, v3

    if-gtz v2, :cond_0

    cmpg-float v2, v1, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private deleteDirectoryTree(Ljava/io/File;)V
    .locals 5
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 500
    .local v1, "file":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/ansca/corona/CoronaActivity;->deleteDirectoryTree(Ljava/io/File;)V

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 503
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 504
    return-void
.end method

.method private initializeOrientation()V
    .locals 11

    .prologue
    const/16 v10, 0x9

    .line 177
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRequestedOrientation()I

    move-result v2

    .line 182
    .local v2, "orientationSetting":I
    const/4 v5, 0x0

    .line 183
    .local v5, "supportsPortrait":Z
    const/4 v6, 0x0

    .line 184
    .local v6, "supportsPortraitUpsideDown":Z
    const/4 v4, 0x0

    .line 185
    .local v4, "supportsLandscapeRight":Z
    const/4 v3, 0x0

    .line 188
    .local v3, "supportsLandscapeLeft":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 190
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 191
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "supportsOrientationPortrait"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 192
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "supportsOrientationPortraitUpsideDown"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 193
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "supportsOrientationLandscapeRight"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 194
    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "supportsOrientationLandscapeLeft"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 207
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    .line 208
    :cond_1
    if-eqz v5, :cond_3

    if-nez v6, :cond_3

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    .line 209
    const/4 v2, 0x1

    .line 259
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/ansca/corona/CoronaActivity;->setRequestedOrientation(I)V

    .line 260
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 212
    const/4 v2, 0x0

    goto :goto_1

    .line 214
    :cond_4
    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    if-nez v4, :cond_6

    if-nez v3, :cond_6

    .line 215
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_5

    .line 216
    const/4 v2, 0x7

    goto :goto_1

    .line 219
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 222
    :cond_6
    if-nez v5, :cond_8

    if-nez v6, :cond_8

    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 223
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_7

    .line 224
    const/4 v2, 0x6

    goto :goto_1

    .line 227
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 230
    :cond_8
    if-nez v5, :cond_a

    if-eqz v6, :cond_a

    if-nez v4, :cond_a

    if-nez v3, :cond_a

    .line 231
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_9

    .line 232
    const/16 v2, 0x9

    goto :goto_1

    .line 235
    :cond_9
    const/4 v2, 0x1

    goto :goto_1

    .line 238
    :cond_a
    if-nez v5, :cond_c

    if-nez v6, :cond_c

    if-nez v4, :cond_c

    if-eqz v3, :cond_c

    .line 239
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_b

    .line 240
    const/16 v2, 0x8

    goto :goto_1

    .line 243
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 246
    :cond_c
    if-nez v5, :cond_d

    if-eqz v6, :cond_2

    :cond_d
    if-nez v4, :cond_e

    if-eqz v3, :cond_2

    .line 247
    :cond_e
    if-eqz v6, :cond_f

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v10, :cond_f

    .line 248
    const/16 v2, 0xa

    goto :goto_1

    .line 251
    :cond_f
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private requestResumeCoronaRuntime()V
    .locals 2

    .prologue
    .line 831
    iget-boolean v1, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->isScreenUnlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 833
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 834
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->start()V

    .line 836
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->onResumeCoronaRuntime()V

    .line 838
    .end local v0    # "controller":Lcom/ansca/corona/Controller;
    :cond_1
    return-void
.end method

.method private requestSuspendCoronaRuntime()V
    .locals 2

    .prologue
    .line 842
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 843
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->stop()V

    .line 846
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->onSuspendCoronaRuntime()V

    .line 847
    return-void
.end method

.method private updateViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 790
    iget-boolean v2, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    if-nez v2, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    const/4 v0, 0x0

    .line 796
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v1

    .line 797
    .local v1, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v1, :cond_2

    .line 798
    invoke-virtual {v1}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 800
    :cond_2
    if-eqz v0, :cond_0

    .line 806
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v2}, Lcom/ansca/corona/SystemMonitor;->isScreenOff()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 807
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 808
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 821
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v2}, Lcom/ansca/corona/SystemMonitor;->isScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 822
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 812
    :cond_4
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    .line 813
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 814
    iget-object v2, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_1

    .line 825
    :cond_5
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method clearNeedsSwap()V
    .locals 1

    .prologue
    .line 1761
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->clearNeedsSwap()V

    .line 1763
    :cond_0
    return-void
.end method

.method public convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 466
    invoke-static {p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeightInPixels()I
    .locals 1

    .prologue
    .line 462
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getContentHeightInPixels()I

    move-result v0

    return v0
.end method

.method public getContentWidthInPixels()I
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getContentWidthInPixels()I

    move-result v0

    return v0
.end method

.method getGLView()Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHorizontalMarginInPixels()I
    .locals 1

    .prologue
    .line 437
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getHorizontalMarginInPixels()I

    move-result v0

    return v0
.end method

.method public getInitialIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getOverlayView()Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 401
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    .line 402
    .local v0, "viewManager":Lcom/ansca/corona/ViewManager;
    if-nez v0, :cond_0

    .line 403
    const/4 v1, 0x0

    .line 405
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->getOverlayView()Landroid/widget/FrameLayout;

    move-result-object v1

    goto :goto_0
.end method

.method public getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    return-object v0
.end method

.method getStatusBarHeight()I
    .locals 4

    .prologue
    .line 539
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "lowerCaseManufacturerName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 542
    .local v0, "height":I
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "Kindle Fire"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    const/16 v0, 0x28

    .line 587
    :goto_0
    return v0

    .line 546
    :cond_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "KFOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    const/16 v0, 0x1b

    goto :goto_0

    .line 550
    :cond_1
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "KFTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 552
    const/16 v0, 0x23

    goto :goto_0

    .line 554
    :cond_2
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "KFJWI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "KFJWA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    :cond_3
    const/16 v0, 0x28

    goto :goto_0

    .line 558
    :cond_4
    const-string v2, "barnes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "noble"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 560
    const/4 v0, 0x0

    goto :goto_0

    .line 562
    :cond_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_6

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-gt v2, v3, :cond_6

    .line 564
    const/4 v0, 0x0

    goto :goto_0

    .line 568
    :cond_6
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v2, :sswitch_data_0

    .line 583
    const/16 v0, 0x19

    goto :goto_0

    .line 570
    :sswitch_0
    const/16 v0, 0x32

    .line 571
    goto :goto_0

    .line 573
    :sswitch_1
    const/16 v0, 0x21

    .line 574
    goto :goto_0

    .line 576
    :sswitch_2
    const/16 v0, 0x26

    .line 577
    goto :goto_0

    .line 579
    :sswitch_3
    const/16 v0, 0x13

    .line 580
    goto :goto_0

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_3
        0xd5 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_0
    .end sparse-switch
.end method

.method getStatusBarMode()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:I

    return v0
.end method

.method getStore()Lcom/ansca/corona/purchasing/StoreProxy;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    return-object v0
.end method

.method public getVerticalMarginInPixels()I
    .locals 1

    .prologue
    .line 446
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getVerticalMarginInPixels()I

    move-result v0

    return v0
.end method

.method public hasFixedOrientation()Z
    .locals 1

    .prologue
    .line 339
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->supportsOrientationChanges()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hideSplashScreen()V
    .locals 3

    .prologue
    .line 1018
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 1058
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1028
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1029
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1030
    new-instance v1, Lcom/ansca/corona/CoronaActivity$2;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaActivity$2;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1057
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method isSplashScreenShown()Z
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1241
    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1243
    packed-switch p1, :pswitch_data_0

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1247
    :pswitch_0
    const/4 v13, 0x0

    .line 1248
    .local v13, "uri":Landroid/net/Uri;
    if-eqz p3, :cond_1

    .line 1249
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 1251
    :cond_1
    move-object v11, v13

    .line 1254
    .local v11, "finalUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 1255
    .local v6, "destinationFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 1256
    new-instance v6, Ljava/io/File;

    .end local v6    # "destinationFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    invoke-direct {v6, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1258
    .restart local v6    # "destinationFile":Ljava/io/File;
    :cond_2
    move-object v10, v6

    .line 1259
    .local v10, "finalDestinationFile":Ljava/io/File;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    .line 1262
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_3

    if-nez v11, :cond_4

    .line 1264
    :cond_3
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1265
    .local v7, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_0

    .line 1266
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1272
    .end local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v14, Lcom/ansca/corona/CoronaActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v11, v10}, Lcom/ansca/corona/CoronaActivity$3;-><init>(Lcom/ansca/corona/CoronaActivity;Landroid/net/Uri;Ljava/io/File;)V

    invoke-direct {v3, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1359
    .local v3, "asyncOperation":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1365
    .end local v3    # "asyncOperation":Ljava/lang/Thread;
    .end local v6    # "destinationFile":Ljava/io/File;
    .end local v10    # "finalDestinationFile":Ljava/io/File;
    .end local v11    # "finalUri":Landroid/net/Uri;
    .end local v13    # "uri":Landroid/net/Uri;
    :pswitch_1
    const-string v12, ""

    .line 1366
    .local v12, "selectedImageFileName":Ljava/lang/String;
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotSourceUri:Landroid/net/Uri;

    if-eqz v14, :cond_6

    .line 1367
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotSourceUri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1368
    .local v4, "cameraShotSourceFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1369
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotDestinationFile:Ljava/io/File;

    if-eqz v14, :cond_5

    .line 1371
    move-object v9, v4

    .line 1372
    .local v9, "finalCameraShotSourceFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotDestinationFile:Ljava/io/File;

    .line 1373
    .local v8, "finalCameraShotDestinationFile":Ljava/io/File;
    new-instance v3, Ljava/lang/Thread;

    new-instance v14, Lcom/ansca/corona/CoronaActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v8}, Lcom/ansca/corona/CoronaActivity$4;-><init>(Lcom/ansca/corona/CoronaActivity;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {v3, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1390
    .restart local v3    # "asyncOperation":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1395
    .end local v3    # "asyncOperation":Ljava/lang/Thread;
    .end local v8    # "finalCameraShotDestinationFile":Ljava/io/File;
    .end local v9    # "finalCameraShotSourceFile":Ljava/io/File;
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 1402
    .end local v4    # "cameraShotSourceFile":Ljava/io/File;
    :cond_6
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1403
    .restart local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_0

    .line 1404
    invoke-virtual {v7, v12}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1411
    .end local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v12    # "selectedImageFileName":Ljava/lang/String;
    :pswitch_2
    const-string v12, ""

    .line 1412
    .restart local v12    # "selectedImageFileName":Ljava/lang/String;
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_7

    if-eqz p3, :cond_7

    .line 1413
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 1414
    .restart local v13    # "uri":Landroid/net/Uri;
    if-eqz v13, :cond_7

    .line 1415
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1421
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_7
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1422
    .restart local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_0

    .line 1423
    invoke-virtual {v7, v12}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1430
    .end local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v12    # "selectedImageFileName":Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v5

    .line 1431
    .local v5, "controller":Lcom/ansca/corona/Controller;
    if-eqz v5, :cond_0

    .line 1432
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v5, v0, v1, v2}, Lcom/ansca/corona/Controller;->facebookApplyActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 1441
    .end local v5    # "controller":Lcom/ansca/corona/Controller;
    :pswitch_4
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1442
    .restart local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_0

    .line 1443
    new-instance v14, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v15, Lcom/ansca/corona/CoronaActivity$5;

    invoke-direct/range {v15 .. v16}, Lcom/ansca/corona/CoronaActivity$5;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-direct {v14, v15}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v14}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto/16 :goto_0

    .line 1459
    .end local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :pswitch_5
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v7

    .line 1460
    .restart local v7    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v7, :cond_0

    .line 1461
    new-instance v14, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v15, Lcom/ansca/corona/CoronaActivity$6;

    invoke-direct/range {v15 .. v16}, Lcom/ansca/corona/CoronaActivity$6;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-direct {v14, v15}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7, v14}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto/16 :goto_0

    .line 1243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 779
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 782
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->isSplashScreenShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->showSplashScreen()V

    .line 785
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v9, 0x200

    const/4 v8, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myInitialIntent:Landroid/content/Intent;

    .line 83
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/ansca/corona/CoronaActivity;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/view/Window;->setFlags(II)V

    .line 85
    invoke-virtual {p0, v8}, Lcom/ansca/corona/CoronaActivity;->setStatusBarMode(I)V

    .line 88
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x12

    invoke-virtual {v7, v8}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 94
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->initializeOrientation()V

    .line 99
    :try_start_0
    const-string v7, "Corona"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/ansca/corona/CoronaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 100
    .local v5, "preferencesReader":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 103
    .local v1, "currentTimestamp":J
    const-string v7, "lastInstallTime"

    const-wide/16 v8, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 104
    .local v3, "lastTimestamp":J
    cmp-long v7, v1, v3

    if-eqz v7, :cond_0

    .line 106
    const-string v7, "coronaResources"

    invoke-virtual {p0, v7}, Lcom/ansca/corona/CoronaActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ansca/corona/CoronaActivity;->deleteDirectoryTree(Ljava/io/File;)V

    .line 107
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalResourceCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ansca/corona/CoronaActivity;->deleteDirectoryTree(Ljava/io/File;)V

    .line 110
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 111
    .local v6, "preferencesWriter":Landroid/content/SharedPreferences$Editor;
    const-string v7, "lastInstallTime"

    invoke-interface {v6, v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 119
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "currentTimestamp":J
    .end local v3    # "lastTimestamp":J
    .end local v5    # "preferencesReader":Landroid/content/SharedPreferences;
    .end local v6    # "preferencesWriter":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ansca/corona/CoronaActivity;->deleteDirectoryTree(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 123
    :goto_1
    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V

    .line 127
    invoke-static {p0}, Lcom/ansca/corona/Controller;->create(Lcom/ansca/corona/CoronaActivity;)V

    .line 130
    new-instance v7, Lcom/ansca/corona/SystemMonitor;

    invoke-direct {v7, p0}, Lcom/ansca/corona/SystemMonitor;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    .line 131
    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v7}, Lcom/ansca/corona/SystemMonitor;->start()V

    .line 134
    invoke-static {p0}, Lcom/ansca/corona/FileServices;->loadExpansionFiles(Landroid/content/Context;)V

    .line 137
    new-instance v7, Lcom/ansca/corona/purchasing/StoreProxy;

    invoke-direct {v7}, Lcom/ansca/corona/purchasing/StoreProxy;-><init>()V

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    .line 138
    iget-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    invoke-virtual {v7, p0}, Lcom/ansca/corona/purchasing/StoreProxy;->setActivity(Landroid/app/Activity;)V

    .line 141
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myHandler:Landroid/os/Handler;

    .line 145
    new-instance v7, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    invoke-static {}, Lcom/ansca/corona/Controller;->getRuntime()Lcom/ansca/corona/CoronaRuntime;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;-><init>(Lcom/ansca/corona/CoronaRuntime;)V

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myRuntimeTaskDispatcher:Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    .line 149
    new-instance v7, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-direct {v7, p0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    iput-object v7, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .line 150
    invoke-static {p0}, Lcom/ansca/corona/ViewManager;->initialize(Lcom/ansca/corona/CoronaActivity;)V

    .line 151
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v7

    iget-object v8, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v7, v8}, Lcom/ansca/corona/ViewManager;->setGLView(Landroid/view/View;)V

    .line 152
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ansca/corona/CoronaActivity;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->showSplashScreen()V

    .line 161
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->init()V

    .line 165
    new-instance v7, Lcom/ansca/corona/notifications/NotificationServices;

    invoke-direct {v7, p0}, Lcom/ansca/corona/notifications/NotificationServices;-><init>(Landroid/content/Context;)V

    .line 166
    return-void

    .line 120
    :catch_0
    move-exception v7

    goto :goto_1

    .line 116
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 608
    invoke-static {v1}, Lcom/ansca/corona/CoronaEnvironment;->setCoronaActivity(Lcom/ansca/corona/CoronaActivity;)V

    .line 609
    invoke-static {p0}, Lcom/ansca/corona/CameraActivity;->clearCachedPhotos(Landroid/content/Context;)V

    .line 610
    iput-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .line 611
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->myStore:Lcom/ansca/corona/purchasing/StoreProxy;

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreProxy;->disable()V

    .line 612
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->stop()V

    .line 613
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v0

    .line 614
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Lcom/ansca/corona/Controller;->destroy()V

    .line 617
    :cond_0
    invoke-static {}, Lcom/ansca/corona/ViewManager;->destroy()V

    .line 618
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 619
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x1

    .line 1774
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_0

    move v5, v6

    .line 1827
    :goto_0
    return v5

    .line 1779
    :cond_0
    instance-of v5, p2, Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;

    if-nez v5, :cond_1

    .line 1781
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-static {v5}, Lcom/ansca/corona/events/KeyboardEvent;->getStringForKeyCode(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1784
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 1785
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_1

    .line 1786
    invoke-virtual {v1, p2}, Lcom/ansca/corona/events/EventManager;->keyboardEvent(Landroid/view/KeyEvent;)V

    move v5, v6

    .line 1787
    goto :goto_0

    .line 1795
    .end local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_1
    if-eq p1, v7, :cond_2

    const/16 v5, 0x19

    if-ne p1, v5, :cond_4

    .line 1799
    :cond_2
    if-ne p1, v7, :cond_3

    .line 1800
    const/4 v0, 0x1

    .line 1805
    .local v0, "audioDirection":I
    :goto_1
    const/16 v2, 0x15

    .line 1808
    .local v2, "flags":I
    :try_start_0
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getVolumeControlStream()I

    move-result v7

    invoke-virtual {v5, v0, v7, v2}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    .line 1810
    goto :goto_0

    .line 1803
    .end local v0    # "audioDirection":I
    .end local v2    # "flags":I
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "audioDirection":I
    goto :goto_1

    .line 1812
    .restart local v2    # "flags":I
    :catch_0
    move-exception v5

    .line 1816
    .end local v0    # "audioDirection":I
    .end local v2    # "flags":I
    :cond_4
    const/4 v5, 0x4

    if-ne p1, v5, :cond_5

    .line 1817
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v4

    .line 1818
    .local v4, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v4, :cond_5

    .line 1819
    invoke-virtual {v4}, Lcom/ansca/corona/ViewManager;->goBack()Z

    move-result v3

    .line 1820
    .local v3, "hasChildViewOverridenBackKey":Z
    if-eqz v3, :cond_5

    move v5, v6

    .line 1821
    goto :goto_0

    .line 1827
    .end local v3    # "hasChildViewOverridenBackKey":Z
    .end local v4    # "viewManager":Lcom/ansca/corona/ViewManager;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1839
    instance-of v1, p2, Lcom/ansca/corona/events/KeyboardEvent$NonOverriddenKeyEvent;

    if-nez v1, :cond_0

    .line 1841
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lcom/ansca/corona/events/KeyboardEvent;->getStringForKeyCode(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1844
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 1845
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 1846
    invoke-virtual {v0, p2}, Lcom/ansca/corona/events/EventManager;->keyboardEvent(Landroid/view/KeyEvent;)V

    .line 1847
    const/4 v1, 0x1

    .line 1853
    .end local v0    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 698
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 701
    if-nez p1, :cond_1

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 708
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 716
    :cond_3
    const-string v2, "notification"

    .line 717
    .local v2, "notificationEventName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 722
    invoke-virtual {p0, p1}, Lcom/ansca/corona/CoronaActivity;->setIntent(Landroid/content/Intent;)V

    .line 725
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 726
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_0

    .line 727
    new-instance v3, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v4, Lcom/ansca/corona/CoronaActivity$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/CoronaActivity$1;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    invoke-direct {v3, v4}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 661
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 665
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 666
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestSuspendCoronaRuntime()V

    .line 669
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    .line 670
    .local v0, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->suspend()V

    .line 673
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 637
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 640
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ansca/corona/CoronaActivity;->myIsActivityResumed:Z

    .line 641
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestResumeCoronaRuntime()V

    .line 644
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->updateViews()V

    .line 645
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v0

    .line 646
    .local v0, "viewManager":Lcom/ansca/corona/ViewManager;
    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {v0}, Lcom/ansca/corona/ViewManager;->resume()V

    .line 649
    :cond_0
    return-void
.end method

.method onScreenLockStateChanged(Z)V
    .locals 0
    .param p1, "isScreenLocked"    # Z

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->updateViews()V

    .line 769
    invoke-direct {p0}, Lcom/ansca/corona/CoronaActivity;->requestResumeCoronaRuntime()V

    .line 770
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 626
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 629
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->onResume()V

    .line 630
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 682
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 685
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->onPause()V

    .line 686
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1487
    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v23

    .line 1488
    .local v23, "version":Lcom/ansca/corona/version/IAndroidVersionSpecific;
    if-nez v23, :cond_0

    .line 1489
    const/4 v4, 0x0

    .line 1735
    :goto_0
    return v4

    .line 1493
    :cond_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v11

    .line 1494
    .local v11, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-nez v11, :cond_1

    .line 1495
    const/4 v4, 0x0

    goto :goto_0

    .line 1499
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->isMultitouchEnabled()Z

    move-result v14

    .line 1500
    .local v14, "isMultitouch":Z
    if-eqz v14, :cond_5

    invoke-virtual {v11}, Lcom/ansca/corona/events/EventManager;->newMultitouchEvent()Lcom/ansca/corona/events/MultitouchEvent;

    move-result-object v15

    .line 1501
    .local v15, "multitouch":Lcom/ansca/corona/events/MultitouchEvent;
    :goto_1
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetAction(Landroid/view/MotionEvent;)I

    move-result v10

    .line 1507
    .local v10, "action":I
    packed-switch v10, :pswitch_data_0

    .line 1603
    if-eqz v14, :cond_12

    .line 1604
    invoke-interface/range {v23 .. v23}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventACTION_POINTER_DOWN()I

    move-result v4

    if-ne v4, v10, :cond_10

    .line 1606
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetActionIndex(Landroid/view/MotionEvent;)I

    move-result v22

    .line 1607
    .local v22, "pointerIndex":I
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 1609
    .local v21, "pointerId":I
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1610
    .local v5, "x":F
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1611
    .local v6, "y":F
    new-instance v3, Lcom/ansca/corona/events/TouchData;

    sget v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/ansca/corona/events/TouchData;-><init>(IFFIJ)V

    .line 1616
    .local v3, "t":Lcom/ansca/corona/events/TouchData;
    sget v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    .line 1618
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    invoke-virtual {v15, v3}, Lcom/ansca/corona/events/MultitouchEvent;->add(Lcom/ansca/corona/events/TouchData;)V

    .line 1677
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v21    # "pointerId":I
    .end local v22    # "pointerIndex":I
    :cond_2
    :goto_2
    if-eqz v14, :cond_3

    .line 1678
    if-eqz v15, :cond_3

    .line 1680
    invoke-virtual {v11, v15}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 1686
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerCount(Landroid/view/MotionEvent;)I

    move-result v4

    const/4 v7, 0x1

    if-ne v4, v7, :cond_16

    .line 1688
    if-nez v10, :cond_13

    .line 1692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartX:F

    .line 1693
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartY:F

    .line 1694
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapHasStarted:Z

    .line 1697
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartY:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ansca/corona/CoronaActivity;->myFirstTapX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ansca/corona/CoronaActivity;->myFirstTapY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8, v9}, Lcom/ansca/corona/CoronaActivity;->areCoordinatesWithinTapBounds(FFFF)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1699
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    .line 1700
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myFirstTapX:F

    .line 1701
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartY:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myFirstTapY:F

    .line 1735
    :cond_4
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1500
    .end local v10    # "action":I
    .end local v15    # "multitouch":Lcom/ansca/corona/events/MultitouchEvent;
    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1513
    .restart local v10    # "action":I
    .restart local v15    # "multitouch":Lcom/ansca/corona/events/MultitouchEvent;
    :pswitch_0
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1514
    new-instance v3, Lcom/ansca/corona/events/TouchData;

    sget v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/ansca/corona/events/TouchData;-><init>(IFFIJ)V

    .line 1517
    .restart local v3    # "t":Lcom/ansca/corona/events/TouchData;
    if-eqz v14, :cond_6

    .line 1518
    invoke-virtual {v15, v3}, Lcom/ansca/corona/events/MultitouchEvent;->add(Lcom/ansca/corona/events/TouchData;)V

    .line 1522
    :goto_4
    sget v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    sput v4, Lcom/ansca/corona/CoronaActivity;->sId:I

    .line 1526
    sget v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/ansca/corona/CoronaActivity;->sTouchId:I

    .line 1527
    const/4 v4, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 1529
    .restart local v21    # "pointerId":I
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1520
    .end local v21    # "pointerId":I
    :cond_6
    invoke-virtual {v11, v3}, Lcom/ansca/corona/events/EventManager;->touchEvent(Lcom/ansca/corona/events/TouchData;)V

    goto :goto_4

    .line 1536
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    :pswitch_1
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerCount(Landroid/view/MotionEvent;)I

    move-result v17

    .line 1537
    .local v17, "numPointers":I
    const/4 v4, 0x2

    if-ne v4, v10, :cond_9

    const/4 v13, 0x1

    .line 1538
    .local v13, "isMoved":Z
    :goto_5
    const/16 v20, 0x1

    .line 1539
    .local v20, "phase":I
    const/4 v4, 0x1

    if-ne v4, v10, :cond_a

    .line 1540
    const/16 v20, 0x3

    .line 1545
    :cond_7
    :goto_6
    const/16 v16, 0x0

    .line 1546
    .local v16, "numAdded":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 1548
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 1550
    .restart local v21    # "pointerId":I
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/events/TouchData;

    .line 1552
    .restart local v3    # "t":Lcom/ansca/corona/events/TouchData;
    if-nez v3, :cond_b

    .line 1554
    if-eqz v14, :cond_8

    .line 1556
    const-string v4, "Corona"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: unknown touch detected while multitouch was enabled. numpointers("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") pointerId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") i( "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_8
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 1537
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .end local v12    # "i":I
    .end local v13    # "isMoved":Z
    .end local v16    # "numAdded":I
    .end local v20    # "phase":I
    .end local v21    # "pointerId":I
    :cond_9
    const/4 v13, 0x0

    goto :goto_5

    .line 1541
    .restart local v13    # "isMoved":Z
    .restart local v20    # "phase":I
    :cond_a
    const/4 v4, 0x3

    if-ne v4, v10, :cond_7

    .line 1542
    const/16 v20, 0x4

    goto :goto_6

    .line 1563
    .restart local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .restart local v12    # "i":I
    .restart local v16    # "numAdded":I
    .restart local v21    # "pointerId":I
    :cond_b
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1564
    .restart local v5    # "x":F
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v12}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1567
    .restart local v6    # "y":F
    if-eqz v13, :cond_c

    .line 1568
    invoke-virtual {v3}, Lcom/ansca/corona/events/TouchData;->getX()I

    move-result v18

    .line 1569
    .local v18, "oldX":I
    invoke-virtual {v3}, Lcom/ansca/corona/events/TouchData;->getY()I

    move-result v19

    .line 1570
    .local v19, "oldY":I
    float-to-int v4, v5

    move/from16 v0, v18

    if-ne v0, v4, :cond_c

    float-to-int v4, v6

    move/from16 v0, v19

    if-eq v0, v4, :cond_8

    .line 1575
    .end local v18    # "oldX":I
    .end local v19    # "oldY":I
    :cond_c
    invoke-virtual {v3, v5}, Lcom/ansca/corona/events/TouchData;->setX(F)V

    .line 1576
    invoke-virtual {v3, v6}, Lcom/ansca/corona/events/TouchData;->setY(F)V

    .line 1577
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/ansca/corona/events/TouchData;->setPhase(I)V

    .line 1578
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ansca/corona/events/TouchData;->setTimestamp(J)V

    .line 1580
    if-eqz v14, :cond_d

    .line 1581
    invoke-virtual {v15, v3}, Lcom/ansca/corona/events/MultitouchEvent;->add(Lcom/ansca/corona/events/TouchData;)V

    .line 1582
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 1585
    :cond_d
    invoke-virtual {v11, v3}, Lcom/ansca/corona/events/EventManager;->touchEvent(Lcom/ansca/corona/events/TouchData;)V

    goto :goto_8

    .line 1589
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v21    # "pointerId":I
    :cond_e
    if-gtz v16, :cond_f

    .line 1591
    const/4 v15, 0x0

    .line 1595
    :cond_f
    if-nez v13, :cond_2

    .line 1597
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    .line 1621
    .end local v12    # "i":I
    .end local v13    # "isMoved":Z
    .end local v16    # "numAdded":I
    .end local v17    # "numPointers":I
    .end local v20    # "phase":I
    :cond_10
    invoke-interface/range {v23 .. v23}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventACTION_POINTER_UP()I

    move-result v4

    if-ne v4, v10, :cond_2

    .line 1623
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetActionIndex(Landroid/view/MotionEvent;)I

    move-result v22

    .line 1624
    .restart local v22    # "pointerIndex":I
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 1626
    .restart local v21    # "pointerId":I
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/events/TouchData;

    .line 1627
    .restart local v3    # "t":Lcom/ansca/corona/events/TouchData;
    if-nez v3, :cond_11

    .line 1629
    const-string v4, "Corona"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ERROR: ACTION_POINTER_DOWN unknown touch detected while multitouch was enabled. pointerId("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1634
    :cond_11
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1635
    .restart local v5    # "x":F
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1636
    .restart local v6    # "y":F
    invoke-virtual {v3, v5}, Lcom/ansca/corona/events/TouchData;->setX(F)V

    .line 1637
    invoke-virtual {v3, v6}, Lcom/ansca/corona/events/TouchData;->setY(F)V

    .line 1638
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ansca/corona/events/TouchData;->setPhase(I)V

    .line 1639
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ansca/corona/events/TouchData;->setTimestamp(J)V

    .line 1641
    invoke-virtual {v15, v3}, Lcom/ansca/corona/events/MultitouchEvent;->add(Lcom/ansca/corona/events/TouchData;)V

    .line 1643
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1647
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v21    # "pointerId":I
    .end local v22    # "pointerIndex":I
    :cond_12
    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_2

    .line 1652
    :sswitch_0
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetActionIndex(Landroid/view/MotionEvent;)I

    move-result v22

    .line 1653
    .restart local v22    # "pointerIndex":I
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetPointerId(Landroid/view/MotionEvent;I)I

    move-result v21

    .line 1656
    .restart local v21    # "pointerId":I
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/events/TouchData;

    .line 1657
    .restart local v3    # "t":Lcom/ansca/corona/events/TouchData;
    if-eqz v3, :cond_2

    .line 1658
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1659
    .restart local v5    # "x":F
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->motionEventGetY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 1661
    .restart local v6    # "y":F
    invoke-virtual {v3, v5}, Lcom/ansca/corona/events/TouchData;->setX(F)V

    .line 1662
    invoke-virtual {v3, v6}, Lcom/ansca/corona/events/TouchData;->setY(F)V

    .line 1663
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/ansca/corona/events/TouchData;->setPhase(I)V

    .line 1664
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/ansca/corona/events/TouchData;->setTimestamp(J)V

    .line 1666
    invoke-virtual {v11, v3}, Lcom/ansca/corona/events/EventManager;->touchEvent(Lcom/ansca/corona/events/TouchData;)V

    .line 1668
    sget-object v4, Lcom/ansca/corona/CoronaActivity;->sTouches:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_2

    .line 1704
    .end local v3    # "t":Lcom/ansca/corona/events/TouchData;
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v21    # "pointerId":I
    .end local v22    # "pointerIndex":I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapHasStarted:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    if-ne v4, v10, :cond_4

    .line 1708
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartX:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/ansca/corona/CoronaActivity;->myTapStartY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7, v8, v9}, Lcom/ansca/corona/CoronaActivity;->areCoordinatesWithinTapBounds(FFFF)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1711
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ansca/corona/CoronaActivity;->myLastTapTime:J

    move-wide/from16 v24, v0

    sub-long v7, v7, v24

    const-wide/16 v24, 0x1f4

    cmp-long v4, v7, v24

    if-lez v4, :cond_15

    .line 1713
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    .line 1719
    :cond_14
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/ansca/corona/CoronaActivity;->myLastTapTime:J

    .line 1720
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapHasStarted:Z

    .line 1723
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    invoke-virtual {v11, v4, v7, v8}, Lcom/ansca/corona/events/EventManager;->tapEvent(III)V

    goto/16 :goto_3

    .line 1715
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    const v7, 0x7fffffff

    if-ge v4, v7, :cond_14

    .line 1717
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    goto :goto_9

    .line 1731
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/ansca/corona/CoronaActivity;->myTapHasStarted:Z

    .line 1732
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/ansca/corona/CoronaActivity;->myImmediateTapCount:I

    goto/16 :goto_3

    .line 1507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1647
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x106 -> :sswitch_0
        0x206 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 751
    if-eqz p1, :cond_0

    .line 757
    :cond_0
    return-void
.end method

.method requestRender()V
    .locals 2

    .prologue
    .line 851
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity;->mySystemMonitor:Lcom/ansca/corona/SystemMonitor;

    invoke-virtual {v1}, Lcom/ansca/corona/SystemMonitor;->update()V

    .line 853
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    .line 854
    .local v0, "glView":Lcom/ansca/corona/opengl/CoronaGLSurfaceView;
    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->requestRender()V

    .line 857
    :cond_0
    return-void
.end method

.method setNeedsSwap()V
    .locals 1

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity;->myGLView:Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    invoke-virtual {v0}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setNeedsSwap()V

    .line 1757
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 375
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 376
    return-void

    .line 365
    :pswitch_1
    const/4 p1, 0x4

    .line 366
    goto :goto_0

    .line 370
    :pswitch_2
    const/4 p1, 0x1

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setStatusBarMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/16 v2, 0x800

    const/16 v1, 0x400

    .line 508
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:I

    if-ne p1, v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 513
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 515
    :pswitch_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 516
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 531
    :cond_1
    :goto_1
    iput p1, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:I

    goto :goto_0

    .line 522
    :pswitch_1
    iget v0, p0, Lcom/ansca/corona/CoronaActivity;->myStatusBarMode:I

    if-nez v0, :cond_1

    .line 523
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 524
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method showCameraWindowUsing(Ljava/lang/String;)V
    .locals 19
    .param p1, "destinationFilePath"    # Ljava/lang/String;

    .prologue
    .line 1087
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v7

    .line 1088
    .local v7, "hasCamera":Z
    if-nez v7, :cond_0

    .line 1089
    const-string v12, "Camera not found."

    .line 1090
    .local v12, "message":Ljava/lang/String;
    const-string v15, "Corona"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Warning: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v3

    .line 1092
    .local v3, "controller":Lcom/ansca/corona/Controller;
    if-eqz v3, :cond_0

    .line 1093
    const-string v15, "Warning"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "OK"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v12, v0}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1098
    .end local v3    # "controller":Lcom/ansca/corona/Controller;
    .end local v12    # "message":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 1099
    .local v2, "canWriteToExternalStorage":Z
    const-string v15, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1100
    const-string v14, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1101
    .local v14, "permissionName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/ansca/corona/CoronaActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_1

    .line 1102
    const/4 v2, 0x1

    .line 1107
    .end local v14    # "permissionName":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasPermission()Z

    move-result v8

    .line 1108
    .local v8, "hasPermission":Z
    if-nez v8, :cond_2

    .line 1109
    const-string v12, "This application does not have permission to use the camera."

    .line 1110
    .restart local v12    # "message":Ljava/lang/String;
    const-string v15, "Corona"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Warning: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-static {}, Lcom/ansca/corona/Controller;->getController()Lcom/ansca/corona/Controller;

    move-result-object v3

    .line 1112
    .restart local v3    # "controller":Lcom/ansca/corona/Controller;
    if-eqz v3, :cond_2

    .line 1113
    const-string v15, "Warning"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "OK"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v12, v0}, Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1119
    .end local v3    # "controller":Lcom/ansca/corona/Controller;
    .end local v12    # "message":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    if-nez v8, :cond_5

    .line 1120
    :cond_3
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v5

    .line 1121
    .local v5, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v5, :cond_4

    .line 1122
    const-string v15, ""

    invoke-virtual {v5, v15}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    .line 1182
    .end local v5    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :cond_4
    :goto_0
    return-void

    .line 1128
    :cond_5
    if-eqz v2, :cond_c

    .line 1130
    sget-object v15, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v15}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1131
    .local v4, "directory":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1134
    const/4 v9, 0x0

    .line 1135
    .local v9, "imageFile":Ljava/io/File;
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1136
    .local v1, "applicationName":Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    if-gtz v15, :cond_7

    .line 1137
    :cond_6
    const-string v1, "Corona"

    .line 1140
    :cond_7
    const/4 v10, 0x1

    .local v10, "index":I
    :goto_1
    const/16 v15, 0x2710

    if-gt v10, v15, :cond_8

    .line 1141
    :try_start_0
    new-instance v13, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Picture "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".jpg"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v4, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1142
    .local v13, "nextFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_9

    .line 1143
    move-object v9, v13

    .line 1151
    .end local v13    # "nextFile":Ljava/io/File;
    :cond_8
    :goto_2
    if-nez v9, :cond_a

    .line 1152
    const-string v15, "Corona"

    const-string v16, "Failed to generate a unique image file name for the camera shot."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v5

    .line 1154
    .restart local v5    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v5, :cond_4

    .line 1155
    const-string v15, ""

    invoke-virtual {v5, v15}, Lcom/ansca/corona/events/EventManager;->imagePickerEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 1140
    .end local v5    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .restart local v13    # "nextFile":Ljava/io/File;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1148
    .end local v13    # "nextFile":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 1149
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1159
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_a
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotSourceUri:Landroid/net/Uri;

    .line 1163
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotDestinationFile:Ljava/io/File;

    .line 1164
    if-eqz p1, :cond_b

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_b

    .line 1165
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotDestinationFile:Ljava/io/File;

    .line 1169
    :cond_b
    new-instance v11, Landroid/content/Intent;

    const-string v15, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v11, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v11, "intent":Landroid/content/Intent;
    const-string v15, "output"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->myCameraShotSourceUri:Landroid/net/Uri;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1171
    const/4 v15, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1176
    .end local v1    # "applicationName":Ljava/lang/String;
    .end local v4    # "directory":Ljava/io/File;
    .end local v9    # "imageFile":Ljava/io/File;
    .end local v10    # "index":I
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_c
    new-instance v11, Landroid/content/Intent;

    const-class v15, Lcom/ansca/corona/CameraActivity;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1177
    .restart local v11    # "intent":Landroid/content/Intent;
    if-eqz p1, :cond_d

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_d

    .line 1178
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1180
    :cond_d
    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method showSelectImageWindowUsing(Ljava/lang/String;)V
    .locals 2
    .param p1, "destinationFilePath"    # Ljava/lang/String;

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity;->mySelectImageDestinationFilePath:Ljava/lang/String;

    .line 1074
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1076
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1077
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1078
    return-void
.end method

.method showSendMailWindowUsing(Lcom/ansca/corona/MailSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/ansca/corona/MailSettings;

    .prologue
    .line 1190
    if-nez p1, :cond_0

    .line 1191
    new-instance p1, Lcom/ansca/corona/MailSettings;

    .end local p1    # "settings":Lcom/ansca/corona/MailSettings;
    invoke-direct {p1}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 1195
    .restart local p1    # "settings":Lcom/ansca/corona/MailSettings;
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Send mail..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1197
    return-void
.end method

.method showSendSmsWindowUsing(Lcom/ansca/corona/SmsSettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/ansca/corona/SmsSettings;

    .prologue
    .line 1205
    if-nez p1, :cond_0

    .line 1206
    new-instance p1, Lcom/ansca/corona/SmsSettings;

    .end local p1    # "settings":Lcom/ansca/corona/SmsSettings;
    invoke-direct {p1}, Lcom/ansca/corona/SmsSettings;-><init>()V

    .line 1210
    .restart local p1    # "settings":Lcom/ansca/corona/SmsSettings;
    :cond_0
    invoke-virtual {p1}, Lcom/ansca/corona/SmsSettings;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Send text..."

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/ansca/corona/CoronaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1212
    return-void
.end method

.method showSplashScreen()V
    .locals 26

    .prologue
    .line 861
    const/4 v3, 0x3

    .line 862
    .local v3, "ACCESS_BUFFER":I
    const/16 v20, 0x0

    .line 863
    .local v20, "stream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 864
    .local v8, "fileName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 867
    .local v10, "imageRotation":I
    invoke-virtual/range {p0 .. p0}, Lcom/ansca/corona/CoronaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 868
    .local v6, "display":Landroid/view/Display;
    invoke-static/range {p0 .. p0}, Lcom/ansca/corona/WindowOrientation;->fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;

    move-result-object v5

    .line 874
    .local v5, "currentOrientation":Lcom/ansca/corona/WindowOrientation;
    :try_start_0
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v23

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v14

    .line 875
    .local v14, "longestScreenLength":I
    :goto_0
    const/16 v23, 0x1e0

    move/from16 v0, v23

    if-le v14, v0, :cond_0

    .line 876
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_5

    .line 877
    const-string v8, "Default-LandscapeRight.png"

    .line 878
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 879
    if-nez v20, :cond_0

    .line 880
    const-string v8, "Default-Landscape.png"

    .line 881
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 907
    :cond_0
    :goto_1
    if-nez v20, :cond_3

    .line 908
    const/16 v23, 0x1e0

    move/from16 v0, v23

    if-le v14, v0, :cond_1

    .line 909
    const-string v8, "Default@2x.png"

    .line 910
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 912
    :cond_1
    if-nez v20, :cond_2

    .line 913
    const-string v8, "Default.png"

    .line 914
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 916
    :cond_2
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_8

    .line 917
    const/16 v10, 0x10e

    .line 928
    .end local v14    # "longestScreenLength":I
    :cond_3
    :goto_2
    if-nez v20, :cond_a

    .line 1013
    :goto_3
    return-void

    .line 874
    :cond_4
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v14

    goto :goto_0

    .line 884
    .restart local v14    # "longestScreenLength":I
    :cond_5
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_6

    .line 885
    const-string v8, "Default-LandscapeLeft.png"

    .line 886
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 887
    if-nez v20, :cond_0

    .line 888
    const-string v8, "Default-Landscape.png"

    .line 889
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    goto :goto_1

    .line 892
    :cond_6
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_7

    .line 893
    const-string v8, "Default-PortraitUpsideDown.png"

    .line 894
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 895
    if-nez v20, :cond_0

    .line 896
    const-string v8, "Default-Portrait.png"

    .line 897
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    goto :goto_1

    .line 901
    :cond_7
    const-string v8, "Default-Portrait.png"

    .line 902
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/ansca/corona/FileServices;->openFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    goto :goto_1

    .line 919
    :cond_8
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_9

    .line 920
    const/16 v10, 0x5a

    goto :goto_2

    .line 922
    :cond_9
    sget-object v23, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v0, v23

    if-ne v5, v0, :cond_3

    .line 923
    const/16 v10, 0xb4

    goto :goto_2

    .line 934
    .end local v14    # "longestScreenLength":I
    :cond_a
    const/4 v4, 0x0

    .line 935
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 937
    .local v19, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_1
    sget-object v23, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 938
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 961
    :goto_4
    :try_start_2
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 965
    :goto_5
    if-nez v4, :cond_c

    .line 966
    const-string v23, "Corona"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unable to load file \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' as an image file for the splash screen."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 940
    :catch_0
    move-exception v16

    .line 944
    .local v16, "memoryException":Ljava/lang/OutOfMemoryError;
    :try_start_3
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move-object/from16 v23, v0

    sget-object v24, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 945
    const-string v23, "Corona"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to load splash screen image file \'"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "\' as a 32-bit image. Reducing the image quality to 16-bit."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    sget-object v23, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 948
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_4

    .line 951
    :cond_b
    throw v16
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 954
    :catch_1
    move-exception v7

    .line 955
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 958
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v16    # "memoryException":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v7

    .line 959
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 962
    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 963
    .restart local v7    # "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 971
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    if-nez v23, :cond_d

    .line 973
    new-instance v23, Landroid/widget/ImageView;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    const/high16 v24, -0x1000000

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 976
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x11

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 980
    .local v12, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {}, Lcom/ansca/corona/ViewManager;->getViewManager()Lcom/ansca/corona/ViewManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/ansca/corona/ViewManager;->getContentView()Landroid/view/ViewGroup;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 982
    .end local v12    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    if-eqz v23, :cond_f

    if-nez v10, :cond_f

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Matrix;->reset()V

    .line 1012
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 986
    :cond_f
    if-eqz v10, :cond_e

    .line 990
    if-eqz v10, :cond_10

    const/16 v23, 0xb4

    move/from16 v0, v23

    if-ne v10, v0, :cond_11

    .line 991
    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v11, v0

    .line 992
    .local v11, "imageWidth":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v9, v0

    .line 998
    .local v9, "imageHeight":F
    :goto_7
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v23, v11

    .line 999
    .local v21, "xScale":F
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v22, v23, v9

    .line 1000
    .local v22, "yScale":F
    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 1001
    .local v13, "letterboxScale":F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 1002
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1003
    int-to-float v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1004
    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v11, v23

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v9, v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1005
    invoke-virtual {v15, v13, v13}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1006
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v24, v11, v13

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v17, v23, v24

    .line 1007
    .local v17, "offsetX":F
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v24, v9, v13

    sub-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v18, v23, v24

    .line 1008
    .local v18, "offsetY":F
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    sget-object v24, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ansca/corona/CoronaActivity;->fSplashScreenView:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/16 :goto_6

    .line 995
    .end local v9    # "imageHeight":F
    .end local v11    # "imageWidth":F
    .end local v13    # "letterboxScale":F
    .end local v15    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "offsetX":F
    .end local v18    # "offsetY":F
    .end local v21    # "xScale":F
    .end local v22    # "yScale":F
    :cond_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v11, v0

    .line 996
    .restart local v11    # "imageWidth":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v9, v0

    .restart local v9    # "imageHeight":F
    goto/16 :goto_7

    .line 927
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "imageHeight":F
    .end local v11    # "imageWidth":F
    .end local v19    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v23

    goto/16 :goto_2
.end method

.method public supportsLandscapeOrientation()Z
    .locals 2

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 328
    :pswitch_0
    const/4 v0, 0x0

    .line 331
    .local v0, "isSupported":Z
    :goto_0
    return v0

    .line 325
    .end local v0    # "isSupported":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 326
    .restart local v0    # "isSupported":Z
    goto :goto_0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public supportsOrientationChanges()Z
    .locals 2

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRequestedOrientation()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 278
    const/4 v0, 0x0

    .line 281
    .local v0, "supportsOrientationChanges":Z
    :goto_0
    return v0

    .line 275
    .end local v0    # "supportsOrientationChanges":Z
    :sswitch_0
    const/4 v0, 0x1

    .line 276
    .restart local v0    # "supportsOrientationChanges":Z
    goto :goto_0

    .line 269
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method public supportsPortraitOrientation()Z
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaActivity;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 303
    :pswitch_0
    const/4 v0, 0x0

    .line 306
    .local v0, "isSupported":Z
    :goto_0
    return v0

    .line 300
    .end local v0    # "isSupported":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 301
    .restart local v0    # "isSupported":Z
    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
