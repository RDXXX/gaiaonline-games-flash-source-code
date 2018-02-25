.class public Lcom/ansca/corona/events/DidFailLoadUrlEvent;
.super Lcom/ansca/corona/events/Event;
.source "DidFailLoadUrlEvent.java"


# instance fields
.field private myDescription:Ljava/lang/String;

.field private myErrorCode:I

.field private myFailingUrl:Ljava/lang/String;

.field private myId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "failingUrl"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "errorCode"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 11
    iput p1, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myId:I

    .line 12
    iput-object p2, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myFailingUrl:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myDescription:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myErrorCode:I

    .line 15
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 4

    .prologue
    .line 20
    iget v0, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myId:I

    iget-object v1, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myFailingUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myDescription:Ljava/lang/String;

    iget v3, p0, Lcom/ansca/corona/events/DidFailLoadUrlEvent;->myErrorCode:I

    invoke-static {v0, v1, v2, v3}, Lcom/ansca/corona/JavaToNativeShim;->webViewDidFailLoadUrl(ILjava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method
