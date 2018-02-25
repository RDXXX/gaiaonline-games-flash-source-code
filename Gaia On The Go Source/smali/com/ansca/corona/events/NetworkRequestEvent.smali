.class public Lcom/ansca/corona/events/NetworkRequestEvent;
.super Lcom/ansca/corona/events/Event;
.source "NetworkRequestEvent.java"


# instance fields
.field private myIsError:Z

.field private myListenerId:I

.field private myResponse:Ljava/lang/String;

.field private myStatusCode:I

.field private myUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "listenerId"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v3, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/events/NetworkRequestEvent;-><init>(ILjava/lang/String;ZLjava/lang/String;I)V

    .line 14
    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "listenerId"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "statusCode"    # I

    .prologue
    .line 18
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ansca/corona/events/NetworkRequestEvent;-><init>(ILjava/lang/String;ZLjava/lang/String;I)V

    .line 19
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "listenerId"    # I
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "isError"    # Z
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "statusCode"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 23
    iput p1, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myListenerId:I

    .line 24
    iput-object p2, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myResponse:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myIsError:Z

    .line 26
    iput-object p4, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myUrl:Ljava/lang/String;

    .line 27
    iput p5, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myStatusCode:I

    .line 28
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 5

    .prologue
    .line 32
    iget v0, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myListenerId:I

    iget-object v1, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myResponse:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myIsError:Z

    iget-object v3, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myUrl:Ljava/lang/String;

    iget v4, p0, Lcom/ansca/corona/events/NetworkRequestEvent;->myStatusCode:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ansca/corona/JavaToNativeShim;->networkRequestEvent(ILjava/lang/String;ZLjava/lang/String;I)V

    .line 33
    return-void
.end method
