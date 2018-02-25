.class abstract Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;
.super Ljava/lang/Object;
.source "CoronaSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/CoronaSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SensorMonitor"
.end annotation


# instance fields
.field private fIsRunning:Z

.field private fSensorListener:Landroid/hardware/SensorEventListener;

.field private fTimer:Lcom/ansca/corona/MessageBasedTimer;

.field final synthetic this$0:Lcom/ansca/corona/CoronaSensorManager;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/CoronaSensorManager;)V
    .locals 1

    .prologue
    .line 235
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->this$0:Lcom/ansca/corona/CoronaSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    .line 238
    new-instance v0, Lcom/ansca/corona/MessageBasedTimer;

    invoke-direct {v0}, Lcom/ansca/corona/MessageBasedTimer;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    .line 242
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->setIntervalInHertz(I)V

    .line 243
    return-void
.end method

.method private getSensorDelay()I
    .locals 5

    .prologue
    .line 419
    iget-object v3, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v3}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v1

    .line 420
    .local v1, "intervalInMilliseconds":J
    const-wide/16 v3, 0xc8

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 421
    const/4 v0, 0x3

    .line 432
    .local v0, "delayType":I
    :goto_0
    return v0

    .line 423
    .end local v0    # "delayType":I
    :cond_0
    const-wide/16 v3, 0x3c

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1

    .line 424
    const/4 v0, 0x2

    .restart local v0    # "delayType":I
    goto :goto_0

    .line 426
    .end local v0    # "delayType":I
    :cond_1
    const-wide/16 v3, 0x14

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 427
    const/4 v0, 0x1

    .restart local v0    # "delayType":I
    goto :goto_0

    .line 430
    .end local v0    # "delayType":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "delayType":I
    goto :goto_0
.end method


# virtual methods
.method public getInterval()Lcom/ansca/corona/TimeSpan;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    return-object v0
.end method

.method public getIntervalInHertz()I
    .locals 4

    .prologue
    .line 322
    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v2}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/TimeSpan;->getTotalMilliseconds()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public abstract getSensorType()I
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    return v0
.end method

.method protected onStarting()V
    .locals 0

    .prologue
    .line 405
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public setIntervalInHertz(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 295
    const/16 v2, 0x3e8

    div-int/2addr v2, p1

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/ansca/corona/TimeSpan;->fromMilliseconds(J)Lcom/ansca/corona/TimeSpan;

    move-result-object v0

    .line 298
    .local v0, "interval":Lcom/ansca/corona/TimeSpan;
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v2}, Lcom/ansca/corona/MessageBasedTimer;->getInterval()Lcom/ansca/corona/TimeSpan;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ansca/corona/TimeSpan;->equals(Lcom/ansca/corona/TimeSpan;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v1

    .line 304
    .local v1, "wasRunning":Z
    if-eqz v1, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->stop()V

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v2, v0}, Lcom/ansca/corona/MessageBasedTimer;->setInterval(Lcom/ansca/corona/TimeSpan;)V

    .line 312
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->start()V

    goto :goto_0
.end method

.method protected setSensorListener(Landroid/hardware/SensorEventListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    if-ne p1, v1, :cond_2

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v0

    .line 263
    .local v0, "wasRunning":Z
    if-eqz v0, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->stop()V

    .line 268
    :cond_3
    iput-object p1, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    .line 271
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->start()V

    goto :goto_0
.end method

.method protected setTimerListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/ansca/corona/MessageBasedTimer$Listener;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0, p1}, Lcom/ansca/corona/MessageBasedTimer;->setListener(Lcom/ansca/corona/MessageBasedTimer$Listener;)V

    .line 286
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->onStarting()V

    .line 361
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 363
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->getSensorType()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 364
    .local v2, "sensor":Landroid/hardware/Sensor;
    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->getSensorDelay()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 365
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    .line 369
    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v4}, Lcom/ansca/corona/MessageBasedTimer;->getListener()Lcom/ansca/corona/MessageBasedTimer$Listener;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 370
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 371
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_2

    .line 372
    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ansca/corona/MessageBasedTimer;->setHandler(Landroid/os/Handler;)V

    .line 374
    :cond_2
    iget-object v4, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v4}, Lcom/ansca/corona/MessageBasedTimer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 377
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    .end local v3    # "sensorManager":Landroid/hardware/SensorManager;
    :catch_0
    move-exception v1

    .line 378
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 402
    :goto_0
    return-void

    .line 392
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 394
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 395
    iget-object v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fTimer:Lcom/ansca/corona/MessageBasedTimer;

    invoke-virtual {v2}, Lcom/ansca/corona/MessageBasedTimer;->stop()V

    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->fIsRunning:Z

    .line 397
    invoke-virtual {p0}, Lcom/ansca/corona/CoronaSensorManager$SensorMonitor;->onStopped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    .end local v1    # "sensorManager":Landroid/hardware/SensorManager;
    :catch_0
    move-exception v0

    .line 400
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
