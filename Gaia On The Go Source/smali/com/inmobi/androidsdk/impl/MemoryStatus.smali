.class Lcom/inmobi/androidsdk/impl/MemoryStatus;
.super Ljava/lang/Object;
.source "UserInfo.java"


# static fields
.field private static final ERROR:I = -0x1


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized externalMemoryAvailable()Z
    .locals 3

    .prologue
    .line 1154
    const-class v1, Lcom/inmobi/androidsdk/impl/MemoryStatus;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1155
    const-string v2, "mounted"

    .line 1154
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized formatSize(J)Ljava/lang/String;
    .locals 7
    .param p0, "size"    # J

    .prologue
    const-wide/16 v5, 0x400

    .line 1198
    const-class v2, Lcom/inmobi/androidsdk/impl/MemoryStatus;

    monitor-enter v2

    const/4 v0, 0x0

    .line 1200
    .local v0, "suffix":Ljava/lang/String;
    cmp-long v1, p0, v5

    if-ltz v1, :cond_0

    .line 1201
    :try_start_0
    const-string v0, " KB"

    .line 1202
    const-wide/16 v3, 0x400

    div-long/2addr p0, v3

    .line 1205
    :cond_0
    cmp-long v1, p0, v5

    if-ltz v1, :cond_1

    .line 1206
    const-string v0, " MB"

    .line 1207
    const-wide/16 v3, 0x400

    div-long/2addr p0, v3

    .line 1209
    :cond_1
    cmp-long v1, p0, v5

    if-ltz v1, :cond_2

    .line 1210
    const-string v0, " GB"

    .line 1211
    const-wide/16 v3, 0x400

    div-long/2addr p0, v3

    .line 1214
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1198
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static declared-synchronized getTotalExternalMemorySize()J
    .locals 9

    .prologue
    .line 1186
    const-class v8, Lcom/inmobi/androidsdk/impl/MemoryStatus;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/inmobi/androidsdk/impl/MemoryStatus;->externalMemoryAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1187
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 1188
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 1190
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    int-to-long v4, v6

    .line 1191
    .local v4, "totalBlocks":J
    mul-long v6, v4, v0

    .line 1193
    :goto_0
    monitor-exit v8

    return-wide v6

    .end local v0    # "blockSize":J
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :cond_0
    const-wide/16 v6, -0x1

    goto :goto_0

    .line 1186
    .restart local v2    # "path":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v8

    throw v6
.end method

.method static declared-synchronized getTotalInternalMemorySize()J
    .locals 10

    .prologue
    .line 1166
    const-class v7, Lcom/inmobi/androidsdk/impl/MemoryStatus;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 1167
    .local v2, "path":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v3, "stat":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v0, v6

    .line 1169
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    int-to-long v4, v6

    .line 1170
    .local v4, "totalBlocks":J
    mul-long v8, v4, v0

    monitor-exit v7

    return-wide v8

    .line 1166
    .end local v0    # "blockSize":J
    .end local v3    # "stat":Landroid/os/StatFs;
    .end local v4    # "totalBlocks":J
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method
