.class final Lcom/millennialmedia/android/AdCache;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdCache$Iterator;,
        Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;
    }
.end annotation


# static fields
.field private static final CACHED_AD_FILE:Ljava/lang/String; = "ad.dat"

.field private static final CACHE_INCOMPLETE_PREFIX:Ljava/lang/String; = "incompleteDownload_"

.field private static final CACHE_PREFIX:Ljava/lang/String; = "nextCachedAd_"

.field private static final CACHE_PREFIX_APID:Ljava/lang/String; = "nextCachedAd_apids"

.field static final ITERATE_ID:I = 0x0

.field static final ITERATE_INFO:I = 0x1

.field static final ITERATE_OBJECT:I = 0x2

.field private static final LOCK_FILE:Ljava/lang/String; = "ad.lock"

.field static final PRIORITY_FETCH:I = 0x3

.field static final PRIORITY_PRECACHE:I = 0x1

.field static final PRIORITY_REFRESH:I = 0x2

.field private static apidListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedVideoList:Ljava/lang/String;

.field private static cachedVideoListLoaded:Z

.field private static cachedVideoSet:Ljava/util/HashSet;

.field private static incompleteDownloadHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static incompleteDownloadHashMapLoaded:Z

.field private static nextCachedAdHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static nextCachedAdHashMapLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static declared-synchronized cachedVideoWasAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_2

    .line 66
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 67
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    .line 70
    :cond_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_2
    monitor-exit v1

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized cachedVideoWasRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 83
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 85
    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;

    .line 87
    :cond_0
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    monitor-exit v1

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static cleanUpExpiredAds(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    const/4 v0, 0x1

    new-instance v1, Lcom/millennialmedia/android/AdCache$3;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdCache$3;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 432
    return-void
.end method

.method static downloadComponent(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Z
    .locals 19
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/io/File;

    .prologue
    .line 627
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 629
    .local v9, "file":Ljava/io/File;
    const-string v15, "Downloading Component: %s from %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    aput-object p0, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_1

    .line 633
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " already exists, skipping..."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 634
    const/4 v15, 0x1

    .line 709
    :cond_0
    :goto_0
    return v15

    .line 637
    :cond_1
    const/4 v13, 0x0

    .line 638
    .local v13, "stream":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 639
    .local v11, "out":Ljava/io/FileOutputStream;
    const-wide/16 v5, -0x1

    .line 642
    .local v5, "contentLength":J
    :try_start_0
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 643
    .local v4, "connectURL":Ljava/net/URL;
    const/4 v15, 0x1

    invoke-static {v15}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 644
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 645
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v15, 0x7530

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 646
    const-string v15, "GET"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 648
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 649
    const-string v15, "Content-Length"

    invoke-virtual {v3, v15}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 650
    .local v14, "temp":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 651
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 652
    :cond_2
    if-nez v13, :cond_5

    .line 654
    const-string v15, "Connection stream is null downloading %s."

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 655
    const/4 v15, 0x0

    .line 694
    if-eqz v13, :cond_3

    .line 695
    :try_start_1
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 696
    :cond_3
    if-eqz v11, :cond_0

    .line 697
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 699
    :catch_0
    move-exception v8

    .line 701
    .local v8, "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    if-eqz v9, :cond_4

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 704
    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 659
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_5
    :try_start_2
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 660
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .local v12, "out":Ljava/io/FileOutputStream;
    const/16 v15, 0x400

    :try_start_3
    new-array v2, v15, [B

    .line 663
    .local v2, "buf":[B
    :goto_1
    invoke-virtual {v13, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    .line 664
    .local v10, "numread":I
    if-gtz v10, :cond_9

    .line 670
    if-eqz v9, :cond_e

    .line 675
    :try_start_4
    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v15

    cmp-long v15, v15, v5

    if-eqz v15, :cond_6

    const-wide/16 v15, -0x1

    cmp-long v15, v5, v15

    if-nez v15, :cond_d

    .line 676
    :cond_6
    const/4 v15, 0x1

    .line 694
    if-eqz v13, :cond_7

    .line 695
    :try_start_5
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 696
    :cond_7
    if-eqz v12, :cond_0

    .line 697
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 699
    :catch_1
    move-exception v8

    .line 701
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    if-eqz v9, :cond_8

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 704
    :cond_8
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 666
    .end local v8    # "ex":Ljava/io/IOException;
    :cond_9
    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v12, v2, v15, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 686
    .end local v2    # "buf":[B
    .end local v10    # "numread":I
    :catch_2
    move-exception v7

    move-object v11, v12

    .line 688
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "temp":Ljava/lang/String;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_7
    const-string v15, "Exception downloading component %s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 694
    if-eqz v13, :cond_a

    .line 695
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 696
    :cond_a
    if-eqz v11, :cond_b

    .line 697
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 707
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_3
    if-eqz v9, :cond_c

    .line 708
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 709
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 678
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v10    # "numread":I
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "temp":Ljava/lang/String;
    :cond_d
    :try_start_9
    const-string v15, "Content-Length does not match actual length."

    invoke-static {v15}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 694
    :cond_e
    :goto_4
    if-eqz v13, :cond_f

    .line 695
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 696
    :cond_f
    if-eqz v12, :cond_10

    .line 697
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_10
    move-object v11, v12

    .line 705
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 680
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 682
    .local v7, "e":Ljava/lang/SecurityException;
    :try_start_b
    const-string v15, "Exception downloading component %s: %s"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v7}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 692
    .end local v2    # "buf":[B
    .end local v7    # "e":Ljava/lang/SecurityException;
    .end local v10    # "numread":I
    :catchall_0
    move-exception v15

    move-object v11, v12

    .line 694
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "temp":Ljava/lang/String;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :goto_5
    if-eqz v13, :cond_11

    .line 695
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 696
    :cond_11
    if-eqz v11, :cond_12

    .line 697
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 704
    :cond_12
    throw v15

    .line 699
    .end local v11    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "connectURL":Ljava/net/URL;
    .restart local v10    # "numread":I
    .restart local v12    # "out":Ljava/io/FileOutputStream;
    .restart local v14    # "temp":Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 701
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    if-eqz v9, :cond_13

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 704
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 699
    .end local v2    # "buf":[B
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "connectURL":Ljava/net/URL;
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "numread":I
    .end local v12    # "out":Ljava/io/FileOutputStream;
    .end local v14    # "temp":Ljava/lang/String;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v11    # "out":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v8

    .line 701
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    if-eqz v9, :cond_14

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 704
    :cond_14
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 699
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "ex":Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 701
    .restart local v8    # "ex":Ljava/io/IOException;
    const-string v15, "Content caching error: %s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    if-eqz v9, :cond_15

    .line 703
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 704
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 692
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v15

    goto :goto_5

    .line 686
    :catch_7
    move-exception v7

    goto/16 :goto_2
.end method

.method static getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 479
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getCacheDirectory(Landroid/content/Context;[Z)Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isExternal"    # [Z

    .prologue
    .line 485
    const/4 v0, 0x0

    .line 486
    .local v0, "dir":Ljava/io/File;
    const/4 v2, 0x0

    .line 490
    .local v2, "millennialMediaDir":Ljava/io/File;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 493
    new-instance v3, Ljava/io/File;

    const-string v4, ".mmsyscache"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v2    # "millennialMediaDir":Ljava/io/File;
    .local v3, "millennialMediaDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 496
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_4

    .line 497
    const/4 v2, 0x0

    .line 499
    .end local v3    # "millennialMediaDir":Ljava/io/File;
    .restart local v2    # "millennialMediaDir":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 500
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    aput-boolean v5, p1, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v2

    .line 503
    .end local v2    # "millennialMediaDir":Ljava/io/File;
    .restart local v3    # "millennialMediaDir":Ljava/io/File;
    if-nez v3, :cond_3

    .line 505
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_3

    .line 508
    new-instance v2, Ljava/io/File;

    const-string v4, ".mmsyscache"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 509
    .end local v3    # "millennialMediaDir":Ljava/io/File;
    .restart local v2    # "millennialMediaDir":Ljava/io/File;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 511
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 512
    const/4 v2, 0x0

    .line 514
    :cond_1
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 515
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, p1, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    :goto_1
    move-object v4, v2

    .line 524
    :goto_2
    return-object v4

    .line 519
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 522
    const/4 v4, 0x0

    goto :goto_2

    .line 519
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "millennialMediaDir":Ljava/io/File;
    .restart local v3    # "millennialMediaDir":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "millennialMediaDir":Ljava/io/File;
    .restart local v2    # "millennialMediaDir":Ljava/io/File;
    goto :goto_3

    .end local v2    # "millennialMediaDir":Ljava/io/File;
    .restart local v3    # "millennialMediaDir":Ljava/io/File;
    :cond_3
    move-object v2, v3

    .end local v3    # "millennialMediaDir":Ljava/io/File;
    .restart local v2    # "millennialMediaDir":Ljava/io/File;
    goto :goto_1

    .end local v2    # "millennialMediaDir":Ljava/io/File;
    .restart local v3    # "millennialMediaDir":Ljava/io/File;
    :cond_4
    move-object v2, v3

    .end local v3    # "millennialMediaDir":Ljava/io/File;
    .restart local v2    # "millennialMediaDir":Ljava/io/File;
    goto :goto_0
.end method

.method static getCachedAdFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 529
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;[Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getCachedAdFile(Landroid/content/Context;Ljava/lang/String;[Z)Ljava/io/File;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "isExternal"    # [Z

    .prologue
    const/4 v8, 0x0

    .line 543
    const/4 v7, 0x1

    new-array v4, v7, [Z

    .line 544
    .local v4, "ext":[Z
    invoke-static {p0, v4}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;[Z)Ljava/io/File;

    move-result-object v2

    .line 545
    .local v2, "cacheDir":Ljava/io/File;
    const/4 v0, 0x0

    .line 547
    .local v0, "adFile":Ljava/io/File;
    if-eqz p2, :cond_0

    .line 548
    aget-boolean v7, v4, v8

    aput-boolean v7, p2, v8

    .line 553
    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 555
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v0    # "adFile":Ljava/io/File;
    .local v1, "adFile":Ljava/io/File;
    move-object v0, v1

    .line 557
    .end local v1    # "adFile":Ljava/io/File;
    .restart local v0    # "adFile":Ljava/io/File;
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 560
    :cond_2
    const/4 v7, 0x0

    aget-boolean v7, v4, v7

    if-eqz v7, :cond_4

    .line 562
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    .line 564
    .local v5, "internalFile":Ljava/io/File;
    if-eqz v5, :cond_4

    .line 566
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ".mmsyscache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ad.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 567
    .end local v5    # "internalFile":Ljava/io/File;
    .local v6, "internalFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 569
    if-eqz p2, :cond_3

    .line 570
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, p2, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    .end local v6    # "internalFile":Ljava/io/File;
    :cond_3
    :goto_0
    return-object v6

    .line 579
    :catch_0
    move-exception v3

    .line 581
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/Throwable;)V

    .line 582
    const/4 v6, 0x0

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v6, v0

    .line 584
    goto :goto_0
.end method

.method static declared-synchronized getCachedVideoList(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    const-class v5, Lcom/millennialmedia/android/AdCache;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 104
    sget-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    if-nez v4, :cond_0

    .line 106
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v1, "hashSet":Ljava/util/HashSet;
    const/4 v4, 0x2

    new-instance v6, Lcom/millennialmedia/android/AdCache$1;

    invoke-direct {v6, p0, v1}, Lcom/millennialmedia/android/AdCache$1;-><init>(Landroid/content/Context;Ljava/util/HashSet;)V

    invoke-static {p0, v4, v6}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 117
    sput-object v1, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    .line 118
    const/4 v4, 0x1

    sput-boolean v4, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 121
    .end local v1    # "hashSet":Ljava/util/HashSet;
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, "acid":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 129
    .restart local v0    # "acid":Ljava/lang/Object;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "acid":Ljava/lang/Object;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 134
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_3
    sget-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v4
.end method

.method static declared-synchronized getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 236
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 237
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 176
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I
    .param p2, "iterator"    # Lcom/millennialmedia/android/AdCache$Iterator;

    .prologue
    .line 325
    invoke-static/range {p0 .. p0}, Lcom/millennialmedia/android/AdCache;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v13

    .line 327
    .local v13, "cachedDir":Ljava/io/File;
    const/4 v8, 0x0

    .line 332
    .local v8, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v9, 0x0

    .line 334
    .local v9, "ad":Lcom/millennialmedia/android/CachedAd;
    if-eqz v13, :cond_3

    .line 336
    new-instance v1, Lcom/millennialmedia/android/AdCache$2;

    invoke-direct {v1}, Lcom/millennialmedia/android/AdCache$2;-><init>()V

    invoke-virtual {v13, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v11

    .line 343
    .local v11, "adFiles":[Ljava/io/File;
    move-object v12, v11

    .local v12, "arr$":[Ljava/io/File;
    array-length v0, v12

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    move-object/from16 v17, v8

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v17, "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_a

    aget-object v10, v12, v15

    .line 347
    .local v10, "adFile":Ljava/io/File;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 392
    :cond_0
    if-eqz v17, :cond_9

    .line 394
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    const/4 v8, 0x0

    .line 343
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_1
    :goto_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v17, v8

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 398
    :catch_0
    move-exception v1

    move-object/from16 v8, v17

    .line 400
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 349
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_2
    if-nez p1, :cond_5

    .line 351
    :try_start_2
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 392
    if-eqz v17, :cond_a

    .line 394
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 395
    const/4 v8, 0x0

    .line 404
    .end local v10    # "adFile":Ljava/io/File;
    .end local v11    # "adFiles":[Ljava/io/File;
    .end local v12    # "arr$":[Ljava/io/File;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_3
    :goto_2
    return-void

    .line 398
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "adFile":Ljava/io/File;
    .restart local v11    # "adFiles":[Ljava/io/File;
    .restart local v12    # "arr$":[Ljava/io/File;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v1

    move-object/from16 v8, v17

    .line 400
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 392
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_4
    if-eqz v17, :cond_9

    .line 394
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 395
    const/4 v8, 0x0

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 398
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v1

    move-object/from16 v8, v17

    .line 400
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1

    .line 356
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_5
    :try_start_5
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 359
    .local v3, "type":I
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 360
    .local v4, "expiration":Ljava/util/Date;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 361
    .local v5, "acid":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    .line 362
    .local v6, "deferredViewStart":J
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 364
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Ljava/lang/String;ILjava/util/Date;Ljava/lang/String;JLjava/io/ObjectInputStream;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 366
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 367
    const/4 v8, 0x0

    .line 392
    if-eqz v8, :cond_3

    .line 394
    :try_start_7
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 395
    const/4 v8, 0x0

    goto :goto_2

    .line 374
    :cond_6
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v9, v0

    .line 375
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lcom/millennialmedia/android/AdCache$Iterator;->callback(Lcom/millennialmedia/android/CachedAd;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 377
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 378
    const/4 v8, 0x0

    .line 392
    if-eqz v8, :cond_3

    .line 394
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 395
    const/4 v8, 0x0

    goto :goto_2

    .line 392
    :cond_7
    if-eqz v8, :cond_1

    .line 394
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 395
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 383
    .end local v3    # "type":I
    .end local v4    # "expiration":Ljava/util/Date;
    .end local v5    # "acid":Ljava/lang/String;
    .end local v6    # "deferredViewStart":J
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v14

    move-object/from16 v8, v17

    .line 385
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v14, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_b
    const-string v1, "There was a problem reading the cached ad %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v2, v18

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-static {v14}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 392
    if-eqz v8, :cond_1

    .line 394
    :try_start_c
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 395
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 390
    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_0
    move-exception v1

    move-object/from16 v8, v17

    .line 392
    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    :goto_4
    if-eqz v8, :cond_8

    .line 394
    :try_start_d
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 395
    const/4 v8, 0x0

    .line 400
    :cond_8
    :goto_5
    throw v1

    .line 398
    .restart local v3    # "type":I
    .restart local v4    # "expiration":Ljava/util/Date;
    .restart local v5    # "acid":Ljava/lang/String;
    .restart local v6    # "deferredViewStart":J
    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto/16 :goto_2

    :catch_6
    move-exception v1

    goto/16 :goto_1

    .end local v3    # "type":I
    .end local v4    # "expiration":Ljava/util/Date;
    .end local v5    # "acid":Ljava/lang/String;
    .end local v6    # "deferredViewStart":J
    .restart local v14    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    goto/16 :goto_1

    .end local v14    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v2

    goto :goto_5

    .line 390
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 383
    :catch_9
    move-exception v14

    goto :goto_3

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_9
    move-object/from16 v8, v17

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_1

    .end local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    .end local v10    # "adFile":Ljava/io/File;
    .restart local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    :cond_a
    move-object/from16 v8, v17

    .end local v17    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v8    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto/16 :goto_2
.end method

.method static load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 719
    if-nez p1, :cond_1

    move-object v1, v11

    .line 767
    :cond_0
    :goto_0
    return-object v1

    .line 722
    :cond_1
    const/4 v2, 0x0

    .line 723
    .local v2, "cachedAdFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 726
    .local v9, "objectInputStream":Ljava/io/ObjectInputStream;
    const/4 v1, 0x0

    .line 727
    .local v1, "ad":Lcom/millennialmedia/android/CachedAd;
    new-array v8, v12, [Z

    .line 729
    .local v8, "isExternal":[Z
    invoke-static {p0, p1, v8}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;[Z)Ljava/io/File;

    move-result-object v2

    .line 730
    if-nez v2, :cond_2

    move-object v1, v11

    .line 731
    goto :goto_0

    .line 735
    :cond_2
    :try_start_0
    new-instance v10, Ljava/io/ObjectInputStream;

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .local v10, "objectInputStream":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readInt()I

    .line 738
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Date;

    .line 739
    .local v6, "expiration":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 740
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    .line 742
    .local v3, "deferredViewStart":J
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/millennialmedia/android/CachedAd;

    move-object v1, v0

    .line 743
    const/4 v11, 0x0

    aget-boolean v11, v8, v11

    iput-boolean v11, v1, Lcom/millennialmedia/android/CachedAd;->storedOnSdCard:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 759
    if-eqz v10, :cond_3

    .line 760
    :try_start_2
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    move-object v9, v10

    .line 764
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 762
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v11

    move-object v9, v10

    .line 765
    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 745
    .end local v3    # "deferredViewStart":J
    .end local v6    # "expiration":Ljava/util/Date;
    :catch_1
    move-exception v7

    .line 747
    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v11, "There was a problem loading up the cached ad %s. Ad is not on disk."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 759
    if-eqz v9, :cond_0

    .line 760
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 762
    :catch_2
    move-exception v11

    goto :goto_0

    .line 749
    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v5

    .line 751
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v11, "There was a problem loading up the cached ad %s."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static {v11, v12}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 753
    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 759
    if-eqz v9, :cond_0

    .line 760
    :try_start_6
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 762
    :catch_4
    move-exception v11

    goto :goto_0

    .line 757
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 759
    :goto_3
    if-eqz v9, :cond_4

    .line 760
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 764
    :cond_4
    :goto_4
    throw v11

    .line 762
    :catch_5
    move-exception v12

    goto :goto_4

    .line 757
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v11

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 749
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v5

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 745
    .end local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v7

    move-object v9, v10

    .end local v10    # "objectInputStream":Ljava/io/ObjectInputStream;
    .restart local v9    # "objectInputStream":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method private static loadApidListSet(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p0, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 261
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    .line 262
    const-string v6, "nextCachedAd_apids"

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "apids":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 265
    sget-object v6, Lcom/millennialmedia/android/MMAdViewSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "apidArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v6, v1

    if-lez v6, :cond_0

    .line 267
    move-object v3, v1

    .local v3, "arr$":[Ljava/lang/String;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v3, v4

    .line 269
    .local v0, "apid":Ljava/lang/String;
    sget-object v6, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "apid":Ljava/lang/String;
    .end local v1    # "apidArray":[Ljava/lang/String;
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method static loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 243
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "nextIncompleteAd":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadIncompleteDownloadHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 203
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 204
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    .line 207
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 208
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 210
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 212
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 214
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incompleteDownload_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 215
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 216
    sget-object v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    .line 220
    return-void
.end method

.method static loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->getNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "nextAd":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, v0}, Lcom/millennialmedia/android/AdCache;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    goto :goto_0
.end method

.method private static loadNextCachedAdHashMap(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v10, 0x5f

    .line 143
    const-string v8, "MillennialMediaSettings"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 144
    .local v7, "settings":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    .line 146
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    if-nez v8, :cond_0

    .line 147
    invoke-static {v7}, Lcom/millennialmedia/android/AdCache;->loadApidListSet(Landroid/content/SharedPreferences;)V

    .line 149
    :cond_0
    sget-object v8, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "apid":Ljava/lang/String;
    invoke-static {}, Lcom/millennialmedia/android/MMAdView;->getAdTypes()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v2, v4

    .line 153
    .local v0, "adType":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "nextCachedAd_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "result":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 155
    sget-object v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "adType":Ljava/lang/String;
    .end local v1    # "apid":Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    .line 159
    return-void
.end method

.method static resetCache(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 440
    const/4 v2, 0x2

    new-instance v3, Lcom/millennialmedia/android/AdCache$4;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/AdCache$4;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v2, v3}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 452
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoSet:Ljava/util/HashSet;

    .line 453
    sput-object v4, Lcom/millennialmedia/android/AdCache;->cachedVideoList:Ljava/lang/String;

    .line 454
    const/4 v2, 0x0

    sput-boolean v2, Lcom/millennialmedia/android/AdCache;->cachedVideoListLoaded:Z

    .line 456
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 458
    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 459
    .local v1, "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 462
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 464
    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 465
    .restart local v1    # "key":Ljava/lang/String;
    invoke-static {p0, v1, v4}, Lcom/millennialmedia/android/AdCache;->setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static save(Landroid/content/Context;Lcom/millennialmedia/android/CachedAd;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ad"    # Lcom/millennialmedia/android/CachedAd;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "cachedAdFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 777
    .local v3, "lockFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 778
    .local v5, "objectOutputStream":Ljava/io/ObjectOutputStream;
    new-array v2, v8, [Z

    .line 780
    .local v2, "isExternal":[Z
    if-nez p1, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v7

    .line 783
    :cond_1
    iget-object v9, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-static {p0, v9, v2}, Lcom/millennialmedia/android/AdCache;->getCachedAdFile(Landroid/content/Context;Ljava/lang/String;[Z)Ljava/io/File;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_0

    .line 787
    const-string v9, "Saving CachedAd %s to %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v11, v10, v7

    aput-object v0, v10, v8

    invoke-static {v9, v10}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "ad.lock"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    .end local v3    # "lockFile":Ljava/io/File;
    .local v4, "lockFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-nez v9, :cond_3

    .line 795
    const-string v8, "Could not save the cached ad %s. Ad was locked."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 820
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 821
    if-eqz v5, :cond_2

    .line 822
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_1
    move-object v3, v4

    .line 826
    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto :goto_0

    .line 799
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockFile":Ljava/io/File;
    :cond_3
    :try_start_3
    new-instance v6, Ljava/io/ObjectOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v9}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 801
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .local v6, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_4
    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getType()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 802
    iget-object v9, p1, Lcom/millennialmedia/android/CachedAd;->expiration:Ljava/util/Date;

    invoke-virtual {v6, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 803
    iget-object v9, p1, Lcom/millennialmedia/android/CachedAd;->acid:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 804
    iget-wide v9, p1, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v6, v9, v10}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 806
    invoke-virtual {v6, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 807
    const/4 v9, 0x0

    aget-boolean v9, v2, v9

    iput-boolean v9, p1, Lcom/millennialmedia/android/CachedAd;->storedOnSdCard:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 820
    :try_start_5
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 821
    if-eqz v6, :cond_4

    .line 822
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 830
    :cond_4
    :goto_2
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->saveAssets(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 832
    invoke-virtual {p1, p0}, Lcom/millennialmedia/android/CachedAd;->delete(Landroid/content/Context;)V

    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .line 833
    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto/16 :goto_0

    .line 809
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_6
    const-string v8, "There was a problem saving the cached ad %s."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lcom/millennialmedia/android/CachedAd;->id:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 812
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 813
    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 820
    :try_start_7
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 821
    if-eqz v5, :cond_0

    .line 822
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 824
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 818
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 820
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 821
    if-eqz v5, :cond_5

    .line 822
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 826
    :cond_5
    :goto_5
    throw v7

    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "lockFile":Ljava/io/File;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    move v7, v8

    .line 836
    goto/16 :goto_0

    .line 824
    :catch_2
    move-exception v8

    goto :goto_5

    .line 818
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto :goto_4

    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "lockFile":Ljava/io/File;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto :goto_4

    .line 809
    .end local v3    # "lockFile":Ljava/io/File;
    .restart local v4    # "lockFile":Ljava/io/File;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto :goto_3

    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "lockFile":Ljava/io/File;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/File;
    .restart local v3    # "lockFile":Ljava/io/File;
    goto :goto_3

    .line 824
    .end local v3    # "lockFile":Ljava/io/File;
    .end local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v4    # "lockFile":Ljava/io/File;
    .restart local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v9

    goto :goto_2

    .end local v6    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local v5    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :catch_6
    move-exception v8

    goto/16 :goto_1
.end method

.method private static saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 7
    .param p0, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/16 v4, 0x5f

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 277
    .local v3, "start":I
    if-ltz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 279
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "apid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 282
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 287
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 288
    .local v1, "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/millennialmedia/android/MMAdViewSDK;->COMMA:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 294
    .end local v1    # "apidIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    const-string v5, "nextCachedAd_apids"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    sget-object v4, Lcom/millennialmedia/android/AdCache;->apidListSet:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 299
    .end local v0    # "apid":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_1
    return-void

    .line 294
    .restart local v0    # "apid":Ljava/lang/String;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private static saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 226
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 227
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incompleteDownload_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    .line 166
    const-string v2, "MillennialMediaSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0, p1}, Lcom/millennialmedia/android/AdCache;->saveApidListSet(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nextCachedAd_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method static declared-synchronized setIncompleteDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 249
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 250
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownloadHashMap(Landroid/content/Context;)V

    .line 251
    :cond_0
    if-eqz p1, :cond_2

    .line 253
    sget-object v0, Lcom/millennialmedia/android/AdCache;->incompleteDownloadHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveIncompleteDownloadHashMap(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    :cond_2
    monitor-exit v1

    return-void

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v1, Lcom/millennialmedia/android/AdCache;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMapLoaded:Z

    if-nez v0, :cond_0

    .line 190
    invoke-static {p0}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAdHashMap(Landroid/content/Context;)V

    .line 191
    :cond_0
    if-eqz p1, :cond_2

    .line 193
    sget-object v0, Lcom/millennialmedia/android/AdCache;->nextCachedAdHashMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "id":Ljava/lang/String;
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {p0, p1}, Lcom/millennialmedia/android/AdCache;->saveNextCachedAdHashMapValue(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_2
    monitor-exit v1

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "adName"    # Ljava/lang/String;
    .param p2, "ad"    # Lcom/millennialmedia/android/CachedAd;
    .param p3, "listener"    # Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;

    .prologue
    .line 49
    invoke-static {}, Lcom/millennialmedia/android/AdCacheThreadPool;->sharedThreadPool()Lcom/millennialmedia/android/AdCacheThreadPool;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/millennialmedia/android/AdCacheThreadPool;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)V

    .line 50
    return-void
.end method
