.class Lcom/tapjoy/TapjoyVideo$1;
.super Ljava/lang/Object;
.source "TapjoyVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/TapjoyVideo;->initVideoAd(Lcom/tapjoy/TapjoyVideoNotifier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyVideo;


# direct methods
.method constructor <init>(Lcom/tapjoy/TapjoyVideo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 166
    const/4 v6, 0x0

    .line 168
    .local v6, "returnValue":Z
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, "urlParams":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&publisher_user_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    new-instance v9, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v9}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    const-string v10, "https://ws.tapjoyads.com/videos?"

    invoke-virtual {v9, v10, v7}, Lcom/tapjoy/TapjoyURLConnection;->connectToURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 179
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9, v5}, Lcom/tapjoy/TapjoyVideo;->access$0(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)Z

    move-result v6

    .line 183
    :cond_0
    if-eqz v6, :cond_5

    .line 186
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$1(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 189
    .local v0, "cachedFilesOnDisk":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 192
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v9, v0

    if-lt v3, v9, :cond_6

    .line 238
    .end local v3    # "i":I
    :cond_1
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$5(Lcom/tapjoy/TapjoyVideo;)V

    .line 240
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 241
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->access$6()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v9

    invoke-interface {v9}, Lcom/tapjoy/TapjoyVideoNotifier;->videoReady()V

    .line 244
    :cond_2
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-virtual {v9}, Lcom/tapjoy/TapjoyVideo;->loadNextVideo()V

    .line 247
    new-instance v9, Ljava/io/File;

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$7(Lcom/tapjoy/TapjoyVideo;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 249
    .local v1, "cachedImagesOnDisk":[Ljava/io/File;
    const-string v9, "TapjoyVideo"

    const-string v10, "------------------------------"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v9, "TapjoyVideo"

    const-string v10, "checking image cache..."

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz v1, :cond_3

    .line 256
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v9, v1

    if-lt v3, v9, :cond_9

    .line 299
    .end local v3    # "i":I
    :cond_3
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->size()I

    move-result v9

    if-nez v9, :cond_c

    .line 301
    const-string v9, "TapjoyVideo"

    const-string v10, "*** no videos returned ***"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v9, "TapjoyVideo"

    const-string v10, "*** delete cache directory ***"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/tjcache/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    .line 315
    :cond_4
    :goto_2
    const-string v9, "TapjoyVideo"

    const-string v10, "------------------------------"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v9, "TapjoyVideo"

    const-string v10, "------------------------------"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v9, "TapjoyVideo"

    const-string v10, "INIT DONE!"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v9, "TapjoyVideo"

    const-string v10, "------------------------------"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v0    # "cachedFilesOnDisk":[Ljava/io/File;
    .end local v1    # "cachedImagesOnDisk":[Ljava/io/File;
    :cond_5
    return-void

    .line 194
    .restart local v0    # "cachedFilesOnDisk":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_6
    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "key":Ljava/lang/String;
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "key: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "uncachedVideos: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v11}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 204
    const-string v9, "TapjoyVideo"

    const-string v10, "*** Match found, comparing file sizes... ***"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local file size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tapjoy/TapjoyVideoObject;

    .line 208
    .local v8, "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    new-instance v9, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v9}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iget-object v10, v8, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tapjoy/TapjoyURLConnection;->getContentLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "contentLength":Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_7

    .line 213
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "*** VIDEO ALREADY DOWNLOAD!!! "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ***"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    aget-object v9, v0, v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    .line 216
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$3(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v10

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tapjoy/TapjoyVideoObject;

    invoke-virtual {v10, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$4(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 220
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "setting video location to: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .end local v2    # "contentLength":Ljava/lang/String;
    .end local v8    # "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 225
    .restart local v2    # "contentLength":Ljava/lang/String;
    .restart local v8    # "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    :cond_7
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file size mismatch --- deleting video: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    aget-object v9, v0, v3

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto :goto_3

    .line 232
    .end local v2    # "contentLength":Ljava/lang/String;
    .end local v8    # "videoObject":Lcom/tapjoy/TapjoyVideoObject;
    :cond_8
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "VIDEO EXPIRED? removing video from cache: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v0, v3

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    aget-object v9, v0, v3

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto :goto_3

    .line 258
    .end local v4    # "key":Ljava/lang/String;
    .restart local v1    # "cachedImagesOnDisk":[Ljava/io/File;
    :cond_9
    aget-object v9, v1, v3

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 263
    .restart local v4    # "key":Ljava/lang/String;
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --- "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "key: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "uncachedVideos: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v11}, Lcom/tapjoy/TapjoyVideo;->access$2(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 270
    const-string v9, "TapjoyVideo"

    const-string v10, "*** Match found, comparing file sizes... ***"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v9, "TapjoyVideo"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "local file size: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    new-instance v10, Lcom/tapjoy/TapjoyURLConnection;

    invoke-direct {v10}, Lcom/tapjoy/TapjoyURLConnection;-><init>()V

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/tapjoy/TapjoyURLConnection;->getContentLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .restart local v2    # "contentLength":Ljava/lang/String;
    if-eqz v2, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    aget-object v11, v1, v3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_a

    .line 278
    const-string v10, "TapjoyVideo"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v9, "*** image already downloaded, removing from queue: "

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v10}, Lcom/tapjoy/TapjoyVideo;->access$8(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Hashtable;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 256
    .end local v2    # "contentLength":Ljava/lang/String;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 285
    .restart local v2    # "contentLength":Ljava/lang/String;
    :cond_a
    const-string v9, "TapjoyVideo"

    const-string v10, "file size mismatch --- deleting image"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    aget-object v9, v1, v3

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto :goto_4

    .line 292
    .end local v2    # "contentLength":Ljava/lang/String;
    :cond_b
    const-string v9, "TapjoyVideo"

    const-string v10, "invalid image"

    invoke-static {v9, v10}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    aget-object v9, v1, v3

    invoke-static {v9}, Lcom/tapjoy/TapjoyUtil;->deleteFileOrDirectory(Ljava/io/File;)V

    goto :goto_4

    .line 309
    .end local v3    # "i":I
    .end local v4    # "key":Ljava/lang/String;
    :cond_c
    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 311
    iget-object v10, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    iget-object v9, p0, Lcom/tapjoy/TapjoyVideo$1;->this$0:Lcom/tapjoy/TapjoyVideo;

    invoke-static {v9}, Lcom/tapjoy/TapjoyVideo;->access$9(Lcom/tapjoy/TapjoyVideo;)Ljava/util/Vector;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v10, v9}, Lcom/tapjoy/TapjoyVideo;->access$10(Lcom/tapjoy/TapjoyVideo;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
