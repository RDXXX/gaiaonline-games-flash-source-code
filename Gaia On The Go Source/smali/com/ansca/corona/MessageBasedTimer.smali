.class public Lcom/ansca/corona/MessageBasedTimer;
.super Ljava/lang/Object;
.source "MessageBasedTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/MessageBasedTimer$Listener;
    }
.end annotation


# static fields
.field public static final MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;


# instance fields
.field private fHandler:Landroid/os/Handler;

.field private fInterval:Lcom/ansca/corona/TimeSpan;

.field private fIsRunning:Z

.field private fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

.field private fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

.field private fRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    .line 53
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    .line 54
    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    .line 55
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/ansca/corona/TimeSpan;->fromMinutes(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    .line 56
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/ansca/corona/MessageBasedTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/ansca/corona/MessageBasedTimer;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ansca/corona/MessageBasedTimer;->onElapsed()V

    return-void
.end method

.method private onElapsed()V
    .locals 5

    .prologue
    .line 218
    iget-boolean v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v3, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    invoke-interface {v3}, Lcom/ansca/corona/MessageBasedTimer$Listener;->onTimerElapsed()V

    .line 228
    :cond_2
    iget-boolean v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-eqz v3, :cond_0

    .line 233
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    .line 235
    .local v0, "currentTimeInTicks":Lcom/ansca/corona/Ticks;
    :cond_3
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    iget-object v4, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/Ticks;->add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;

    move-result-object v3

    iput-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    .line 236
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    invoke-virtual {v3, v0}, Lcom/ansca/corona/Ticks;->compareTo(Lcom/ansca/corona/Ticks;)I

    move-result v3

    if-lez v3, :cond_3

    .line 237
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    invoke-virtual {v3, v0}, Lcom/ansca/corona/Ticks;->subtract(Lcom/ansca/corona/Ticks;)Lcom/ansca/corona/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v1

    .line 238
    .local v1, "delayInMilliseconds":J
    iget-object v3, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInterval()Lcom/ansca/corona/TimeSpan;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    return-object v0
.end method

.method public getListener()Lcom/ansca/corona/MessageBasedTimer$Listener;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    return-object v0
.end method

.method public isNotRunning()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-ne p1, v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    .line 81
    .local v0, "wasRunning":Z
    iget-boolean v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-eqz v1, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 86
    :cond_2
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    .line 89
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/ansca/corona/MessageBasedTimer;->start()V

    goto :goto_0
.end method

.method public setInterval(Lcom/ansca/corona/TimeSpan;)V
    .locals 1
    .param p1, "interval"    # Lcom/ansca/corona/TimeSpan;

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    sget-object v0, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/TimeSpan;->compareTo(Lcom/ansca/corona/TimeSpan;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 135
    sget-object p1, Lcom/ansca/corona/MessageBasedTimer;->MIN_INTERVAL:Lcom/ansca/corona/TimeSpan;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {p1, v0}, Lcom/ansca/corona/TimeSpan;->equals(Lcom/ansca/corona/TimeSpan;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :goto_0
    return-void

    .line 144
    :cond_2
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    goto :goto_0
.end method

.method public setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ansca/corona/MessageBasedTimer$Listener;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ansca/corona/MessageBasedTimer;->fListener:Lcom/ansca/corona/MessageBasedTimer$Listener;

    .line 109
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lcom/ansca/corona/MessageBasedTimer$1;

    invoke-direct {v0, p0}, Lcom/ansca/corona/MessageBasedTimer$1;-><init>(Lcom/ansca/corona/MessageBasedTimer;)V

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    .line 193
    invoke-static {}, Lcom/ansca/corona/Ticks;->fromCurrentTime()Lcom/ansca/corona/Ticks;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v0, v1}, Lcom/ansca/corona/Ticks;->add(Lcom/ansca/corona/TimeSpan;)Lcom/ansca/corona/Ticks;

    move-result-object v0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fNextElapseTimeInTicks:Lcom/ansca/corona/Ticks;

    .line 194
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/ansca/corona/MessageBasedTimer;->fInterval:Lcom/ansca/corona/TimeSpan;

    invoke-virtual {v2}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fRunnable:Ljava/lang/Runnable;

    .line 209
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/MessageBasedTimer;->fIsRunning:Z

    goto :goto_0
.end method
