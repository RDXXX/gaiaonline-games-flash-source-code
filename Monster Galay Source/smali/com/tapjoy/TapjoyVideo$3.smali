.class Lcom/tapjoy/TapjoyVideo$3;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->cacheImage(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    iput-object p2, p0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 727
    .local v18, "time":J
    const/4 v12, 0x0

    .line 728
    .local v12, "networkTimeout":Z
    const/4 v4, 0x0

    .line 730
    .local v4, "downloadError":Z
    const/4 v9, 0x0

    .line 731
    .local v9, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v13, 0x0

    .line 733
    .local v13, "out":Ljava/io/OutputStream;
    const/4 v7, 0x0

    .line 734
    .local v7, "fileName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 735
    .local v15, "path":Ljava/lang/String;
    const/16 v16, 0x0

    .line 739
    .local v16, "savedFile":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 740
    .local v8, "fileURL":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 741
    .local v3, "connection":Ljava/net/URLConnection;
    const/16 v22, 0x3a98

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 742
    const/16 v22, 0x7530

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 743
    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    .line 745
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 749
    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .local v10, "inputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$7(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .local v6, "fileDir":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->val$url:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 755
    const/16 v22, 0x0

    const/16 v23, 0x2e

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 757
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "fileDir: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "path: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "file name: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 764
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "created directory at: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    :cond_0
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$7(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 767
    .end local v16    # "savedFile":Ljava/io/File;
    .local v17, "savedFile":Ljava/io/File;
    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 769
    .end local v13    # "out":Ljava/io/OutputStream;
    .local v14, "out":Ljava/io/OutputStream;
    :try_start_3
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "downloading image file to: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const/16 v22, 0x400

    move/from16 v0, v22

    new-array v2, v0, [B

    .line 774
    .local v2, "buf":[B
    const-wide/16 v20, 0x0

    .line 776
    .local v20, "total":J
    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v11

    .local v11, "len":I
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v11, v0, :cond_4

    .line 782
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    .line 783
    invoke-virtual {v10}, Ljava/io/BufferedInputStream;->close()V

    .line 785
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "FILE SIZE: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_6

    .line 789
    const/4 v12, 0x1

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    move-object v9, v10

    .line 803
    .end local v2    # "buf":[B
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v6    # "fileDir":Ljava/io/File;
    .end local v8    # "fileURL":Ljava/net/URL;
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v11    # "len":I
    .end local v20    # "total":J
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_1
    if-eqz v12, :cond_1

    .line 805
    const-string v22, "TapjoyVideo"

    const-string v23, "Network timeout"

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    .line 811
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 819
    :cond_1
    :goto_2
    if-nez v12, :cond_5

    if-nez v4, :cond_5

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/util/Vector;->removeElementAt(I)V

    .line 823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-lez v22, :cond_2

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideo;->access$10(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    .line 826
    :cond_2
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "image cached in: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "ms"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    :cond_3
    :goto_3
    return-void

    .line 778
    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v16    # "savedFile":Ljava/io/File;
    .restart local v2    # "buf":[B
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v6    # "fileDir":Ljava/io/File;
    .restart local v8    # "fileURL":Ljava/net/URL;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "len":I
    .restart local v14    # "out":Ljava/io/OutputStream;
    .restart local v17    # "savedFile":Ljava/io/File;
    .restart local v20    # "total":J
    :cond_4
    int-to-long v0, v11

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 779
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    invoke-virtual {v14, v2, v0, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 791
    .end local v2    # "buf":[B
    .end local v11    # "len":I
    .end local v20    # "total":J
    :catch_0
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    move-object v9, v10

    .line 793
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v6    # "fileDir":Ljava/io/File;
    .end local v8    # "fileURL":Ljava/net/URL;
    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .local v5, "e":Ljava/net/SocketTimeoutException;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    :goto_4
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Network timeout: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v12, 0x1

    .line 795
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 797
    .end local v5    # "e":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v5

    .line 799
    .local v5, "e":Ljava/lang/Exception;
    :goto_5
    const-string v22, "TapjoyVideo"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "Error caching image file: "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 830
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    if-lez v22, :cond_3

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideo$3;->this$0:Lcom/tapjoy/TapjoyVideo;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyVideo;->access$10(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    goto :goto_3

    .line 813
    :catch_2
    move-exception v22

    goto/16 :goto_2

    .line 797
    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "fileURL":Ljava/net/URL;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_3
    move-exception v5

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "savedFile":Ljava/io/File;
    .restart local v6    # "fileDir":Ljava/io/File;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "savedFile":Ljava/io/File;
    :catch_4
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v16    # "savedFile":Ljava/io/File;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "out":Ljava/io/OutputStream;
    .restart local v17    # "savedFile":Ljava/io/File;
    :catch_5
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_5

    .line 791
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v6    # "fileDir":Ljava/io/File;
    .end local v8    # "fileURL":Ljava/net/URL;
    :catch_6
    move-exception v5

    goto :goto_4

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "connection":Ljava/net/URLConnection;
    .restart local v8    # "fileURL":Ljava/net/URL;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_7
    move-exception v5

    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v16    # "savedFile":Ljava/io/File;
    .restart local v6    # "fileDir":Ljava/io/File;
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v17    # "savedFile":Ljava/io/File;
    :catch_8
    move-exception v5

    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .end local v9    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v13    # "out":Ljava/io/OutputStream;
    .end local v16    # "savedFile":Ljava/io/File;
    .restart local v2    # "buf":[B
    .restart local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v11    # "len":I
    .restart local v14    # "out":Ljava/io/OutputStream;
    .restart local v17    # "savedFile":Ljava/io/File;
    .restart local v20    # "total":J
    :cond_6
    move-object/from16 v16, v17

    .end local v17    # "savedFile":Ljava/io/File;
    .restart local v16    # "savedFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "out":Ljava/io/OutputStream;
    .restart local v13    # "out":Ljava/io/OutputStream;
    move-object v9, v10

    .end local v10    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v9    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_1
.end method
