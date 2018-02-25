.class public Lcom/ansca/corona/events/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"


# instance fields
.field private myEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/ansca/corona/events/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/Queue;

    .line 23
    return-void
.end method

.method public static touchActionToPhase(I)I
    .locals 4
    .param p0, "action"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    .local v0, "phase":I
    packed-switch p0, :pswitch_data_0

    .line 54
    :pswitch_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown touch phase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    :goto_0
    return v0

    .line 41
    :pswitch_1
    const/4 v0, 0x0

    .line 42
    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v0, 0x1

    .line 45
    goto :goto_0

    .line 48
    :pswitch_3
    const/4 v0, 0x3

    .line 49
    goto :goto_0

    .line 51
    :pswitch_4
    const/4 v0, 0x4

    .line 52
    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public accelerometerEvent(DDDD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "deltaTime"    # D

    .prologue
    .line 67
    new-instance v0, Lcom/ansca/corona/events/AccelerometerEvent;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/events/AccelerometerEvent;-><init>(DDDD)V

    .line 69
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 70
    return-void
.end method

.method public adRequestEvent(Z)V
    .locals 1
    .param p1, "isError"    # Z

    .prologue
    .line 265
    new-instance v0, Lcom/ansca/corona/events/AdRequestEvent;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/AdRequestEvent;-><init>(Z)V

    .line 266
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 267
    return-void
.end method

.method public declared-synchronized addEvent(Lcom/ansca/corona/events/Event;)V
    .locals 1
    .param p1, "e"    # Lcom/ansca/corona/events/Event;

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {}, Lcom/ansca/corona/Controller;->requestEventRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public creditsRequestEvent(II)V
    .locals 1
    .param p1, "newPoints"    # I
    .param p2, "totalPoints"    # I

    .prologue
    .line 279
    new-instance v0, Lcom/ansca/corona/events/CreditsRequestEvent;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/events/CreditsRequestEvent;-><init>(II)V

    .line 281
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 282
    return-void
.end method

.method public didFailLoadUrlEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "failingUrl"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "errorCode"    # I

    .prologue
    .line 216
    new-instance v0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ansca/corona/events/DidFailLoadUrlEvent;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 217
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 218
    return-void
.end method

.method public declared-synchronized fbConnectRequestEvent(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isError"    # Z

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/FBConnectEvent;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/events/FBConnectEvent;-><init>(Ljava/lang/String;Z)V

    .line 245
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 244
    .end local v0    # "e":Lcom/ansca/corona/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fbConnectRequestEvent(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isError"    # Z
    .param p3, "didComplete"    # Z

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/FBConnectEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/FBConnectEvent;-><init>(Ljava/lang/String;ZZ)V

    .line 251
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 250
    .end local v0    # "e":Lcom/ansca/corona/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fbConnectSessionEvent(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 227
    monitor-enter p0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(ILjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fbConnectSessionEvent(ILjava/lang/String;J)V
    .locals 2
    .param p1, "phase"    # I
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "tokenExpiration"    # J

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/FBConnectEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ansca/corona/events/FBConnectEvent;-><init>(ILjava/lang/String;J)V

    .line 233
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "e":Lcom/ansca/corona/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized fbConnectSessionEventError(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/FBConnectEvent;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/FBConnectEvent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 238
    .end local v0    # "e":Lcom/ansca/corona/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finishedLoadUrlEvent(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    new-instance v0, Lcom/ansca/corona/events/FinishedLoadUrlEvent;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/events/FinishedLoadUrlEvent;-><init>(ILjava/lang/String;)V

    .line 212
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 213
    return-void
.end method

.method public gyroscopeEvent(DDDD)V
    .locals 9
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .param p7, "deltaTime"    # D

    .prologue
    .line 74
    new-instance v0, Lcom/ansca/corona/events/GyroscopeEvent;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/ansca/corona/events/GyroscopeEvent;-><init>(DDDD)V

    .line 76
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 77
    return-void
.end method

.method public headingEvent(F)V
    .locals 16
    .param p1, "heading"    # F

    .prologue
    .line 88
    new-instance v1, Lcom/ansca/corona/events/LocationEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move/from16 v0, p1

    float-to-double v12, v0

    const-wide/16 v14, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/ansca/corona/events/LocationEvent;-><init>(DDDDDDD)V

    .line 90
    .local v1, "e":Lcom/ansca/corona/events/Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 91
    return-void
.end method

.method public declared-synchronized imagePickerEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "selectedFileName"    # Ljava/lang/String;

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/ImagePickerEvent;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/ImagePickerEvent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "e":Lcom/ansca/corona/events/ImagePickerEvent;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 290
    .end local v0    # "e":Lcom/ansca/corona/events/ImagePickerEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized keyboardEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ansca/corona/events/KeyboardEvent;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/KeyboardEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 286
    .local v0, "e":Lcom/ansca/corona/events/KeyboardEvent;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "e":Lcom/ansca/corona/events/KeyboardEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadEventSound(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/MediaManager;->loadEventSound(ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public loadSound(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ansca/corona/MediaManager;->loadSound(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method public locationEvent(DDDDDDD)V
    .locals 15
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "altitude"    # D
    .param p7, "accuracy"    # D
    .param p9, "speed"    # D
    .param p11, "bearing"    # D
    .param p13, "time"    # D

    .prologue
    .line 81
    new-instance v0, Lcom/ansca/corona/events/LocationEvent;

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lcom/ansca/corona/events/LocationEvent;-><init>(DDDDDDD)V

    .line 83
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 84
    return-void
.end method

.method public nativeAlertResult(IZ)V
    .locals 1
    .param p1, "which"    # I
    .param p2, "cancelled"    # Z

    .prologue
    .line 109
    new-instance v0, Lcom/ansca/corona/events/AlertEvent;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/events/AlertEvent;-><init>(IZ)V

    .line 111
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 112
    return-void
.end method

.method public networkRequestEvent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "listenerId"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 255
    new-instance v0, Lcom/ansca/corona/events/NetworkRequestEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/NetworkRequestEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 257
    return-void
.end method

.method public networkRequestEvent(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "listenerId"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "statusCode"    # I

    .prologue
    .line 260
    new-instance v0, Lcom/ansca/corona/events/NetworkRequestEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ansca/corona/events/NetworkRequestEvent;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 261
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 262
    return-void
.end method

.method public newMultitouchEvent()Lcom/ansca/corona/events/MultitouchEvent;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/ansca/corona/events/MultitouchEvent;

    invoke-direct {v0}, Lcom/ansca/corona/events/MultitouchEvent;-><init>()V

    return-object v0
.end method

.method public orientationChanged(II)V
    .locals 1
    .param p1, "newOrientation"    # I
    .param p2, "oldOrientation"    # I

    .prologue
    .line 102
    new-instance v0, Lcom/ansca/corona/events/OrientationEvent;

    invoke-direct {v0, p1, p2}, Lcom/ansca/corona/events/OrientationEvent;-><init>(II)V

    .line 104
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 105
    return-void
.end method

.method public pauseSound(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PauseSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILcom/ansca/corona/events/MediaEvent$Event;)V

    .line 158
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 159
    return-void
.end method

.method public playSound(ILjava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "soundName"    # Ljava/lang/String;
    .param p3, "loop"    # Z

    .prologue
    .line 140
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PlaySound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, p2, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V

    .line 142
    .local v0, "e":Lcom/ansca/corona/events/MediaEvent;
    invoke-virtual {v0, p3}, Lcom/ansca/corona/events/MediaEvent;->setLooping(Z)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 145
    return-void
.end method

.method public playVideo(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->PlayVideo:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, p2, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V

    .line 172
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 173
    return-void
.end method

.method public declared-synchronized removeAllEvents()V
    .locals 1

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resize(IILcom/ansca/corona/WindowOrientation;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "orientation"    # Lcom/ansca/corona/WindowOrientation;

    .prologue
    .line 123
    new-instance v0, Lcom/ansca/corona/events/ResizeEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/ResizeEvent;-><init>(IILcom/ansca/corona/WindowOrientation;)V

    .line 125
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 126
    return-void
.end method

.method public resumeSound(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 163
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->ResumeSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILcom/ansca/corona/events/MediaEvent$Event;)V

    .line 165
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 166
    return-void
.end method

.method public declared-synchronized sendEvents()V
    .locals 2

    .prologue
    .line 273
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/events/EventManager;->myEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ansca/corona/events/Event;

    .local v0, "e":Lcom/ansca/corona/events/Event;
    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Lcom/ansca/corona/events/Event;->Send()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 273
    .end local v0    # "e":Lcom/ansca/corona/events/Event;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 276
    .restart local v0    # "e":Lcom/ansca/corona/events/Event;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public shouldLoadUrlEvent(ILjava/lang/String;I)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "sourceType"    # I

    .prologue
    .line 205
    new-instance v0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/ShouldLoadUrlEvent;-><init>(ILjava/lang/String;I)V

    .line 207
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 208
    return-void
.end method

.method public soundEnded(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 177
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->SoundEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILcom/ansca/corona/events/MediaEvent$Event;)V

    .line 179
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 180
    return-void
.end method

.method public stopSound(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 149
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->StopSound:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILcom/ansca/corona/events/MediaEvent$Event;)V

    .line 151
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 152
    return-void
.end method

.method public tapEvent(III)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "count"    # I

    .prologue
    .line 116
    new-instance v0, Lcom/ansca/corona/events/TapEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/TapEvent;-><init>(III)V

    .line 118
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 119
    return-void
.end method

.method public textEditingEvent(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "start_pos"    # I
    .param p3, "num_deleted"    # I
    .param p4, "new_characters"    # Ljava/lang/String;
    .param p5, "old_string"    # Ljava/lang/String;
    .param p6, "new_string"    # Ljava/lang/String;

    .prologue
    .line 198
    new-instance v0, Lcom/ansca/corona/events/TextEditingEvent;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ansca/corona/events/TextEditingEvent;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 201
    return-void
.end method

.method public textEvent(IZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "hasFocus"    # Z
    .param p3, "isDone"    # Z

    .prologue
    .line 191
    new-instance v0, Lcom/ansca/corona/events/TextEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/TextEvent;-><init>(IZZ)V

    .line 193
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 194
    return-void
.end method

.method public touchEvent(Lcom/ansca/corona/events/TouchData;)V
    .locals 1
    .param p1, "t"    # Lcom/ansca/corona/events/TouchData;

    .prologue
    .line 95
    new-instance v0, Lcom/ansca/corona/events/TouchEvent;

    invoke-direct {v0, p1}, Lcom/ansca/corona/events/TouchEvent;-><init>(Lcom/ansca/corona/events/TouchData;)V

    .line 97
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 98
    return-void
.end method

.method public videoEnded(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 184
    new-instance v0, Lcom/ansca/corona/events/MediaEvent;

    sget-object v1, Lcom/ansca/corona/events/MediaEvent$Event;->VideoEnded:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-direct {v0, p1, v1}, Lcom/ansca/corona/events/MediaEvent;-><init>(ILcom/ansca/corona/events/MediaEvent$Event;)V

    .line 186
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 187
    return-void
.end method

.method public webHistoryUpdatedEvent(IZZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "canGoBack"    # Z
    .param p3, "canGoForward"    # Z

    .prologue
    .line 221
    new-instance v0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;-><init>(IZZ)V

    .line 222
    .local v0, "e":Lcom/ansca/corona/events/Event;
    invoke-virtual {p0, v0}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    .line 223
    return-void
.end method
