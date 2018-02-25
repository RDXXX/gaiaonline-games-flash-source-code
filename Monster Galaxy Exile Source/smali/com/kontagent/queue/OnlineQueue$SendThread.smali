.class Lcom/kontagent/queue/OnlineQueue$SendThread;
.super Ljava/lang/Thread;
.source "OnlineQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/queue/OnlineQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendThread"
.end annotation


# instance fields
.field private lastSentTimestamp:J

.field final synthetic this$0:Lcom/kontagent/queue/OnlineQueue;


# direct methods
.method private constructor <init>(Lcom/kontagent/queue/OnlineQueue;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->lastSentTimestamp:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kontagent/queue/OnlineQueue;Lcom/kontagent/queue/OnlineQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kontagent/queue/OnlineQueue;
    .param p2, "x1"    # Lcom/kontagent/queue/OnlineQueue$1;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/kontagent/queue/OnlineQueue$SendThread;-><init>(Lcom/kontagent/queue/OnlineQueue;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/kontagent/queue/OnlineQueue$SendThread;->runSafe()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "Unexpected error in OnlineQueue thread."

    invoke-static {v1, v0}, Lcom/kontagent/KontagentLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public runSafe()V
    .locals 6

    .prologue
    .line 118
    const-string v3, "KontagentAgent"

    invoke-virtual {p0, v3}, Lcom/kontagent/queue/OnlineQueue$SendThread;->setName(Ljava/lang/String;)V

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "url":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/kontagent/queue/OnlineQueue$SendThread;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3}, Lcom/kontagent/queue/OnlineQueue;->access$100(Lcom/kontagent/queue/OnlineQueue;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 123
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3}, Lcom/kontagent/queue/OnlineQueue;->access$200(Lcom/kontagent/queue/OnlineQueue;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3, v2}, Lcom/kontagent/queue/OnlineQueue;->access$302(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/kontagent/queue/OnlineQueue$SendThread;->send(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3}, Lcom/kontagent/queue/OnlineQueue;->access$200(Lcom/kontagent/queue/OnlineQueue;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 128
    :try_start_3
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/kontagent/queue/OnlineQueue;->access$302(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :try_start_4
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3}, Lcom/kontagent/queue/OnlineQueue;->access$400(Lcom/kontagent/queue/OnlineQueue;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 135
    :cond_0
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-virtual {v3}, Lcom/kontagent/queue/OnlineQueue;->stop()V

    .line 136
    return-void

    .line 125
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 129
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public send(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-wide/16 v7, 0x64

    .line 139
    invoke-static {}, Lcom/kontagent/queue/OnlineQueue;->access$500()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending HTTP request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kontagent/KontagentLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->lastSentTimestamp:J

    sub-long v0, v3, v5

    .line 143
    .local v0, "delta":J
    cmp-long v3, v0, v7

    if-gez v3, :cond_0

    .line 144
    sub-long v3, v7, v0

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3}, Lcom/kontagent/queue/OnlineQueue;->access$600(Lcom/kontagent/queue/OnlineQueue;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/kontagent/queue/OnlineQueue$SendThread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    invoke-static {p1}, Lcom/kontagent/util/NetworkUtil;->httpGet(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->lastSentTimestamp:J

    .line 150
    invoke-static {}, Lcom/kontagent/queue/OnlineQueue;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sent HTTP request"

    invoke-static {v3, v4}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v0    # "delta":J
    :goto_0
    return-void

    .line 153
    .restart local v0    # "delta":J
    :cond_1
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3, p1}, Lcom/kontagent/queue/OnlineQueue;->access$700(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/kontagent/queue/OnlineQueue;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Offline! Url dropped (was re-queued to offline queue)"

    invoke-static {v3, v4}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/kontagent/util/NetworkConnectivityError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 156
    .end local v0    # "delta":J
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Lcom/kontagent/util/NetworkConnectivityError;
    invoke-static {}, Lcom/kontagent/queue/OnlineQueue;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to send HTTP request."

    invoke-static {v3, v4}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3, p1, v2}, Lcom/kontagent/queue/OnlineQueue;->access$800(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    .end local v2    # "e":Lcom/kontagent/util/NetworkConnectivityError;
    :catch_1
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/kontagent/queue/OnlineQueue;->access$500()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to send HTTP request."

    invoke-static {v3, v4}, Lcom/kontagent/KontagentLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v3, p0, Lcom/kontagent/queue/OnlineQueue$SendThread;->this$0:Lcom/kontagent/queue/OnlineQueue;

    invoke-static {v3, p1, v2}, Lcom/kontagent/queue/OnlineQueue;->access$800(Lcom/kontagent/queue/OnlineQueue;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
