.class public Lcom/ansca/corona/events/ShouldLoadUrlEvent;
.super Lcom/ansca/corona/events/Event;
.source "ShouldLoadUrlEvent.java"


# instance fields
.field private myId:I

.field private mySourceType:I

.field private myUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "sourceType"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 10
    iput p1, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->myId:I

    .line 11
    iput-object p2, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->myUrl:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->mySourceType:I

    .line 13
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 3

    .prologue
    .line 17
    iget v0, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->myId:I

    iget-object v1, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->myUrl:Ljava/lang/String;

    iget v2, p0, Lcom/ansca/corona/events/ShouldLoadUrlEvent;->mySourceType:I

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->webViewShouldLoadUrl(ILjava/lang/String;I)V

    .line 18
    return-void
.end method
