.class Lcom/millennialmedia/android/HandShake;
.super Ljava/lang/Object;
.source "HandShake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/HandShake$AdTypeHandShake;,
        Lcom/millennialmedia/android/HandShake$Scheme;
    }
.end annotation


# static fields
.field private static final HANDSHAKE_URL:Ljava/lang/String; = "http://ads.mp.mydas.mobi/"

.field private static final HANDSHAKE_URL_PARMS:Ljava/lang/String; = "appConfigServlet?apid="

.field static apid:Ljava/lang/String;

.field private static forceRefresh:Z

.field private static overrideHandShakeURL:Ljava/lang/String;

.field private static sharedInstance:Lcom/millennialmedia/android/HandShake;


# instance fields
.field private adTypeHandShakes:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/millennialmedia/android/HandShake$AdTypeHandShake;",
            ">;"
        }
    .end annotation
.end field

.field private appContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cachedVideos:[Ljava/lang/String;

.field private contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field creativeCacheTimeout:J

.field private deferredViewTimeout:J

.field private handShakeCallback:J

.field private final handler:Landroid/os/Handler;

.field hdid:Z

.field kill:Z

.field private lastHandShake:J

.field mmdid:Ljava/lang/String;

.field private schemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/millennialmedia/android/HandShake$Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private schemesList:Ljava/lang/String;

.field private updateHandShakeRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 57
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 61
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 67
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 270
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 217
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    .line 57
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 59
    iput-boolean v4, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 61
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 67
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 270
    new-instance v0, Lcom/millennialmedia/android/HandShake$2;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake$2;-><init>(Lcom/millennialmedia/android/HandShake;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;

    .line 226
    sget-boolean v0, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->loadHandShake(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 228
    :cond_0
    sput-boolean v4, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 231
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/millennialmedia/android/HandShake$1;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/HandShake$1;-><init>(Lcom/millennialmedia/android/HandShake;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/HandShake;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->appContextRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/millennialmedia/android/HandShake;->overrideHandShakeURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/HandShake;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$500(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/HandShake;->saveHandShake(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lcom/millennialmedia/android/HandShake;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/millennialmedia/android/HandShake;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/millennialmedia/android/HandShake;)J
    .locals 2
    .param p0, "x0"    # Lcom/millennialmedia/android/HandShake;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    return-wide v0
.end method

.method private deserializeFromObj(Lorg/json/JSONObject;)V
    .locals 16
    .param p1, "handShakeObject"    # Lorg/json/JSONObject;

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 509
    .local v4, "context":Landroid/content/Context;
    if-nez p1, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    :try_start_0
    const-string v12, "errors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 516
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-eqz v7, :cond_4

    .line 518
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_4

    .line 520
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 521
    .local v8, "jsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 523
    const-string v12, "message"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 524
    .local v9, "message":Ljava/lang/String;
    const-string v12, "type"

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 525
    .local v11, "type":Ljava/lang/String;
    if-eqz v9, :cond_2

    if-eqz v11, :cond_2

    .line 527
    const-string v12, "log"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 529
    invoke-static {v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 518
    .end local v9    # "message":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 531
    .restart local v9    # "message":Ljava/lang/String;
    .restart local v11    # "type":Ljava/lang/String;
    :cond_3
    const-string v12, "prompt"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    new-instance v13, Lcom/millennialmedia/android/HandShake$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v9}, Lcom/millennialmedia/android/HandShake$3;-><init>(Lcom/millennialmedia/android/HandShake;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 630
    .end local v6    # "i":I
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .end local v9    # "message":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 632
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 567
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "jsonArray":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string v12, "adtypes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 568
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    if-eqz v8, :cond_6

    .line 571
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "adTypes":[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    array-length v12, v3

    if-ge v6, v12, :cond_6

    .line 575
    aget-object v12, v3, v6

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 576
    .local v2, "adTypeObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_5

    .line 578
    new-instance v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 579
    .local v1, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 581
    aget-object v12, v3, v6

    invoke-virtual {v1, v4, v12}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->loadLastVideo(Landroid/content/Context;Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    aget-object v13, v3, v6

    invoke-virtual {v12, v13, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .end local v1    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 587
    .end local v2    # "adTypeObject":Lorg/json/JSONObject;
    .end local v3    # "adTypes":[Ljava/lang/String;
    .end local v6    # "i":I
    :cond_6
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    :try_start_2
    const-string v12, "schemes"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 590
    if-eqz v7, :cond_9

    .line 592
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_7

    .line 593
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 594
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_9

    .line 596
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 597
    if-eqz v8, :cond_8

    .line 599
    new-instance v10, Lcom/millennialmedia/android/HandShake$Scheme;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 600
    .local v10, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v10, v8}, Lcom/millennialmedia/android/HandShake$Scheme;->deserializeFromObj(Lorg/json/JSONObject;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v10    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 605
    .end local v6    # "i":I
    :cond_9
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 608
    :try_start_3
    const-string v12, "deferredviewtimeout"

    const-wide/16 v13, 0xe10

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 609
    const-string v12, "kill"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 610
    const-string v12, "handshakecallback"

    const-wide/32 v13, 0x15180

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 611
    const-string v12, "hdid"

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 612
    const-string v12, "creativeCacheTimeout"

    const-wide/32 v13, 0x3f480

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 614
    const-string v12, "cachedVideos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 615
    if-eqz v7, :cond_a

    .line 617
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 618
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v6, v12, :cond_b

    .line 619
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 618
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 605
    .end local v6    # "i":I
    :catchall_0
    move-exception v12

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12

    .line 623
    :cond_a
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 626
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    array-length v12, v12

    if-lez v12, :cond_0

    .line 627
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    invoke-static {v12, v4}, Lcom/millennialmedia/android/PreCacheWorker;->preCacheVideos([Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private loadHandShake(Landroid/content/Context;)Z
    .locals 26
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 638
    const/4 v15, 0x0

    .line 639
    .local v15, "settingsFound":Z
    const-string v18, "MillennialMediaSettings"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 641
    .local v14, "settings":Landroid/content/SharedPreferences;
    if-nez v14, :cond_0

    .line 642
    const/16 v18, 0x0

    .line 739
    :goto_0
    return v18

    .line 645
    :cond_0
    const-string v18, "handshake_deferredviewtimeout"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 647
    const-string v18, "handshake_deferredviewtimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    .line 648
    const/4 v15, 0x1

    .line 650
    :cond_1
    const-string v18, "handshake_kill"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 652
    const-string v18, "handshake_kill"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->kill:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->kill:Z

    .line 653
    const/4 v15, 0x1

    .line 655
    :cond_2
    const-string v18, "handshake_callback"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 657
    const-string v18, "handshake_callback"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    .line 658
    const/4 v15, 0x1

    .line 660
    :cond_3
    const-string v18, "handshake_hdid"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 662
    const-string v18, "handshake_hdid"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/millennialmedia/android/HandShake;->hdid:Z

    .line 663
    const/4 v15, 0x1

    .line 665
    :cond_4
    const-string v18, "handshake_mmdid"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 667
    const-string v18, "handshake_mmdid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 668
    const/4 v15, 0x1

    .line 670
    :cond_5
    const-string v18, "handshake_creativecachetimeout"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 672
    const-string v18, "handshake_creativecachetimeout"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    .line 673
    const/4 v15, 0x1

    .line 677
    :cond_6
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v5

    .line 678
    .local v5, "adTypes":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 680
    new-instance v4, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;-><init>(Lcom/millennialmedia/android/HandShake;)V

    .line 681
    .local v4, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    aget-object v18, v5, v7

    move-object/from16 v0, v18

    invoke-virtual {v4, v14, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->load(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 683
    const/4 v15, 0x1

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    aget-object v19, v5, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 688
    .end local v4    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_8
    monitor-enter p0

    .line 690
    :try_start_0
    const-string v18, "handshake_schemes"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 692
    const-string v18, "handshake_schemes"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 693
    .local v13, "schemesStr":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_b

    .line 695
    const-string v18, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 696
    .local v12, "schemeStrings":[Ljava/lang/String;
    move-object v6, v12

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_2
    if-ge v8, v9, :cond_a

    aget-object v16, v6, v8

    .line 698
    .local v16, "str":Ljava/lang/String;
    const-string v18, "\t"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 699
    .local v10, "parts":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 701
    new-instance v11, Lcom/millennialmedia/android/HandShake$Scheme;

    const/16 v18, 0x0

    aget-object v18, v10, v18

    const/16 v19, 0x1

    aget-object v19, v10, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v11, v0, v1, v2}, Lcom/millennialmedia/android/HandShake$Scheme;-><init>(Lcom/millennialmedia/android/HandShake;Ljava/lang/String;I)V

    .line 702
    .local v11, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v11    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 705
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :cond_a
    const/4 v15, 0x1

    .line 708
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    .end local v12    # "schemeStrings":[Ljava/lang/String;
    .end local v13    # "schemesStr":Ljava/lang/String;
    :cond_b
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    const-string v18, "handshake_cachedvideos"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 713
    const-string v18, "handshake_cachedvideos"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 714
    .local v17, "videos":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_c

    .line 716
    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 719
    .end local v17    # "videos":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_d

    .line 720
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    .line 723
    :cond_d
    const-string v18, "handshake_lasthandshake"

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 725
    const-string v18, "handshake_lasthandshake"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    .line 726
    const/4 v15, 0x1

    .line 729
    :cond_e
    if-eqz v15, :cond_10

    .line 731
    const-string v18, "Handshake successfully loaded from shared preferences."

    invoke-static/range {v18 .. v18}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_f

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->handler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->updateHandShakeRunnable:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    move-wide/from16 v20, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    sub-long v20, v20, v22

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 736
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_10

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/PreCacheWorker;->preCacheVideos([Ljava/lang/String;Landroid/content/Context;)V

    :cond_10
    move/from16 v18, v15

    .line 739
    goto/16 :goto_0

    .line 708
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18
.end method

.method private parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 481
    const-string v2, "JSON String: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    if-eqz p1, :cond_0

    .line 486
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 487
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 488
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    const-string v2, "mmishake"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 496
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 491
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 496
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private saveHandShake(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 746
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 747
    .local v6, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 750
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "handshake_deferredviewtimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->deferredViewTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 751
    const-string v8, "handshake_kill"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->kill:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 752
    const-string v8, "handshake_callback"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 753
    const-string v8, "handshake_hdid"

    iget-boolean v9, p0, Lcom/millennialmedia/android/HandShake;->hdid:Z

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 754
    const-string v8, "handshake_creativecaetimeout"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->creativeCacheTimeout:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 757
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 759
    .local v0, "adType":Ljava/lang/String;
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 760
    .local v1, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "adType":Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->save(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    goto :goto_0

    .line 764
    .end local v1    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    monitor-enter p0

    .line 766
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .local v7, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 769
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 770
    .local v5, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    if-lez v3, :cond_1

    .line 771
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 774
    .end local v5    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    const-string v8, "handshake_schemes"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 775
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 779
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_2
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_4

    .line 781
    if-lez v3, :cond_3

    .line 782
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_3
    iget-object v8, p0, Lcom/millennialmedia/android/HandShake;->cachedVideos:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 775
    .end local v3    # "i":I
    .end local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 785
    .restart local v3    # "i":I
    .restart local v7    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 786
    const-string v8, "handshake_cachedvideos"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 789
    :cond_5
    const-string v8, "handshake_lasthandshake"

    iget-wide v9, p0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    invoke-interface {v2, v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 791
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 792
    return-void
.end method

.method static declared-synchronized setHandShakeURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "appConfigServlet?apid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/HandShake;->overrideHandShakeURL:Ljava/lang/String;

    .line 98
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/millennialmedia/android/HandShake;->forceRefresh:Z

    .line 99
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v1

    return-void

    .line 95
    :cond_0
    :try_start_1
    const-string v0, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    sput-object v0, Lcom/millennialmedia/android/HandShake;->overrideHandShakeURL:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const-class v1, Lcom/millennialmedia/android/HandShake;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "No apid set for the handshake."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v0, 0x0

    .line 87
    :goto_0
    monitor-exit v1

    return-object v0

    .line 78
    :cond_0
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    if-nez v0, :cond_2

    .line 80
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    .line 87
    :cond_1
    :goto_1
    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->lastHandShake:J

    sub-long/2addr v2, v4

    sget-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;

    iget-wide v4, v0, Lcom/millennialmedia/android/HandShake;->handShakeCallback:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 84
    const-string v0, "Handshake expired, requesting new handshake from the server."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/millennialmedia/android/HandShake;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/HandShake;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/millennialmedia/android/HandShake;->sharedInstance:Lcom/millennialmedia/android/HandShake;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method declared-synchronized canDisplayCachedAd(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;
    .param p2, "cachedTime"    # J

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 133
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2, p3}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canDisplayCachedAd(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 135
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 132
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 114
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->canRequestVideo(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 118
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 310
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 312
    iget-object v4, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 314
    .local v2, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 319
    .local v3, "schemeObject":Lorg/json/JSONObject;
    const-string v4, "scheme"

    iget-object v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->scheme:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v4, "schemeid"

    iget v5, v2, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 321
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 323
    .end local v3    # "schemeObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 329
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_1
    monitor-exit p0

    return-object v0

    .line 309
    .end local v0    # "array":Lorg/json/JSONArray;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized getSchemesList(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 287
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/HandShake$Scheme;

    .line 292
    .local v1, "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/HandShake$Scheme;->checkAvailability(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 285
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 297
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    .restart local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    iget v3, v1, Lcom/millennialmedia/android/HandShake$Scheme;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    .end local v1    # "scheme":Lcom/millennialmedia/android/HandShake$Scheme;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;

    .line 304
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->schemesList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method declared-synchronized isAdTypeDownloading(Ljava/lang/String;)Z
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 158
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 159
    iget-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 157
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized lockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 168
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 167
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V
    .locals 3
    .param p1, "adView"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 184
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 187
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->refreshInterval:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 190
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :cond_0
    return-void
.end method

.method setMMdid(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newMMdid"    # Ljava/lang/String;

    .prologue
    .line 194
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 195
    return-void
.end method

.method declared-synchronized setMMdid(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newMMdid"    # Ljava/lang/String;
    .param p3, "persist"    # Z

    .prologue
    .line 199
    monitor-enter p0

    if-eqz p2, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NULL"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK;->setMMdid(Ljava/lang/String;)V

    .line 206
    if-eqz p3, :cond_1

    .line 208
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 209
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 210
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "handshake_mmdid"

    iget-object v3, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_1
    monitor-exit p0

    return-void

    .line 202
    :cond_2
    :try_start_1
    iput-object p2, p0, Lcom/millennialmedia/android/HandShake;->mmdid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized unlockAdTypeDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 177
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->downloading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    .line 176
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adType"    # Ljava/lang/String;

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/HandShake;->adTypeHandShakes:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;

    .line 149
    .local v0, "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/HandShake$AdTypeHandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 148
    .end local v0    # "adTypeHandShake":Lcom/millennialmedia/android/HandShake$AdTypeHandShake;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
