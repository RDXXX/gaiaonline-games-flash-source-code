.class public Lcom/kontagent/Stateful;
.super Ljava/util/Observable;
.source "Stateful.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kontagent/Stateful$1;,
        Lcom/kontagent/Stateful$State;
    }
.end annotation


# instance fields
.field private mState:Lcom/kontagent/Stateful$State;

.field private final mStateSync:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    iput-object v0, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    return-void
.end method

.method private varargs assertState([Lcom/kontagent/Stateful$State;)V
    .locals 11
    .param p1, "validStates"    # [Lcom/kontagent/Stateful$State;

    .prologue
    .line 140
    const/4 v5, 0x0

    .line 141
    .local v5, "valid":Z
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v1

    .line 142
    .local v1, "curState":Lcom/kontagent/Stateful$State;
    move-object v0, p1

    .local v0, "arr$":[Lcom/kontagent/Stateful$State;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 143
    .local v6, "validState":Lcom/kontagent/Stateful$State;
    if-ne v1, v6, :cond_1

    .line 144
    const/4 v5, 0x1

    .line 149
    .end local v6    # "validState":Lcom/kontagent/Stateful$State;
    :cond_0
    if-nez v5, :cond_2

    .line 150
    const-string v7, "Operation can not be exuected in %s state."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->name()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "msg":Ljava/lang/String;
    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    .end local v4    # "msg":Ljava/lang/String;
    .restart local v6    # "validState":Lcom/kontagent/Stateful$State;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v6    # "validState":Lcom/kontagent/Stateful$State;
    :cond_2
    return-void
.end method

.method private setState(Lcom/kontagent/Stateful$State;)V
    .locals 2
    .param p1, "state"    # Lcom/kontagent/Stateful$State;

    .prologue
    .line 14
    iget-object v1, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    if-eq v0, p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    .line 17
    iget-object v0, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 19
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->setChanged()V

    .line 20
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->notifyObservers()V

    .line 22
    :cond_0
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected assertResumed()V
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/kontagent/Stateful$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->assertState([Lcom/kontagent/Stateful$State;)V

    .line 162
    return-void
.end method

.method protected assertStarted()V
    .locals 3

    .prologue
    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kontagent/Stateful$State;

    const/4 v1, 0x0

    sget-object v2, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->assertState([Lcom/kontagent/Stateful$State;)V

    .line 158
    return-void
.end method

.method public getState()Lcom/kontagent/Stateful$State;
    .locals 2

    .prologue
    .line 26
    iget-object v1, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v0

    .line 33
    .local v0, "state":Lcom/kontagent/Stateful$State;
    sget-object v1, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v0

    sget-object v1, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public pause()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    sget-object v2, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 118
    :goto_0
    :pswitch_0
    return v0

    .line 110
    :pswitch_1
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onPause()V

    .line 111
    sget-object v1, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v1}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 116
    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public resume()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    sget-object v2, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 104
    :goto_0
    :pswitch_0
    return v0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onResume()V

    .line 99
    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v1}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 102
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->resume()Z

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onStart()V

    .line 85
    sget-object v0, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    .line 86
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onResume()V

    .line 87
    sget-object v0, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    invoke-virtual {p0}, Lcom/kontagent/Stateful;->getState()Lcom/kontagent/Stateful$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 124
    :pswitch_0
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onPause()V

    .line 125
    sget-object v0, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    .line 126
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onStop()V

    .line 127
    sget-object v0, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    goto :goto_0

    .line 130
    :pswitch_1
    invoke-virtual {p0}, Lcom/kontagent/Stateful;->onStop()V

    .line 131
    sget-object v0, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    invoke-direct {p0, v0}, Lcom/kontagent/Stateful;->setState(Lcom/kontagent/Stateful$State;)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs waitStates(J[Lcom/kontagent/Stateful$State;)Lcom/kontagent/Stateful$State;
    .locals 12
    .param p1, "time"    # J
    .param p3, "states"    # [Lcom/kontagent/Stateful$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v9, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    monitor-enter v9

    .line 59
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v3, v10, p1

    .line 61
    .local v3, "endTime":J
    :goto_0
    move-object v0, p3

    .local v0, "arr$":[Lcom/kontagent/Stateful$State;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v7, v0, v5

    .line 62
    .local v7, "state":Lcom/kontagent/Stateful$State;
    iget-object v8, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    invoke-virtual {v8, v7}, Lcom/kontagent/Stateful$State;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    iget-object v8, p0, Lcom/kontagent/Stateful;->mState:Lcom/kontagent/Stateful$State;

    monitor-exit v9

    .line 68
    .end local v7    # "state":Lcom/kontagent/Stateful$State;
    :goto_2
    return-object v8

    .line 61
    .restart local v7    # "state":Lcom/kontagent/Stateful$State;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 66
    .end local v7    # "state":Lcom/kontagent/Stateful$State;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v1, v3, v10

    .line 67
    .local v1, "delta":J
    const-wide/16 v10, 0x0

    cmp-long v8, v1, v10

    if-gez v8, :cond_2

    .line 68
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_2

    .line 72
    .end local v0    # "arr$":[Lcom/kontagent/Stateful$State;
    .end local v1    # "delta":J
    .end local v3    # "endTime":J
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 70
    .restart local v0    # "arr$":[Lcom/kontagent/Stateful$State;
    .restart local v1    # "delta":J
    .restart local v3    # "endTime":J
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/kontagent/Stateful;->mStateSync:Ljava/lang/Object;

    invoke-virtual {v8, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs waitStates([Lcom/kontagent/Stateful$State;)Lcom/kontagent/Stateful$State;
    .locals 3
    .param p1, "states"    # [Lcom/kontagent/Stateful$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 50
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0, v1, v2, p1}, Lcom/kontagent/Stateful;->waitStates(J[Lcom/kontagent/Stateful$State;)Lcom/kontagent/Stateful$State;

    move-result-object v0

    .line 51
    .local v0, "state":Lcom/kontagent/Stateful$State;
    if-eqz v0, :cond_0

    .line 52
    return-object v0
.end method
