.class public Lcom/ansca/corona/JavaToNativeShim;
.super Ljava/lang/Object;
.source "JavaToNativeShim.java"


# static fields
.field public static final EventTypeAccelerometer:I = 0x1

.field public static final EventTypeGyroscope:I = 0x2

.field public static final EventTypeHeading:I = 0x4

.field public static final EventTypeLocation:I = 0x3

.field public static final EventTypeMultitouch:I = 0x5

.field public static final EventTypeNumTypes:I = 0x6

.field public static final EventTypeOrientation:I = 0x0

.field public static final EventTypeUnknown:I = -0x1

.field public static final FBConnectSessionEventLogin:I = 0x0

.field public static final FBConnectSessionEventLoginCancelled:I = 0x2

.field public static final FBConnectSessionEventLoginFailed:I = 0x1

.field public static final FBConnectSessionEventLogout:I = 0x3

.field public static final TouchEventPhaseBegan:I = 0x0

.field public static final TouchEventPhaseCancelled:I = 0x4

.field public static final TouchEventPhaseEnded:I = 0x3

.field public static final TouchEventPhaseMoved:I = 0x1

.field public static final TouchEventPhaseStationary:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "lua"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 96
    const-string v0, "jnlua5.1"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 98
    const-string v0, "mpg123"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 99
    const-string v0, "vorbisidec"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 100
    const-string v0, "almixer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 101
    const-string v0, "corona"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized accelerometerEvent(DDDD)V
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "deltaTime"    # D

    .prologue
    .line 237
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/ansca/corona/JavaToNativeShim;->nativeAccelerometerEvent(DDDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit v0

    return-void

    .line 237
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized adRequestEvent(Z)V
    .locals 2
    .param p0, "isError"    # Z

    .prologue
    .line 326
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeAdsRequestEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit v0

    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized alertCallback(IZ)V
    .locals 2
    .param p0, "buttonIndex"    # I
    .param p1, "cancelled"    # Z

    .prologue
    .line 255
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeAlertCallback(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized applicationOpenEvent()V
    .locals 2

    .prologue
    .line 129
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeApplicationOpenEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized convertCoronaPointToAndroidPoint(II)Landroid/graphics/Point;
    .locals 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 174
    const-class v4, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v4

    const/4 v2, 0x0

    .line 176
    .local v2, "result":Landroid/graphics/Point;
    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeConvertCoronaPointToAndroidPoint(II)Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v3, v1, Landroid/graphics/Point;

    if-eqz v3, :cond_0

    .line 179
    move-object v0, v1

    check-cast v0, Landroid/graphics/Point;

    move-object v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :cond_0
    monitor-exit v4

    return-object v2

    .line 174
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized creditsRequestEvent(II)V
    .locals 2
    .param p0, "newPoints"    # I
    .param p1, "totalPoints"    # I

    .prologue
    .line 321
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeCreditsRequestEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    monitor-exit v0

    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    .prologue
    .line 202
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeDone()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit v0

    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dispatchEventInLua()V
    .locals 2

    .prologue
    .line 124
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeDispatchEventInLua()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit v0

    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized fbConnectRequestEvent(Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "isError"    # Z
    .param p2, "didComplete"    # I

    .prologue
    .line 311
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeFBConnectRequestEvent(Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit v0

    return-void

    .line 311
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized fbConnectSessionEvent(ILjava/lang/String;J)V
    .locals 2
    .param p0, "phase"    # I
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "accessTokenExpirationTimestamp"    # J

    .prologue
    .line 301
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeFBConnectSessionEvent(ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit v0

    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized fbConnectSessionEventError(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeFBConnectSessionEventError(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit v0

    return-void

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getContentHeightInPixels()I
    .locals 2

    .prologue
    .line 169
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetContentHeightInPixels()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getContentWidthInPixels()I
    .locals 2

    .prologue
    .line 164
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetContentWidthInPixels()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getHorizontalMarginInPixels()I
    .locals 2

    .prologue
    .line 154
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetHorizontalMarginInPixels()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getMaxTextureSize()I
    .locals 2

    .prologue
    .line 149
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetMaxTextureSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetVersion()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getVerticalMarginInPixels()I
    .locals 2

    .prologue
    .line 159
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeGetVerticalMarginInPixels()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized gyroscopeEvent(DDDD)V
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "deltaTime"    # D

    .prologue
    .line 242
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/ansca/corona/JavaToNativeShim;->nativeGyroscopeEvent(DDDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit v0

    return-void

    .line 242
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized imagePickerEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "selectedImageFileName"    # Ljava/lang/String;

    .prologue
    .line 331
    const-class v1, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 332
    :try_start_0
    const-string p0, ""

    .line 334
    :cond_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeImagePickerEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit v1

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init()V
    .locals 2

    .prologue
    .line 134
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit v0

    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized keyEvent(ILjava/lang/String;)Z
    .locals 2
    .param p0, "phase"    # I
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 232
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeKeyEvent(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized locationEvent(DDDDDDD)V
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "altitude"    # D
    .param p6, "accuracy"    # D
    .param p8, "speed"    # D
    .param p10, "bearing"    # D
    .param p12, "time"    # D

    .prologue
    .line 247
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p13}, Lcom/ansca/corona/JavaToNativeShim;->nativeLocationEvent(DDDDDDD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    monitor-exit v0

    return-void

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized mapAddressReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "street"    # Ljava/lang/String;
    .param p1, "streetDetails"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "cityDetails"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;
    .param p5, "regionDetails"    # Ljava/lang/String;
    .param p6, "postalCode"    # Ljava/lang/String;
    .param p7, "country"    # Ljava/lang/String;
    .param p8, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 377
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p8}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapAddressReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit v0

    return-void

    .line 377
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized mapAddressRequestFailedEvent(Ljava/lang/String;)V
    .locals 2
    .param p0, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 384
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeMapAddressRequestFailedEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit v0

    return-void

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized memoryWarningEvent()V
    .locals 2

    .prologue
    .line 339
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeMemoryWarningEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit v0

    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized multitouchEventCallback([Ljava/lang/Object;)V
    .locals 2
    .param p0, "touches"    # [Ljava/lang/Object;

    .prologue
    .line 280
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeMultitouchEventCallback([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit v0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native nativeAccelerometerEvent(DDDD)V
.end method

.method private static native nativeAdsRequestEvent(Z)V
.end method

.method private static native nativeAlertCallback(IZ)V
.end method

.method private static native nativeApplicationOpenEvent()V
.end method

.method private static native nativeConvertCoronaPointToAndroidPoint(II)Ljava/lang/Object;
.end method

.method private static native nativeCreditsRequestEvent(II)V
.end method

.method private static native nativeDispatchEventInLua()V
.end method

.method private static native nativeDone()V
.end method

.method private static native nativeFBConnectRequestEvent(Ljava/lang/String;ZI)V
.end method

.method private static native nativeFBConnectSessionEvent(ILjava/lang/String;J)V
.end method

.method private static native nativeFBConnectSessionEventError(Ljava/lang/String;)V
.end method

.method private static native nativeGetContentHeightInPixels()I
.end method

.method private static native nativeGetContentWidthInPixels()I
.end method

.method private static native nativeGetHorizontalMarginInPixels()I
.end method

.method private static native nativeGetMaxTextureSize()I
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private static native nativeGetVerticalMarginInPixels()I
.end method

.method private static native nativeGyroscopeEvent(DDDD)V
.end method

.method private static native nativeImagePickerEvent(Ljava/lang/String;)V
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeKeyEvent(ILjava/lang/String;)Z
.end method

.method private static native nativeLocationEvent(DDDDDDD)V
.end method

.method private static native nativeMapAddressReceivedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeMapAddressRequestFailedEvent(Ljava/lang/String;)V
.end method

.method private static native nativeMemoryWarningEvent()V
.end method

.method private static native nativeMultitouchEventCallback([Ljava/lang/Object;)V
.end method

.method private static native nativeNetworkRequestEvent(ILjava/lang/String;ZILjava/lang/String;)V
.end method

.method private static native nativeOrientationChanged(II)V
.end method

.method private static native nativePause()V
.end method

.method private static native nativePopupClosedEvent(Ljava/lang/String;Z)V
.end method

.method private static native nativeRecordCallback(II)V
.end method

.method private static native nativeReinitializeRenderer()V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeResize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end method

.method private static native nativeResume()V
.end method

.method private static native nativeSoundEndCallback(I)V
.end method

.method private static native nativeStoreTransactionEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeTapEvent(III)V
.end method

.method private static native nativeTextEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeTextEvent(IZZ)V
.end method

.method private static native nativeTouchEvent(IIIIIJI)V
.end method

.method private static native nativeUnloadResources()V
.end method

.method private static native nativeUseDefaultLuaErrorHandler()V
.end method

.method private static native nativeUseJavaLuaErrorHandler()V
.end method

.method private static native nativeVideoEndCallback(I)V
.end method

.method private static native nativeWebViewDidFailLoadUrl(ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method private static native nativeWebViewFinishedLoadUrl(ILjava/lang/String;)V
.end method

.method private static native nativeWebViewHistoryUpdated(IZZ)V
.end method

.method private static native nativeWebViewShouldLoadUrl(ILjava/lang/String;I)V
.end method

.method public static declared-synchronized networkRequestEvent(ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 2
    .param p0, "listenerId"    # I
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "isError"    # Z
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "statusCode"    # I

    .prologue
    .line 316
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, p4, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeNetworkRequestEvent(ILjava/lang/String;ZILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit v0

    return-void

    .line 316
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized orientationChanged(II)V
    .locals 2
    .param p0, "newOrientation"    # I
    .param p1, "oldOrientation"    # I

    .prologue
    .line 251
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeOrientationChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit v0

    return-void

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized pause()V
    .locals 2

    .prologue
    .line 114
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativePause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    return-void

    .line 114
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized popupClosedEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "popupName"    # Ljava/lang/String;
    .param p1, "wasCanceled"    # Z

    .prologue
    .line 344
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativePopupClosedEvent(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    monitor-exit v0

    return-void

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized recordCallback(II)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "status"    # I

    .prologue
    .line 267
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeRecordCallback(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit v0

    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized reinitializeRenderer()V
    .locals 2

    .prologue
    .line 144
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeReinitializeRenderer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v0

    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized render()V
    .locals 2

    .prologue
    .line 139
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v0

    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized resize(Landroid/content/Context;IILcom/ansca/corona/WindowOrientation;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # Lcom/ansca/corona/WindowOrientation;

    .prologue
    .line 210
    const-class v9, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v9

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getDocumentsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getTemporaryDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/ansca/corona/CoronaEnvironment;->getInternalCachesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/ansca/corona/FileServices;->getExpansionFileDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lcom/ansca/corona/WindowOrientation;->toCoronaIntegerId()I

    move-result v8

    move v6, p1

    move v7, p2

    invoke-static/range {v0 .. v8}, Lcom/ansca/corona/JavaToNativeShim;->nativeResize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit v9

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method

.method public static declared-synchronized resume()V
    .locals 2

    .prologue
    .line 119
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized soundEndCallback(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 259
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeSoundEndCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit v0

    return-void

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized storeTransactionEvent(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
    .locals 12
    .param p0, "result"    # Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    .prologue
    .line 351
    const-class v11, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v11

    if-nez p0, :cond_0

    .line 371
    :goto_0
    monitor-exit v11

    return-void

    .line 356
    :cond_0
    :try_start_0
    const-string v7, ""

    .line 357
    .local v7, "transactionTimeString":Ljava/lang/String;
    const-string v10, ""

    .line 358
    .local v10, "originalTransactionTimeString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->hasTransactionTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getTransactionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v7

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->hasOriginalTransactionTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalTransactionTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v10

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getState()Lcom/ansca/corona/purchasing/StoreTransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/purchasing/StoreTransactionState;->toValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getErrorType()Lcom/ansca/corona/purchasing/StoreTransactionErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreTransactionErrorType;->toValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getReceipt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getTransactionStringId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalReceipt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;->getOriginalTransactionStringId()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v10}, Lcom/ansca/corona/JavaToNativeShim;->nativeStoreTransactionEvent(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 351
    .end local v7    # "transactionTimeString":Ljava/lang/String;
    .end local v10    # "originalTransactionTimeString":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public static declared-synchronized tapEvent(III)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "count"    # I

    .prologue
    .line 222
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeTapEvent(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit v0

    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized textEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "startPos"    # I
    .param p2, "numDeleted"    # I
    .param p3, "newCharacters"    # Ljava/lang/String;
    .param p4, "oldString"    # Ljava/lang/String;
    .param p5, "newString"    # Ljava/lang/String;

    .prologue
    .line 275
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/ansca/corona/JavaToNativeShim;->nativeTextEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    monitor-exit v0

    return-void

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized textEvent(IZZ)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "hasFocus"    # Z
    .param p2, "isDone"    # Z

    .prologue
    .line 271
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeTextEvent(IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit v0

    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized touchEvent(IIIIIJI)V
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "xStart"    # I
    .param p3, "yStart"    # I
    .param p4, "type"    # I
    .param p5, "timestamp"    # J
    .param p7, "id"    # I

    .prologue
    .line 227
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static/range {p0 .. p7}, Lcom/ansca/corona/JavaToNativeShim;->nativeTouchEvent(IIIIIJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit v0

    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unloadResources()V
    .locals 2

    .prologue
    .line 197
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeUnloadResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v0

    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized useDefaultLuaErrorHandler()V
    .locals 2

    .prologue
    .line 187
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeUseDefaultLuaErrorHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized useJavaLuaErrorHandler()V
    .locals 2

    .prologue
    .line 192
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->nativeUseJavaLuaErrorHandler()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v0

    return-void

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized videoEndCallback(I)V
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 263
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/ansca/corona/JavaToNativeShim;->nativeVideoEndCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit v0

    return-void

    .line 263
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized webViewDidFailLoadUrl(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "code"    # I

    .prologue
    .line 292
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewDidFailLoadUrl(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v0

    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized webViewFinishedLoadUrl(ILjava/lang/String;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 288
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewFinishedLoadUrl(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit v0

    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized webViewHistoryUpdated(IZZ)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "canGoBack"    # Z
    .param p2, "canGoForward"    # Z

    .prologue
    .line 296
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewHistoryUpdated(IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit v0

    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized webViewShouldLoadUrl(ILjava/lang/String;I)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "sourceType"    # I

    .prologue
    .line 284
    const-class v0, Lcom/ansca/corona/JavaToNativeShim;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/ansca/corona/JavaToNativeShim;->nativeWebViewShouldLoadUrl(ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit v0

    return-void

    .line 284
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
