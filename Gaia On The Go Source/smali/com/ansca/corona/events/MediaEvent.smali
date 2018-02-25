.class public Lcom/ansca/corona/events/MediaEvent;
.super Lcom/ansca/corona/events/Event;
.source "MediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/events/MediaEvent$1;,
        Lcom/ansca/corona/events/MediaEvent$Event;
    }
.end annotation


# instance fields
.field myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

.field myLooping:Z

.field myMediaId:I

.field myMediaName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "event"    # Lcom/ansca/corona/events/MediaEvent$Event;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 32
    iput-object p2, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 33
    iput p1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    .line 34
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "event"    # Lcom/ansca/corona/events/MediaEvent$Event;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 38
    iput-object p3, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 39
    iput p1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    .line 40
    iput-object p2, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ansca/corona/events/MediaEvent$Event;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "event"    # Lcom/ansca/corona/events/MediaEvent$Event;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 26
    iput-object p2, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    .line 27
    iput-object p1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/ansca/corona/events/MediaEvent$1;->$SwitchMap$com$ansca$corona$events$MediaEvent$Event:[I

    iget-object v1, p0, Lcom/ansca/corona/events/MediaEvent;->myEvent:Lcom/ansca/corona/events/MediaEvent$Event;

    invoke-virtual {v1}, Lcom/ansca/corona/events/MediaEvent$Event;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    :pswitch_0
    return-void

    .line 54
    :pswitch_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    iget-boolean v2, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/MediaManager;->playMedia(IZ)V

    goto :goto_0

    .line 57
    :pswitch_2
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MediaManager;->stopMedia(I)V

    goto :goto_0

    .line 60
    :pswitch_3
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MediaManager;->pauseMedia(I)V

    goto :goto_0

    .line 63
    :pswitch_4
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    invoke-virtual {v0, v1}, Lcom/ansca/corona/MediaManager;->resumeMedia(I)V

    goto :goto_0

    .line 66
    :pswitch_5
    invoke-static {}, Lcom/ansca/corona/Controller;->getMediaManager()Lcom/ansca/corona/MediaManager;

    move-result-object v0

    iget v1, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    iget-object v2, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ansca/corona/MediaManager;->playVideo(ILjava/lang/String;Z)V

    goto :goto_0

    .line 70
    :pswitch_6
    iget v0, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->soundEndCallback(I)V

    goto :goto_0

    .line 73
    :pswitch_7
    iget v0, p0, Lcom/ansca/corona/events/MediaEvent;->myMediaId:I

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->videoEndCallback(I)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setLooping(Z)V
    .locals 0
    .param p1, "l"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/ansca/corona/events/MediaEvent;->myLooping:Z

    .line 46
    return-void
.end method
