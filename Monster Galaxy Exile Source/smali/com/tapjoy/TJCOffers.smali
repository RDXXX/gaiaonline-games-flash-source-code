.class public Lcom/tapjoy/TJCOffers;
.super Ljava/lang/Object;
.source "TJCOffers.java"


# static fields
.field public static final TAPJOY_OFFERS:Ljava/lang/String; = "TapjoyOffers"

.field public static final TAPJOY_POINTS:Ljava/lang/String; = "TapjoyPoints"

.field private static tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

.field private static tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

.field private static tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

.field private static tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;


# instance fields
.field awardTapPoints:I

.field context:Landroid/content/Context;

.field private multipleCurrencyID:Ljava/lang/String;

.field private multipleCurrencySelector:Ljava/lang/String;

.field spendTapPoints:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->spendTapPoints:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/TJCOffers;->awardTapPoints:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleGetPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Lcom/tapjoy/TapjoyNotifier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleSpendPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3()Lcom/tapjoy/TapjoySpendPointsNotifier;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    return-object v0
.end method

.method static synthetic access$4(Lcom/tapjoy/TJCOffers;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0, p1}, Lcom/tapjoy/TJCOffers;->handleAwardPointsResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5()Lcom/tapjoy/TapjoyAwardPointsNotifier;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    return-object v0
.end method

.method private handleAwardPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 381
    const-string v2, ""

    .line 384
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 386
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 388
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 395
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 405
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 408
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponse(Ljava/lang/String;I)V

    .line 432
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 413
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 418
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 421
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoyAwardPointsNotifier;->getAwardPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 428
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private declared-synchronized handleGetPointsResponse(Ljava/lang/String;)Z
    .locals 9
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 253
    .local v0, "document":Lorg/w3c/dom/Document;
    if-eqz v0, :cond_2

    .line 255
    const-string v6, "Success"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 262
    const-string v6, "TapPoints"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "points":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v0, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "name":Ljava/lang/String;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 268
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 269
    .local v4, "pointTotal":I
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getLocalTapPointsTotal()I

    move-result v1

    .line 276
    .local v1, "lastLocalPointTotal":I
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    if-eqz v6, :cond_0

    .line 279
    const/16 v6, -0x270f

    if-eq v1, v6, :cond_0

    .line 282
    if-le v4, v1, :cond_0

    .line 284
    const-string v6, "TapjoyPoints"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "earned: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    sub-int v7, v4, v1

    invoke-interface {v6, v7}, Lcom/tapjoy/TapjoyEarnedPointsNotifier;->earnedTapPoints(I)V

    .line 291
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 294
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v2, v7}, Lcom/tapjoy/TapjoyNotifier;->getUpdatePoints(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    const/4 v6, 0x1

    .line 308
    .end local v1    # "lastLocalPointTotal":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointTotal":I
    .end local v5    # "points":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return v6

    .line 299
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v5    # "points":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v6, "TapjoyPoints"

    const-string v7, "Invalid XML: Missing tags."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v5    # "points":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 304
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_3
    const-string v6, "TapjoyPoints"

    const-string v7, "Invalid XML: Missing <Success> tag."

    invoke-static {v6, v7}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 251
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "nodeValue":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private handleSpendPointsResponse(Ljava/lang/String;)Z
    .locals 8
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 319
    const-string v2, ""

    .line 322
    .local v2, "message":Ljava/lang/String;
    invoke-static {p1}, Lcom/tapjoy/TapjoyUtil;->buildDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 324
    .local v1, "document":Lorg/w3c/dom/Document;
    if-eqz v1, :cond_1

    .line 326
    const-string v6, "Success"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "nodeValue":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v6, "true"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 333
    const-string v6, "TapPoints"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "pointsTotal":Ljava/lang/String;
    const-string v6, "CurrencyName"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "currencyName":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 343
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyConnectCore;->saveTapPointsTotal(I)V

    .line 346
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponse(Ljava/lang/String;I)V

    .line 370
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :goto_0
    return v5

    .line 351
    .restart local v0    # "currencyName":Ljava/lang/String;
    .restart local v3    # "nodeValue":Ljava/lang/String;
    .restart local v4    # "pointsTotal":Ljava/lang/String;
    :cond_0
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing tags."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    .end local v0    # "currencyName":Ljava/lang/String;
    .end local v3    # "nodeValue":Ljava/lang/String;
    .end local v4    # "pointsTotal":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 356
    .restart local v3    # "nodeValue":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 358
    const-string v6, "Message"

    invoke-interface {v1, v6}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-static {v6}, Lcom/tapjoy/TapjoyUtil;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    .line 359
    const-string v6, "TapjoyPoints"

    invoke-static {v6, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    sget-object v6, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    invoke-interface {v6, v2}, Lcom/tapjoy/TapjoySpendPointsNotifier;->getSpendPointsResponseFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :cond_3
    const-string v5, "TapjoyPoints"

    const-string v6, "Invalid XML: Missing <Success> tag."

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public awardTapPoints(ILcom/tapjoy/TapjoyAwardPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .prologue
    .line 188
    if-gez p1, :cond_0

    .line 190
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    return-void

    .line 194
    :cond_0
    iput p1, p0, Lcom/tapjoy/TJCOffers;->awardTapPoints:I

    .line 196
    sput-object p2, Lcom/tapjoy/TJCOffers;->tapjoyAwardPointsNotifier:Lcom/tapjoy/TapjoyAwardPointsNotifier;

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$3;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$3;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V
    .locals 2
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyNotifier;

    .prologue
    .line 108
    sput-object p1, Lcom/tapjoy/TJCOffers;->tapjoyNotifier:Lcom/tapjoy/TapjoyNotifier;

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$1;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$1;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method

.method public setEarnedPointsNotifier(Lcom/tapjoy/TapjoyEarnedPointsNotifier;)V
    .locals 0
    .param p1, "notifier"    # Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .prologue
    .line 239
    sput-object p1, Lcom/tapjoy/TJCOffers;->tapjoyEarnedPointsNotifier:Lcom/tapjoy/TapjoyEarnedPointsNotifier;

    .line 240
    return-void
.end method

.method public showOffers()V
    .locals 4

    .prologue
    .line 64
    const-string v1, "TapjoyOffers"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Showing offers with userID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v2, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "offersIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "USER_ID"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "URL_PARAMS"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method

.method public showOffersWithCurrencyID(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "currencyID"    # Ljava/lang/String;
    .param p2, "enableCurrencySelector"    # Z

    .prologue
    .line 83
    const-string v2, "TapjoyOffers"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Showing offers with currencyID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", selector: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (userID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    .line 86
    if-eqz p2, :cond_0

    const-string v2, "1"

    :goto_0
    iput-object v2, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "offersURLParams":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&currency_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencyID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&currency_selector="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TJCOffers;->multipleCurrencySelector:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    const-class v3, Lcom/tapjoy/TJCOffersWebView;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "offersIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    const-string v2, "USER_ID"

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v2, "URL_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v2, p0, Lcom/tapjoy/TJCOffers;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void

    .line 86
    .end local v0    # "offersIntent":Landroid/content/Intent;
    .end local v1    # "offersURLParams":Ljava/lang/String;
    :cond_0
    const-string v2, "0"

    goto :goto_0
.end method

.method public spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V
    .locals 2
    .param p1, "amount"    # I
    .param p2, "notifier"    # Lcom/tapjoy/TapjoySpendPointsNotifier;

    .prologue
    .line 143
    if-gez p1, :cond_0

    .line 145
    const-string v0, "TapjoyPoints"

    const-string v1, "spendTapPoints error: amount must be a positive number"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TJCOffers;->spendTapPoints:Ljava/lang/String;

    .line 151
    sput-object p2, Lcom/tapjoy/TJCOffers;->tapjoySpendPointsNotifier:Lcom/tapjoy/TapjoySpendPointsNotifier;

    .line 153
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TJCOffers$2;

    invoke-direct {v1, p0}, Lcom/tapjoy/TJCOffers$2;-><init>(Lcom/tapjoy/TJCOffers;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
