.class public Lcom/ansca/corona/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/Controller$Gingerbread;,
        Lcom/ansca/corona/Controller$RuntimeState;
    }
.end annotation


# static fields
.field private static final FACEBOOK_SESSION_PREFERENCES_NAME:Ljava/lang/String; = "facebook-session"

.field private static final FACEBOOK_SESSION_PREFERENCE_ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field private static final FACEBOOK_SESSION_PREFERENCE_EXPIRATION_TIME_KEY:Ljava/lang/String; = "expires_in"

.field private static final IMAGE_SOURCE_CAMERA:I = 0x1

.field private static final IMAGE_SOURCE_PHOTO_LIBRARY:I = 0x0

.field private static final IMAGE_SOURCE_SAVED_PHOTOS_ALBUM:I = 0x2

.field static final kLocaleCountry:I = 0x2

.field static final kLocaleIdentifier:I = 0x0

.field static final kLocaleLanguage:I = 0x1

.field static final kUILanguage:I = 0x3

.field static theController:Lcom/ansca/corona/Controller;


# instance fields
.field private myActivity:Lcom/ansca/corona/CoronaActivity;

.field private myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

.field private myAdManager:Lcom/ansca/corona/AdManager;

.field private myAlertDialog:Landroid/app/AlertDialog;

.field private myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

.field private myBridge:Lcom/ansca/corona/NativeToJavaBridge;

.field private myEventManager:Lcom/ansca/corona/events/EventManager;

.field private myFacebook:Lcom/facebook/android/Facebook;

.field private myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

.field private myIdleEnabled:Z

.field private myInitialResume:Z

.field private myIsNaturalOrientationPortrait:Z

.field private myMediaManager:Lcom/ansca/corona/MediaManager;

.field private myRuntime:Lcom/ansca/corona/CoronaRuntime;

.field private myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

.field private mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

.field private myTimerHandler:Landroid/os/Handler;

.field private myTimerMilliseconds:I

.field private myTimerTask:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v3, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    .line 65
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    .line 73
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 109
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 112
    new-instance v2, Lcom/ansca/corona/CoronaRuntime;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaRuntime;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    .line 113
    new-instance v2, Lcom/ansca/corona/NativeToJavaBridge;

    invoke-direct {v2, p1}, Lcom/ansca/corona/NativeToJavaBridge;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myBridge:Lcom/ansca/corona/NativeToJavaBridge;

    .line 114
    new-instance v2, Lcom/ansca/corona/AdManager;

    invoke-direct {v2, p1}, Lcom/ansca/corona/AdManager;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myAdManager:Lcom/ansca/corona/AdManager;

    .line 115
    new-instance v2, Lcom/ansca/corona/MediaManager;

    invoke-direct {v2, p1}, Lcom/ansca/corona/MediaManager;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    .line 116
    new-instance v2, Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {v2}, Lcom/ansca/corona/CoronaSensorManager;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    .line 117
    new-instance v2, Lcom/ansca/corona/events/EventManager;

    invoke-direct {v2}, Lcom/ansca/corona/events/EventManager;-><init>()V

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    .line 121
    const-string v1, "window"

    .line 122
    .local v1, "windowServiceName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 134
    iput-boolean v3, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    .line 137
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_0

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 130
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v2, v5, :cond_1

    :goto_2
    iput-boolean v3, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_2

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/ansca/corona/Controller;)I
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    return v0
.end method

.method static synthetic access$100(Lcom/ansca/corona/Controller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ansca/corona/Controller;Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/events/EventManager;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/Controller;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ansca/corona/Controller;Lcom/ansca/corona/ActivityIndicatorDialog;)Lcom/ansca/corona/ActivityIndicatorDialog;
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/Controller;
    .param p1, "x1"    # Lcom/ansca/corona/ActivityIndicatorDialog;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/Controller;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public static create(Lcom/ansca/corona/CoronaActivity;)V
    .locals 1
    .param p0, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 97
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/ansca/corona/Controller;

    invoke-direct {v0, p0}, Lcom/ansca/corona/Controller;-><init>(Lcom/ansca/corona/CoronaActivity;)V

    sput-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 99
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    invoke-direct {v0}, Lcom/ansca/corona/Controller;->init()V

    .line 101
    :cond_0
    return-void
.end method

.method private createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 623
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 624
    invoke-static {p1}, Lcom/ansca/corona/Controller$Gingerbread;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 629
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-object v0

    .line 627
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0
.end method

.method public static getActivity()Lcom/ansca/corona/CoronaActivity;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 252
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 255
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    goto :goto_0
.end method

.method public static getAdManager()Lcom/ansca/corona/AdManager;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 284
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 285
    const/4 v1, 0x0

    .line 287
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myAdManager:Lcom/ansca/corona/AdManager;

    goto :goto_0
.end method

.method public static getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;
    .locals 2

    .prologue
    .line 150
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 151
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .line 154
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

    goto :goto_0
.end method

.method public static getBridge()Lcom/ansca/corona/NativeToJavaBridge;
    .locals 2

    .prologue
    .line 275
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 276
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 277
    const/4 v1, 0x0

    .line 279
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myBridge:Lcom/ansca/corona/NativeToJavaBridge;

    goto :goto_0
.end method

.method public static getController()Lcom/ansca/corona/Controller;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    return-object v0
.end method

.method public static getEventManager()Lcom/ansca/corona/events/EventManager;
    .locals 2

    .prologue
    .line 267
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 268
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 271
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    goto :goto_0
.end method

.method public static getMediaManager()Lcom/ansca/corona/MediaManager;
    .locals 2

    .prologue
    .line 291
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 292
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 293
    const/4 v1, 0x0

    .line 295
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    goto :goto_0
.end method

.method public static getRuntime()Lcom/ansca/corona/CoronaRuntime;
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 260
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 263
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    goto :goto_0
.end method

.method private declared-synchronized init()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->init()V

    .line 141
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->init()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    .line 144
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 145
    invoke-static {}, Lcom/ansca/corona/version/AndroidVersionSpecificFactory;->create()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myAndroidVersion:Lcom/ansca/corona/version/IAndroidVersionSpecific;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private internalSetIdleTimer(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 577
    if-eqz p1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/Controller$3;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$3;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 607
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/Controller$4;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$4;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static isMultitouchEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 158
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 159
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v2

    invoke-interface {v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->apiVersion()I

    move-result v2

    if-lt v2, v3, :cond_0

    iget-object v2, v0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v2, v3}, Lcom/ansca/corona/CoronaSensorManager;->isActive(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isRunning()Z
    .locals 3

    .prologue
    .line 246
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 247
    .local v0, "controller":Lcom/ansca/corona/Controller;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isValid()Z
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onDrawFrame()V
    .locals 4

    .prologue
    .line 217
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 218
    .local v0, "controller":Lcom/ansca/corona/Controller;
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 219
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 220
    monitor-enter v0

    .line 222
    :try_start_0
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v3, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v2, v3, :cond_0

    .line 223
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->resume()V

    .line 224
    invoke-static {}, Lcom/ansca/corona/Controller;->requestRender()V

    .line 225
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 228
    :cond_0
    invoke-virtual {v1}, Lcom/ansca/corona/events/EventManager;->sendEvents()V

    .line 231
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v3, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v2, v3, :cond_1

    .line 232
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->pause()V

    .line 233
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v2, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 238
    :cond_1
    sget-object v2, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iget-object v3, v0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v2, v3, :cond_2

    .line 239
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->render()V

    .line 241
    :cond_2
    monitor-exit v0

    .line 243
    :cond_3
    return-void

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static requestEventRender()V
    .locals 2

    .prologue
    .line 306
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 307
    .local v0, "controller":Lcom/ansca/corona/Controller;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 308
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->requestRender()V

    .line 310
    :cond_0
    return-void
.end method

.method public static requestRender()V
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;

    .line 300
    .local v0, "controller":Lcom/ansca/corona/Controller;
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->requestRender()V

    .line 303
    :cond_0
    return-void
.end method


# virtual methods
.method protected GetHardwareIdentifier()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1178
    const/4 v1, 0x0

    .line 1181
    .local v1, "stringId":Ljava/lang/String;
    :try_start_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 1182
    .local v0, "permissionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v3, v0}, Lcom/ansca/corona/CoronaActivity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1183
    iget-object v3, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1184
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1185
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1191
    .end local v0    # "permissionName":Ljava/lang/String;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    return-object v1

    .line 1189
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected GetOSIdentifier()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1196
    const/4 v0, 0x0

    .line 1200
    .local v0, "stringId":Ljava/lang/String;
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public addImageFileToPhotoGallery(Ljava/lang/String;)V
    .locals 4
    .param p1, "imageFilePathName"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x0

    new-instance v3, Lcom/ansca/corona/Controller$2;

    invoke-direct {v3, p0}, Lcom/ansca/corona/Controller$2;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method

.method public canShowActivityFor(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 921
    if-nez p1, :cond_1

    .line 935
    :cond_0
    :goto_0
    return v2

    .line 926
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 927
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 935
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canShowPopup(Ljava/lang/String;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 939
    const/4 v3, 0x0

    .line 940
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 942
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 943
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_1

    .line 944
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, "nameLowerCase":Ljava/lang/String;
    const-string v5, "mail"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 946
    new-instance v4, Lcom/ansca/corona/MailSettings;

    invoke-direct {v4}, Lcom/ansca/corona/MailSettings;-><init>()V

    .line 947
    .local v4, "settings":Lcom/ansca/corona/MailSettings;
    invoke-virtual {v4}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 956
    .end local v4    # "settings":Lcom/ansca/corona/MailSettings;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 957
    invoke-virtual {p0, v1}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result v3

    .line 961
    .end local v2    # "nameLowerCase":Ljava/lang/String;
    :cond_1
    return v3

    .line 948
    .restart local v2    # "nameLowerCase":Ljava/lang/String;
    :cond_2
    const-string v5, "sms"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 949
    new-instance v4, Lcom/ansca/corona/SmsSettings;

    invoke-direct {v4}, Lcom/ansca/corona/SmsSettings;-><init>()V

    .line 950
    .local v4, "settings":Lcom/ansca/corona/SmsSettings;
    invoke-virtual {v4}, Lcom/ansca/corona/SmsSettings;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 951
    goto :goto_0

    .end local v4    # "settings":Lcom/ansca/corona/SmsSettings;
    :cond_3
    const-string v5, "appstore"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "rateapp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 953
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancelNativeAlert(I)V
    .locals 3
    .param p1, "buttonIndex"    # I

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    .line 736
    .local v1, "theDialog":Landroid/app/AlertDialog;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    .line 737
    monitor-exit p0

    .line 738
    if-nez v1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return-void

    .line 737
    .end local v1    # "theDialog":Landroid/app/AlertDialog;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 743
    .restart local v1    # "theDialog":Landroid/app/AlertDialog;
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 744
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 749
    new-instance v2, Lcom/ansca/corona/Controller$6;

    invoke-direct {v2, p0, v1, p1}, Lcom/ansca/corona/Controller$6;-><init>(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public cancelTimer()V
    .locals 1

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    .line 349
    return-void
.end method

.method public closeNativeActivityIndicator()V
    .locals 1

    .prologue
    .line 839
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    invoke-virtual {v0}, Lcom/ansca/corona/ActivityIndicatorDialog;->dismiss()V

    .line 841
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myActivityIndicatorDialog:Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 843
    :cond_0
    return-void
.end method

.method protected createFacebookBundle(Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 9
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    .line 1488
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1490
    .local v4, "result":Landroid/os/Bundle;
    if-eqz p1, :cond_4

    .line 1491
    move-object v3, p1

    .line 1492
    .local v3, "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 1493
    .local v5, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v5, :cond_4

    .line 1494
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1495
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1496
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 1497
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Ljava/io/File;

    if-eqz v7, :cond_1

    .line 1498
    iget-object v7, p0, Lcom/ansca/corona/Controller;->myBridge:Lcom/ansca/corona/NativeToJavaBridge;

    check-cast v6, Ljava/io/File;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ansca/corona/NativeToJavaBridge;->getBytesFromFile(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1500
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v6, [B

    if-eqz v7, :cond_2

    .line 1501
    check-cast v6, [B

    .end local v6    # "value":Ljava/lang/Object;
    check-cast v6, [B

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 1503
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v7, v6, [Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 1504
    check-cast v6, [Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1506
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    if-eqz v6, :cond_0

    .line 1507
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1512
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v6    # "value":Ljava/lang/Object;
    :cond_4
    return-object v4
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/ansca/corona/Controller;->cancelNativeAlert(I)V

    .line 201
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->closeNativeActivityIndicator()V

    .line 202
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    .line 203
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myEventManager:Lcom/ansca/corona/events/EventManager;

    invoke-virtual {v0}, Lcom/ansca/corona/events/EventManager;->removeAllEvents()V

    .line 204
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myAdManager:Lcom/ansca/corona/AdManager;

    invoke-virtual {v0}, Lcom/ansca/corona/AdManager;->hideAllAds()V

    .line 205
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->stop()V

    .line 206
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->release()V

    .line 207
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntime:Lcom/ansca/corona/CoronaRuntime;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaRuntime;->dispose()V

    .line 208
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->destroy()V

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/ansca/corona/Controller;->theController:Lcom/ansca/corona/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public displayUpdate()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->setNeedsSwap()V

    .line 360
    return-void
.end method

.method public facebookApplyActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 1427
    :cond_0
    return-void
.end method

.method public facebookDialog(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/util/HashMap;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/Controller$16;

    invoke-direct {v1, p0, p1, p2}, Lcom/ansca/corona/Controller$16;-><init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1588
    :cond_0
    return-void
.end method

.method public facebookLogin(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1293
    if-nez p1, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1298
    :cond_1
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1299
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_2

    .line 1300
    const-string v5, "android.permission.INTERNET"

    invoke-virtual {v1, v5, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 1305
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 1310
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    if-nez v5, :cond_3

    .line 1312
    :try_start_0
    new-instance v5, Lcom/facebook/android/Facebook;

    invoke-direct {v5, p1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    .line 1313
    new-instance v5, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v6, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v5, v6}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v5, p0, Lcom/ansca/corona/Controller;->myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :cond_3
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v5}, Lcom/facebook/android/Facebook;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1328
    const-string v5, "Corona"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ERROR: In previous call to facebook.login(), the appId was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v7}, Lcom/facebook/android/Facebook;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". The app id will be the former not the latter."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_4
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v5}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1334
    const-string v5, "facebook-session"

    invoke-virtual {v0, v5, v9}, Lcom/ansca/corona/CoronaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1336
    .local v4, "savedSession":Landroid/content/SharedPreferences;
    if-eqz v4, :cond_5

    .line 1337
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    const-string v6, "access_token"

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 1338
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    const-string v6, "expires_in"

    const-wide/16 v7, 0x0

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 1344
    .end local v4    # "savedSession":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v5}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1345
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v2

    .line 1346
    .local v2, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v2, :cond_0

    .line 1347
    iget-object v5, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v5}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v6}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v6

    invoke-virtual {v2, v9, v5, v6, v7}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(ILjava/lang/String;J)V

    goto/16 :goto_0

    .line 1315
    .end local v2    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :catch_0
    move-exception v3

    .line 1316
    .local v3, "ex":Ljava/lang/Exception;
    iput-object v8, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    .line 1317
    iput-object v8, p0, Lcom/ansca/corona/Controller;->myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    .line 1318
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v2

    .line 1319
    .restart local v2    # "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v2, :cond_0

    .line 1320
    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEventError(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1357
    .end local v2    # "eventManager":Lcom/ansca/corona/events/EventManager;
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_6
    new-instance v5, Lcom/ansca/corona/Controller$13;

    invoke-direct {v5, p0, p2}, Lcom/ansca/corona/Controller$13;-><init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public facebookLogout()V
    .locals 5

    .prologue
    .line 1432
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v2, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v3, "facebook-session"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ansca/corona/CoronaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1440
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_2

    .line 1441
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1446
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    if-eqz v2, :cond_0

    .line 1447
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myFacebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1449
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v3, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v4, Lcom/ansca/corona/Controller$14;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$14;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v2, v3, v4}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0

    .line 1478
    :cond_3
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 1479
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_0

    .line 1480
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(I)V

    goto :goto_0
.end method

.method public facebookRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/HashMap;

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    if-eqz v0, :cond_0

    .line 1520
    new-instance v4, Lcom/ansca/corona/Controller$15;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$15;-><init>(Lcom/ansca/corona/Controller;)V

    .line 1547
    .local v4, "listener":Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    invoke-virtual {p0, p3}, Lcom/ansca/corona/Controller;->createFacebookBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v2

    .line 1548
    .local v2, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myFacebookRunner:Lcom/facebook/android/AsyncFacebookRunner;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;Ljava/lang/Object;)V

    .line 1550
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "listener":Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    :cond_0
    return-void
.end method

.method public getIdleTimer()Z
    .locals 1

    .prologue
    .line 617
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    return v0
.end method

.method public getManufacturerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1168
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1173
    const-string v0, "unknown"

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPreference(I)Ljava/lang/String;
    .locals 4
    .param p1, "category"    # I

    .prologue
    .line 1263
    const-string v0, ""

    .line 1265
    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1279
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreference: Unknown category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1283
    :goto_0
    return-object v0

    .line 1267
    :pswitch_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1268
    goto :goto_0

    .line 1270
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1271
    goto :goto_0

    .line 1273
    :pswitch_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1274
    goto :goto_0

    .line 1276
    :pswitch_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1277
    goto :goto_0

    .line 1265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueIdentifier(I)Ljava/lang/String;
    .locals 3
    .param p1, "identifierType"    # I

    .prologue
    .line 1204
    const/4 v1, 0x0

    .line 1207
    .local v1, "stringId":Ljava/lang/String;
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v2, :cond_0

    .line 1208
    const-string v2, ""

    .line 1245
    :goto_0
    return-object v2

    .line 1211
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1241
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1242
    const-string v1, ""

    :cond_2
    move-object v2, v1

    .line 1245
    goto :goto_0

    .line 1215
    :pswitch_0
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetHardwareIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "hardwareId":Ljava/lang/String;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1217
    move-object v1, v0

    .line 1222
    :cond_3
    if-nez v1, :cond_1

    .line 1223
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetOSIdentifier()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1228
    .end local v0    # "hardwareId":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetHardwareIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1229
    goto :goto_1

    .line 1232
    :pswitch_2
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->GetOSIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1233
    goto :goto_1

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasAccelerometer()Z
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->hasAccelerometer()Z

    move-result v0

    return v0
.end method

.method public hasGyroscope()Z
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->hasGyroscope()Z

    move-result v0

    return v0
.end method

.method public hasMediaSource(I)Z
    .locals 2
    .param p1, "mediaSourceType"    # I

    .prologue
    .line 856
    const/4 v0, 0x0

    .line 857
    .local v0, "hasSource":Z
    packed-switch p1, :pswitch_data_0

    .line 866
    :goto_0
    return v0

    .line 860
    :pswitch_0
    const/4 v0, 0x1

    .line 861
    goto :goto_0

    .line 863
    :pswitch_1
    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ansca/corona/CameraServices;->hasPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 857
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 363
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 364
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v5}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 366
    .local v5, "localContext":Lorg/apache/http/protocol/HttpContext;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v4, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v2, v6, v7}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .local v2, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 376
    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 388
    .end local v2    # "entity":Lorg/apache/http/entity/StringEntity;
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 383
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 384
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 385
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isNaturalOrientationPortrait()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIsNaturalOrientationPortrait:Z

    return v0
.end method

.method public openUrl(Ljava/lang/String;)Z
    .locals 14
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 399
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v5

    .line 404
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 405
    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 410
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 414
    .local v11, "uri":Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/data/data/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "applicationPath":Ljava/lang/String;
    const/4 v7, 0x0

    .line 418
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-gez v12, :cond_2

    const-string v12, "content://"

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v2, p1}, Lcom/ansca/corona/FileServices;->doesAssetFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 425
    :cond_2
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "content"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 426
    :cond_3
    invoke-static {v2, p1}, Lcom/ansca/corona/FileContentProvider;->getContentUriFromFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 430
    :cond_4
    const/4 v10, 0x0

    .line 431
    .local v10, "mimeTypeName":Ljava/lang/String;
    const/16 v12, 0x2e

    invoke-virtual {p1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 432
    .local v6, "index":I
    if-ltz v6, :cond_6

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 433
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {p1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 434
    .local v4, "fileExtension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v9

    .line 435
    .local v9, "mapping":Landroid/webkit/MimeTypeMap;
    invoke-virtual {v9, v4}, Landroid/webkit/MimeTypeMap;->hasExtension(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 436
    invoke-virtual {v9, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 438
    :cond_5
    if-nez v10, :cond_6

    .line 439
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "application/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 444
    .end local v4    # "fileExtension":Ljava/lang/String;
    .end local v9    # "mapping":Landroid/webkit/MimeTypeMap;
    :cond_6
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v7, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 445
    .restart local v7    # "intent":Landroid/content/Intent;
    if-eqz v10, :cond_7

    .line 446
    invoke-virtual {v7, v11, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    .end local v6    # "index":I
    .end local v10    # "mimeTypeName":Ljava/lang/String;
    :cond_7
    :goto_1
    if-eqz v7, :cond_0

    .line 478
    const/4 v5, 0x0

    .line 480
    .local v5, "hasSucceeded":Z
    :try_start_0
    invoke-virtual {p0, v7}, Lcom/ansca/corona/Controller;->canShowActivityFor(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 481
    invoke-virtual {v2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 449
    .end local v5    # "hasSucceeded":Z
    :cond_8
    invoke-static {p1}, Landroid/net/MailTo;->isMailTo(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 451
    invoke-static {p1}, Lcom/ansca/corona/MailSettings;->fromUrl(Ljava/lang/String;)Lcom/ansca/corona/MailSettings;

    move-result-object v8

    .line 454
    .local v8, "mailSettings":Lcom/ansca/corona/MailSettings;
    invoke-virtual {v8}, Lcom/ansca/corona/MailSettings;->toIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "Send mail..."

    invoke-static {v12, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v7

    .line 455
    goto :goto_1

    .line 458
    .end local v8    # "mailSettings":Lcom/ansca/corona/MailSettings;
    :cond_9
    const-string v0, "android.intent.action.VIEW"

    .line 459
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_b

    .line 461
    const-string v12, "http://"

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 462
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 469
    :cond_a
    :goto_2
    new-instance v7, Landroid/content/Intent;

    .end local v7    # "intent":Landroid/content/Intent;
    invoke-direct {v7, v0, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v7    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 465
    :cond_b
    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    const-string v13, "tel"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 467
    const-string v0, "android.intent.action.CALL"

    goto :goto_2

    .line 485
    .end local v0    # "action":Ljava/lang/String;
    .restart local v5    # "hasSucceeded":Z
    :catch_0
    move-exception v3

    .line 486
    .local v3, "ex":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;ILjava/lang/String;)Z
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "quality"    # I
    .param p3, "filePathName"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 529
    .local v2, "result":Z
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 530
    :cond_0
    const/4 v4, 0x0

    .line 554
    :goto_0
    return v4

    .line 535
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 536
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 544
    .local v1, "format":Landroid/graphics/Bitmap$CompressFormat;
    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 545
    .local v3, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {p1, v1, p2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v2

    .line 546
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 547
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    move v4, v2

    .line 554
    goto :goto_0

    .line 539
    .end local v1    # "format":Landroid/graphics/Bitmap$CompressFormat;
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .restart local v1    # "format":Landroid/graphics/Bitmap$CompressFormat;
    goto :goto_1

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 492
    const/4 v5, 0x0

    .line 495
    .local v5, "result":Z
    iget-object v6, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-eqz v6, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 496
    :cond_0
    const/4 v6, 0x0

    .line 522
    :goto_0
    return v6

    .line 502
    :cond_1
    iget-object v6, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v6}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "mimeTypeName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 504
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 505
    .local v1, "format":Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x64

    .line 514
    .local v4, "quality":I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-virtual {v6}, Lcom/ansca/corona/CoronaActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 515
    .local v3, "outStream":Ljava/io/OutputStream;
    invoke-virtual {p1, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    .line 516
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 517
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "outStream":Ljava/io/OutputStream;
    :goto_2
    move v6, v5

    .line 522
    goto :goto_0

    .line 508
    .end local v1    # "format":Landroid/graphics/Bitmap$CompressFormat;
    .end local v4    # "quality":I
    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 509
    .restart local v1    # "format":Landroid/graphics/Bitmap$CompressFormat;
    const/16 v4, 0x5a

    .restart local v4    # "quality":I
    goto :goto_1

    .line 519
    :catch_0
    move-exception v0

    .line 520
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setAccelerometerInterval(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager;->setAccelerometerInterval(I)V

    .line 1126
    return-void
.end method

.method public setEventNotification(IZ)V
    .locals 1
    .param p1, "eventType"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaSensorManager;->setEventNotification(IZ)V

    .line 1156
    return-void
.end method

.method public setGyroscopeInterval(I)V
    .locals 1
    .param p1, "frequency"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/CoronaSensorManager;->setGyroscopeInterval(I)V

    .line 1130
    return-void
.end method

.method public setIdleTimer(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V

    .line 612
    iput-boolean p1, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    .line 613
    return-void
.end method

.method public setLocationThreshold(D)V
    .locals 1
    .param p1, "meters"    # D

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/CoronaSensorManager;->setLocationThreshold(D)V

    .line 1134
    return-void
.end method

.method public setTimer(I)V
    .locals 0
    .param p1, "milliseconds"    # I

    .prologue
    .line 324
    iput p1, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    .line 325
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->startTimer()V

    .line 326
    return-void
.end method

.method public showAppStoreWindow(Ljava/util/HashMap;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 1024
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 1025
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return v10

    .line 1030
    :cond_1
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getStoreApplicationWasPurchasedFrom()Ljava/lang/String;

    move-result-object v7

    .line 1034
    .local v7, "storeName":Ljava/lang/String;
    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1035
    if-eqz p1, :cond_3

    .line 1036
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableAppStoreNames()[Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "availableStores":[Ljava/lang/String;
    const-string v11, "supportedAndroidStores"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1038
    .local v3, "collection":Ljava/lang/Object;
    if-eqz v2, :cond_3

    instance-of v11, v3, Ljava/util/HashMap;

    if-eqz v11, :cond_3

    .line 1039
    check-cast v3, Ljava/util/HashMap;

    .end local v3    # "collection":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1040
    .local v5, "nextObject":Ljava/lang/Object;
    instance-of v11, v5, Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object v8, v5

    .line 1041
    check-cast v8, Ljava/lang/String;

    .line 1042
    .local v8, "supportedStoreName":Ljava/lang/String;
    invoke-static {v2, v8}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_2

    .line 1043
    move-object v7, v8

    .line 1053
    .end local v2    # "availableStores":[Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "nextObject":Ljava/lang/Object;
    .end local v8    # "supportedStoreName":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 1054
    .local v6, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 1057
    const-string v11, "androidAppPackageName"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1058
    .local v9, "value":Ljava/lang/Object;
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 1059
    check-cast v9, Ljava/lang/String;

    .end local v9    # "value":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1062
    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_6

    .line 1064
    :cond_5
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1068
    :cond_6
    const-string v11, "google"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1069
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "market://details?id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_0

    .line 1071
    :cond_7
    const-string v11, "amazon"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1072
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_0

    .line 1074
    :cond_8
    const-string v11, "nook"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1075
    if-eqz p1, :cond_0

    .line 1078
    const-string v11, "nookAppEAN"

    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1079
    .local v1, "appStringId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 1082
    new-instance v10, Lcom/ansca/corona/Controller$12;

    invoke-direct {v10, p0, v1}, Lcom/ansca/corona/Controller$12;-><init>(Lcom/ansca/corona/Controller;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1114
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1116
    .end local v1    # "appStringId":Ljava/lang/String;
    :cond_9
    const-string v11, "samsung"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "samsungapps://ProductDetail/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ansca/corona/Controller;->openUrl(Ljava/lang/String;)Z

    move-result v10

    goto/16 :goto_0
.end method

.method public showImagePickerWindow(ILjava/lang/String;)V
    .locals 2
    .param p1, "imageSourceType"    # I
    .param p2, "destinationFilePath"    # Ljava/lang/String;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v0, :cond_0

    .line 910
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v1, Lcom/ansca/corona/Controller$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ansca/corona/Controller$9;-><init>(Lcom/ansca/corona/Controller;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showNativeActivityIndicator()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 802
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 831
    :goto_0
    return-void

    .line 807
    :cond_0
    new-instance v1, Lcom/ansca/corona/Controller$8;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$8;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # [Ljava/lang/String;

    .prologue
    .line 634
    monitor-enter p0

    .line 635
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 636
    monitor-exit p0

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 642
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 647
    new-instance v1, Lcom/ansca/corona/Controller$5;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/ansca/corona/Controller$5;-><init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 638
    .end local v0    # "activity":Landroid/app/Activity;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public showSendMailWindow(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 970
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v1, :cond_0

    .line 987
    :goto_0
    return-void

    .line 975
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v1, p1}, Lcom/ansca/corona/MailSettings;->from(Landroid/content/Context;Ljava/util/HashMap;)Lcom/ansca/corona/MailSettings;

    move-result-object v0

    .line 978
    .local v0, "mailSettings":Lcom/ansca/corona/MailSettings;
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v2, Lcom/ansca/corona/Controller$10;

    invoke-direct {v2, p0, v0}, Lcom/ansca/corona/Controller$10;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/MailSettings;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showSendSmsWindow(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 995
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    if-nez v1, :cond_0

    .line 1012
    :goto_0
    return-void

    .line 1000
    :cond_0
    invoke-static {p1}, Lcom/ansca/corona/SmsSettings;->from(Ljava/util/HashMap;)Lcom/ansca/corona/SmsSettings;

    move-result-object v0

    .line 1003
    .local v0, "smsSettings":Lcom/ansca/corona/SmsSettings;
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    new-instance v2, Lcom/ansca/corona/Controller$11;

    invoke-direct {v2, p0, v0}, Lcom/ansca/corona/Controller$11;-><init>(Lcom/ansca/corona/Controller;Lcom/ansca/corona/SmsSettings;)V

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showTrialAlert()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    .line 768
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 794
    :goto_0
    return-void

    .line 773
    :cond_0
    new-instance v1, Lcom/ansca/corona/Controller$7;

    invoke-direct {v1, p0}, Lcom/ansca/corona/Controller$7;-><init>(Lcom/ansca/corona/Controller;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/CoronaActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    if-nez v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v0, v1, :cond_1

    .line 169
    :cond_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 178
    :goto_0
    invoke-static {}, Lcom/ansca/corona/Controller;->requestEventRender()V

    .line 179
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->resumeAll()V

    .line 180
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->resume()V

    .line 181
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->startTimer()V

    .line 182
    iget-boolean v0, p0, Lcom/ansca/corona/Controller;->myIdleEnabled:Z

    invoke-direct {p0, v0}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_2
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ansca/corona/Controller;->myInitialResume:Z

    .line 176
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Running:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 329
    iget v0, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    if-nez v0, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/ansca/corona/Controller$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/Controller$1;-><init>(Lcom/ansca/corona/Controller;)V

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    .line 342
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    iget v2, p0, Lcom/ansca/corona/Controller;->myTimerMilliseconds:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/Controller;->stopTimer()V

    .line 187
    iget-object v0, p0, Lcom/ansca/corona/Controller;->mySensorManager:Lcom/ansca/corona/CoronaSensorManager;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaSensorManager;->pause()V

    .line 188
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Starting:Lcom/ansca/corona/Controller$RuntimeState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    sget-object v1, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    if-ne v0, v1, :cond_1

    .line 189
    :cond_0
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopped:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;

    .line 194
    :goto_0
    invoke-static {}, Lcom/ansca/corona/Controller;->requestEventRender()V

    .line 195
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myMediaManager:Lcom/ansca/corona/MediaManager;

    invoke-virtual {v0}, Lcom/ansca/corona/MediaManager;->pauseAll()V

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 191
    :cond_1
    :try_start_1
    sget-object v0, Lcom/ansca/corona/Controller$RuntimeState;->Stopping:Lcom/ansca/corona/Controller$RuntimeState;

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myRuntimeState:Lcom/ansca/corona/Controller$RuntimeState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopTimer()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/ansca/corona/Controller;->myTimerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/Controller;->myTimerTask:Ljava/lang/Runnable;

    .line 356
    :cond_0
    return-void
.end method

.method public vibrate()V
    .locals 3

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/ansca/corona/Controller;->myActivity:Lcom/ansca/corona/CoronaActivity;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Lcom/ansca/corona/CoronaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1160
    .local v0, "v":Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1161
    return-void
.end method
