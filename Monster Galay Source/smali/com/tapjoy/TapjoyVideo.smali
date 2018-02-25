.class public Lcom/tapjoy/TapjoyVideo;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"


# static fields
.field private static final BACKGROUND_FILE_NAME:Ljava/lang/String; = "background"

.field private static final BACKGROUND_PLACEHOLDER_NAME:Ljava/lang/String; = "default"

.field private static final BACKGROUND_WATERMARK_NAME:Ljava/lang/String; = "watermark"

.field public static final TAPJOY_VIDEO:Ljava/lang/String; = "TapjoyVideo"

.field public static imageBackgroundLocation:Ljava/lang/String; = null

.field private static final imageBackgroundUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

.field public static imagePlaceholderLocation:Ljava/lang/String; = null

.field private static final imagePlaceholderUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/default.png"

.field public static imageTapjoyLocation:Ljava/lang/String; = null

.field private static final imageTapjoyUrl:Ljava/lang/String; = "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

.field private static tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

.field private static tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;


# instance fields
.field private cachedVideos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TapjoyVideoObject;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private imageCacheDir:Ljava/lang/String;

.field private imageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uncachedImages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uncachedVideos:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TapjoyVideoObject;",
            ">;"
        }
    .end annotation
.end field

.field private videoCacheDir:Ljava/lang/String;

.field private videoCacheLimit:I

.field private videoQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public videoToPlay:Lcom/tapjoy/TapjoyVideoObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    .line 78
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    .line 79
    sput-object p0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    .line 80
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideo;->handleGetVideosResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyVideo;->cacheImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$5(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    return-void
.end method

.method static synthetic access$6()Lcom/tapjoy/TapjoyVideoNotifier;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    return-object v0
.end method

.method static synthetic access$7(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    return-object v0
.end method

.method private cacheImage(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cacheImage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideo$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyVideo$3;-><init>(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 834
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 835
    return-void
.end method

.method private cacheVideo(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 579
    const-string v0, "TapjoyVideo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download and cache video from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideo$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/TapjoyVideo$2;-><init>(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 709
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 710
    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyVideo;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideo:Lcom/tapjoy/TapjoyVideo;

    return-object v0
.end method

.method public static getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;
    .locals 1

    .prologue
    .line 569
    sget-object v0, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    return-object v0
.end method

.method private handleGetVideosResponse(Ljava/lang/String;)Z
    .locals 24
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    .line 337
    .local v9, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const-string v21, "TapjoyVideo"

    const-string v22, "========================================"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :try_start_0
    new-instance v11, Ljava/io/ByteArrayInputStream;

    const-string v21, "UTF-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 344
    .local v11, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    .line 345
    .local v6, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v6, v11}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 348
    .local v5, "document":Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Element;->normalize()V

    .line 350
    const-string v21, "TapjoyVideos"

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 351
    .local v17, "nodelistParent":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 354
    .local v16, "nodelist":Lorg/w3c/dom/NodeList;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "nodelistParent length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "nodelist length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    move/from16 v0, v21

    if-lt v10, v0, :cond_0

    .line 453
    const-string v21, "TapjoyVideo"

    const-string v22, "========================================"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/16 v21, 0x1

    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "i":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    :goto_1
    return v21

    .line 359
    .restart local v5    # "document":Lorg/w3c/dom/Document;
    .restart local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "i":I
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .restart local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    :cond_0
    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    .line 362
    .local v15, "node":Lorg/w3c/dom/Node;
    new-instance v20, Lcom/tapjoy/TapjoyVideoObject;

    invoke-direct/range {v20 .. v20}, Lcom/tapjoy/TapjoyVideoObject;-><init>()V

    .line 364
    .local v20, "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    if-eqz v15, :cond_8

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 366
    move-object v0, v15

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .line 369
    .local v8, "element":Lorg/w3c/dom/Element;
    const-string v21, "ClickURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 370
    .local v19, "value":Ljava/lang/String;
    if-eqz v19, :cond_1

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 371
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    .line 373
    :cond_1
    const-string v21, "OfferID"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 374
    if-eqz v19, :cond_2

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 375
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    .line 377
    :cond_2
    const-string v21, "Name"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 378
    if-eqz v19, :cond_3

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 379
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    .line 381
    :cond_3
    const-string v21, "Amount"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 382
    if-eqz v19, :cond_4

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 383
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    .line 385
    :cond_4
    const-string v21, "CurrencyName"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 386
    if-eqz v19, :cond_5

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 387
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    .line 389
    :cond_5
    const-string v21, "VideoURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 390
    if-eqz v19, :cond_6

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 391
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 393
    :cond_6
    const-string v21, "IconURL"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v19

    .line 394
    if-eqz v19, :cond_7

    const-string v21, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 395
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    .line 397
    :cond_7
    const-string v21, "TapjoyVideo"

    const-string v22, "-----"

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.clickURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.offerID: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.videoAdName: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.currencyAmount: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.currencyName: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.videoURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "videoObject.iconURL: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v21, "Buttons"

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 407
    .local v3, "buttonData":Lorg/w3c/dom/NodeList;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 412
    .local v12, "itemNodeList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_9

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    .line 357
    .end local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v19    # "value":Ljava/lang/String;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 415
    .restart local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .restart local v8    # "element":Lorg/w3c/dom/Element;
    .restart local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "j":I
    .restart local v19    # "value":Ljava/lang/String;
    :cond_9
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 418
    .local v4, "child":Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    if-eqz v21, :cond_a

    .line 426
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 428
    .local v14, "name":Ljava/lang/String;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "name: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 434
    .local v18, "url":Ljava/lang/String;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "url: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/tapjoy/TapjoyVideoObject;->addButton(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    .end local v14    # "name":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 447
    .end local v3    # "buttonData":Lorg/w3c/dom/NodeList;
    .end local v4    # "child":Lorg/w3c/dom/NodeList;
    .end local v5    # "document":Lorg/w3c/dom/Document;
    .end local v6    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "element":Lorg/w3c/dom/Element;
    .end local v10    # "i":I
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "itemNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "j":I
    .end local v15    # "node":Lorg/w3c/dom/Node;
    .end local v16    # "nodelist":Lorg/w3c/dom/NodeList;
    .end local v17    # "nodelistParent":Lorg/w3c/dom/NodeList;
    .end local v19    # "value":Ljava/lang/String;
    .end local v20    # "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    :catch_0
    move-exception v7

    .line 449
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "TapjoyVideo"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Error parsing XML: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/16 v21, 0x0

    goto/16 :goto_1
.end method

.method private setVideoIDs()V
    .locals 6

    .prologue
    .line 843
    const-string v2, ""

    .line 845
    .local v2, "videoIDs":Ljava/lang/String;
    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 847
    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 849
    .local v1, "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_2

    .line 858
    const-string v3, "TapjoyVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cachedVideos size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    .end local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    const-string v3, "TapjoyVideo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "videoIDs: ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->setVideoIDs(Ljava/lang/String;)V

    .line 863
    return-void

    .line 851
    .restart local v1    # "keys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 852
    .local v0, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 854
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getCurrentVideoData()Lcom/tapjoy/TapjoyVideoObject;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    return-object v0
.end method

.method public initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
    .locals 5
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyVideoNotifier;

    .prologue
    const/4 v4, 0x1

    .line 109
    const-string v1, "TapjoyVideo"

    const-string v2, "initVideoAd"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-nez p1, :cond_0

    .line 113
    const-string v1, "TapjoyVideo"

    const-string v2, "Error during initVideoAd -- TapjoyVideoNotifier is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 117
    :cond_0
    sput-object p1, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tjcache/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheDir:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/tjcache/tmp/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/tapjoy/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 128
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    .line 129
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    .line 130
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    .line 133
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    .line 134
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/default.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 136
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->imageQueue:Ljava/util/Vector;

    const-string v2, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    .line 139
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "background"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/background.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "default"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/default.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedImages:Ljava/util/Hashtable;

    const-string v2, "watermark"

    const-string v3, "https://s3.amazonaws.com/tapjoy/videos/assets/watermark.png"

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "background"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imageBackgroundLocation:Ljava/lang/String;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imagePlaceholderLocation:Ljava/lang/String;

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->imageCacheDir:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "watermark"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tapjoy/TapjoyVideo;->imageTapjoyLocation:Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideo;->setVideoIDs()V

    .line 150
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 154
    const-string v1, "TapjoyVideo"

    const-string v2, "Media storage unavailable."

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v1, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    invoke-interface {v1, v4}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    goto/16 :goto_0

    .line 162
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tapjoy/TapjoyVideo$1;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideo$1;-><init>(Lcom/tapjoy/TapjoyVideo;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 321
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 323
    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->setVideoEnabled(Z)V

    goto/16 :goto_0
.end method

.method public loadNextVideo()V
    .locals 4

    .prologue
    .line 546
    const-string v1, "TapjoyVideo"

    const-string v2, "++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v1, "TapjoyVideo"

    const-string v2, "LOAD NEXT VIDEO"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "videoQueue size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uncachedVideos size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v1, "TapjoyVideo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cachedVideos size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideo;->videoQueue:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TapjoyVideoObject;

    iget-object v0, v1, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    .line 556
    .local v0, "url":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/tapjoy/TapjoyVideo;->cacheVideo(Ljava/lang/String;)V

    .line 559
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "TapjoyVideo"

    const-string v2, "++++++++++++++++++++++++++++++++++++++++"

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public setVideoCacheCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/tapjoy/TapjoyVideo;->videoCacheLimit:I

    .line 100
    return-void
.end method

.method public startVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "videoID"    # Ljava/lang/String;
    .param p2, "currencyName"    # Ljava/lang/String;
    .param p3, "currencyAmount"    # Ljava/lang/String;
    .param p4, "clickURL"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 474
    const/4 v0, 0x1

    .line 475
    .local v0, "cachedVideo":Z
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Starting video activity with video: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->cachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TapjoyVideoObject;

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    .line 479
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "state":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 484
    const-string v4, "TapjoyVideo"

    const-string v7, "Cannot access external storage"

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget-object v4, Lcom/tapjoy/TapjoyVideo;->tapjoyVideoNotifier:Lcom/tapjoy/TapjoyVideoNotifier;

    invoke-interface {v4, v6}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    move v4, v5

    .line 537
    :goto_0
    return v4

    .line 492
    :cond_0
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    if-nez v4, :cond_2

    .line 494
    const-string v4, "TapjoyVideo"

    const-string v7, "video not cached... checking uncached videos"

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->uncachedVideos:Ljava/util/Hashtable;

    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/TapjoyVideoObject;

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    .line 498
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    if-nez v4, :cond_1

    .line 500
    const-string v4, "TapjoyVideo"

    const-string v6, "null video object? aborting."

    invoke-static {v4, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 501
    goto :goto_0

    .line 504
    :cond_1
    const/4 v0, 0x0

    .line 507
    :cond_2
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p2, v4, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    .line 508
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p3, v4, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    .line 509
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iput-object p4, v4, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    .line 511
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "videoToPlay: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyVideoObject;->offerID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "amount: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "currency: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clickURL: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyVideoObject;->clickURL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v4, "TapjoyVideo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "location: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v8, v8, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v4, v4, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 520
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->videoToPlay:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v4, v4, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v2, "video":Ljava/io/File;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 525
    :cond_3
    const-string v4, "TapjoyVideo"

    const-string v6, "video file does not exist."

    invoke-static {v4, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 526
    goto/16 :goto_0

    .line 530
    .end local v2    # "video":Ljava/io/File;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    const-class v5, Lcom/tapjoy/TapjoyVideoView;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 531
    .local v3, "videoIntent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 534
    const-string v4, "VIDEO_PATH"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v6

    .line 537
    goto/16 :goto_0
.end method
