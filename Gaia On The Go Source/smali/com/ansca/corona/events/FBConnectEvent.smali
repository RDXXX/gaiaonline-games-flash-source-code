.class public Lcom/ansca/corona/events/FBConnectEvent;
.super Lcom/ansca/corona/events/Event;
.source "FBConnectEvent.java"


# static fields
.field private static final REQUEST:I = 0x2

.field private static final SESSION:I = 0x0

.field private static final SESSION_ERROR:I = 0x1


# instance fields
.field private myAccessToken:Ljava/lang/String;

.field private myDidComplete:I

.field private myIsError:Z

.field private myMsg:Ljava/lang/String;

.field private myPhase:I

.field private myTokenExpiration:J

.field private myType:I


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .locals 2
    .param p1, "phase"    # I
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "tokenExpiration"    # J

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myType:I

    .line 20
    iput p1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myPhase:I

    .line 21
    iput-object p2, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x3e8

    div-long v0, p3, v0

    iput-wide v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myTokenExpiration:J

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myType:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myMsg:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myTokenExpiration:J

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isError"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myType:I

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myTokenExpiration:J

    .line 41
    iput-object p1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myMsg:Ljava/lang/String;

    .line 42
    iput-boolean p2, p0, Lcom/ansca/corona/events/FBConnectEvent;->myIsError:Z

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myDidComplete:I

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "isError"    # Z
    .param p3, "didComplete"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 48
    const/4 v0, 0x2

    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myType:I

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myTokenExpiration:J

    .line 51
    iput-object p1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myMsg:Ljava/lang/String;

    .line 52
    iput-boolean p2, p0, Lcom/ansca/corona/events/FBConnectEvent;->myIsError:Z

    .line 53
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myDidComplete:I

    .line 54
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 58
    iget v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myType:I

    packed-switch v0, :pswitch_data_0

    .line 71
    :goto_0
    return-void

    .line 60
    :pswitch_0
    iget v1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myPhase:I

    iget-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myAccessToken:Ljava/lang/String;

    :goto_1
    iget-wide v2, p0, Lcom/ansca/corona/events/FBConnectEvent;->myTokenExpiration:J

    invoke-static {v1, v0, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->fbConnectSessionEvent(ILjava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 63
    :pswitch_1
    iget-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myMsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->fbConnectSessionEventError(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/ansca/corona/events/FBConnectEvent;->myMsg:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/ansca/corona/events/FBConnectEvent;->myIsError:Z

    iget v2, p0, Lcom/ansca/corona/events/FBConnectEvent;->myDidComplete:I

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->fbConnectRequestEvent(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
