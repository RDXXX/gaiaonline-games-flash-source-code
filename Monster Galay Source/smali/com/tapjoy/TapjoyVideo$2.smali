.class Lcom/tapjoy/TapjoyVideo$2;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->cacheVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    iput-object p2, p0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 587
    .local v22, "time":J
    const/4 v14, 0x0

    .line 588
    .local v14, "networkTimeout":Z
    const/4 v4, 0x0

    .line 590
    .local v4, "downloadError":Z
    const/4 v10, 0x0

    .line 591
    .local v10, "inputStream":Ljava/io/BufferedInputStream;
    const/16 v16, 0x0

    .line 593
    .local v16, "out":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 594
    .local v8, "fileName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 595
    .local v18, "path":Ljava/lang/String;
    const/16 v19, 0x0

    .line 599
    .local v19, "savedFile":Ljava/io/File;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v9, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 600
    .local v9, "fileURL":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 601
    .local v3, "connection":Ljava/net/URLConnection;
    const/16 v26, 0x3a98

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 602
    const/16 v26, 0x7530

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 603
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 605
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .local v11, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$1(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 611
    .local v7, "fileDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    add-int/lit8 v28, v28, 0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->val$url:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v27, v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 615
    const/16 v26, 0x0

    const/16 v27, 0x2e

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 617
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "fileDir: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "path: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "file name: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v26

    if-eqz v26, :cond_0

    .line 624
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "created directory at: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    :cond_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$1(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 627
    .end local v19    # "savedFile":Ljava/io/File;
    .local v20, "savedFile":Ljava/io/File;
    :try_start_2
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 629
    .end local v16    # "out":Ljava/io/OutputStream;
    .local v17, "out":Ljava/io/OutputStream;
    :try_start_3
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "downloading video file to: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/16 v26, 0x400

    move/from16 v0, v26

    new-array v2, v0, [B

    .line 634
    .local v2, "buf":[B
    const-wide/16 v24, 0x0

    .line 636
    .local v24, "total":J
    :goto_0
    invoke-virtual {v11, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    .local v13, "len":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v13, v0, :cond_2

    .line 642
    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStream;->close()V

    .line 643
    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 645
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "FILE SIZE: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-nez v26, :cond_4

    .line 649
    const/4 v14, 0x1

    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .line 663
    .end local v2    # "buf":[B
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v7    # "fileDir":Ljava/io/File;
    .end local v9    # "fileURL":Ljava/net/URL;
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "len":I
    .end local v24    # "total":J
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v14, :cond_1

    .line 665
    const-string v26, "TapjoyVideo"

    const-string v27, "Network timeout"

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 671
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 679
    :cond_1
    :goto_2
    if-nez v14, :cond_3

    if-nez v4, :cond_3

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$4(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 682
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/tapjoy/TapjoyVideoObject;

    .line 684
    .local v15, "newVideo":Lcom/tapjoy/TapjoyVideoObject;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    iput-object v0, v15, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "TapjoyVideoPrefs"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 687
    .local v21, "settings":Landroid/content/SharedPreferences;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 688
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6, v12, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 689
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$4(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/Vector;->removeElementAt(I)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->access$5(Lcom/tapjoy/TapjoyVideo;)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$2;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideo;->loadNextVideo()V

    .line 699
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "video cached in: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->access$6()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/tapjoy/TapjoyVideoNotifier;->videoReady()V

    .line 708
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "key":Ljava/lang/String;
    .end local v15    # "newVideo":Lcom/tapjoy/TapjoyVideoObject;
    .end local v21    # "settings":Landroid/content/SharedPreferences;
    :goto_3
    return-void

    .line 638
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v19    # "savedFile":Ljava/io/File;
    .restart local v2    # "buf":[B
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v7    # "fileDir":Ljava/io/File;
    .restart local v9    # "fileURL":Ljava/net/URL;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "len":I
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "savedFile":Ljava/io/File;
    .restart local v24    # "total":J
    :cond_2
    int-to-long v0, v13

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    .line 639
    const/16 v26, 0x0

    :try_start_5
    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v2, v1, v13}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 651
    .end local v2    # "buf":[B
    .end local v13    # "len":I
    .end local v24    # "total":J
    :catch_0
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .line 653
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v7    # "fileDir":Ljava/io/File;
    .end local v9    # "fileURL":Ljava/net/URL;
    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_4
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Network timeout: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v14, 0x1

    .line 655
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 657
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v5

    .line 659
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    const-string v26, "TapjoyVideo"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "Error caching video file: "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 706
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->access$6()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v26

    const/16 v27, 0x2

    invoke-interface/range {v26 .. v27}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    goto :goto_3

    .line 673
    :catch_2
    move-exception v26

    goto/16 :goto_2

    .line 657
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "fileURL":Ljava/net/URL;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "savedFile":Ljava/io/File;
    .restart local v7    # "fileDir":Ljava/io/File;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v20    # "savedFile":Ljava/io/File;
    :catch_4
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v19    # "savedFile":Ljava/io/File;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "savedFile":Ljava/io/File;
    :catch_5
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 651
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v7    # "fileDir":Ljava/io/File;
    .end local v9    # "fileURL":Ljava/net/URL;
    :catch_6
    move-exception v5

    goto :goto_4

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v9    # "fileURL":Ljava/net/URL;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v5

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v19    # "savedFile":Ljava/io/File;
    .restart local v7    # "fileDir":Ljava/io/File;
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v20    # "savedFile":Ljava/io/File;
    :catch_8
    move-exception v5

    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_4

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "out":Ljava/io/OutputStream;
    .end local v19    # "savedFile":Ljava/io/File;
    .restart local v2    # "buf":[B
    .restart local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v13    # "len":I
    .restart local v17    # "out":Ljava/io/OutputStream;
    .restart local v20    # "savedFile":Ljava/io/File;
    .restart local v24    # "total":J
    :cond_4
    move-object/from16 v19, v20

    .end local v20    # "savedFile":Ljava/io/File;
    .restart local v19    # "savedFile":Ljava/io/File;
    move-object/from16 v16, v17

    .end local v17    # "out":Ljava/io/OutputStream;
    .restart local v16    # "out":Ljava/io/OutputStream;
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method
