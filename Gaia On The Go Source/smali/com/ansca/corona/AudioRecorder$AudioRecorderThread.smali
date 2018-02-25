.class Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/AudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecorderThread"
.end annotation


# static fields
.field static final MAX_BUFFERS:I = 0x5


# instance fields
.field private myAudioRecordInstance:Landroid/media/AudioRecord;

.field private myBufferSize:I

.field private myBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field private myFrameSeconds:F

.field private myFreeBuffers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ansca/corona/AudioRecorder;


# direct methods
.method constructor <init>(Lcom/ansca/corona/AudioRecorder;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 152
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFrameSeconds:F

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    .line 157
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    .line 161
    return-void
.end method


# virtual methods
.method getNextBuffer()Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .locals 4

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "result":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    iget-object v3, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    monitor-enter v3

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-object v1, v0

    .line 243
    monitor-exit v3

    move-object v2, v1

    .line 246
    :goto_0
    return-object v2

    .line 245
    :cond_0
    monitor-exit v3

    .line 246
    const/4 v2, 0x0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method releaseBuffer(Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;)V
    .locals 2
    .param p1, "buffer"    # Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    monitor-enter v1

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v0}, Lcom/ansca/corona/AudioRecorder;->access$000(Lcom/ansca/corona/AudioRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 255
    :cond_0
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 175
    const/16 v1, -0x13

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 178
    const/16 v1, 0x1f40

    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v2

    invoke-interface {v2}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->audioChannelMono()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    .line 181
    .local v10, "minBufferSize":I
    const/high16 v1, 0x467a0000    # 16000.0f

    iget v2, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFrameSeconds:F

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 183
    .local v7, "bufferSize":I
    if-ge v7, v10, :cond_0

    .line 184
    move v7, v10

    .line 185
    :cond_0
    iput v7, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    .line 187
    new-instance v1, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/16 v3, 0x1f40

    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v4

    invoke-interface {v4}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->audioChannelMono()I

    move-result v4

    const/4 v5, 0x2

    iget v6, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    .line 192
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    new-instance v2, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    iget v3, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-direct {v2, v3}, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v1}, Lcom/ansca/corona/AudioRecorder;->access$000(Lcom/ansca/corona/AudioRecorder;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 198
    const/4 v11, 0x0

    .line 200
    .local v11, "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :try_start_1
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 202
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    move-object v11, v0

    .line 205
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    if-eqz v11, :cond_2

    .line 208
    :try_start_2
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    iget-object v2, v11, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myBuffer:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 210
    .local v8, "bytesRead":I
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 211
    if-lez v8, :cond_4

    .line 212
    :try_start_3
    iput v8, v11, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;->myValidBytes:I

    .line 214
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    invoke-static {v1, v8}, Lcom/ansca/corona/AudioRecorder;->access$100(Lcom/ansca/corona/AudioRecorder;I)V

    .line 221
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 223
    .end local v8    # "bytesRead":I
    :cond_2
    const-wide/16 v1, 0xf

    :try_start_4
    invoke-static {v1, v2}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 230
    .end local v7    # "bufferSize":I
    .end local v10    # "minBufferSize":I
    .end local v11    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    :catch_0
    move-exception v9

    .line 232
    .local v9, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/ansca/corona/AudioRecorder;->access$100(Lcom/ansca/corona/AudioRecorder;I)V

    .line 234
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 203
    .restart local v7    # "bufferSize":I
    .restart local v10    # "minBufferSize":I
    .restart local v11    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 204
    new-instance v12, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;

    iget v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myBufferSize:I

    invoke-direct {v12, v1}, Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;-><init>(I)V

    .end local v11    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .local v12, "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    move-object v11, v12

    .end local v12    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    .restart local v11    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 219
    .restart local v8    # "bytesRead":I
    :cond_4
    :try_start_7
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myFreeBuffers:Ljava/util/LinkedList;

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 221
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1

    .line 226
    .end local v8    # "bytesRead":I
    .end local v11    # "readBuffer":Lcom/ansca/corona/AudioRecorder$AudioByteBufferHolder;
    :cond_5
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->myAudioRecordInstance:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 228
    iget-object v1, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/AudioRecorder;->access$100(Lcom/ansca/corona/AudioRecorder;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3
.end method

.method startRecording()V
    .locals 0

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->start()V

    .line 165
    return-void
.end method

.method stopRecording()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/ansca/corona/AudioRecorder$AudioRecorderThread;->this$0:Lcom/ansca/corona/AudioRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/AudioRecorder;->access$002(Lcom/ansca/corona/AudioRecorder;Z)Z

    .line 169
    return-void
.end method
