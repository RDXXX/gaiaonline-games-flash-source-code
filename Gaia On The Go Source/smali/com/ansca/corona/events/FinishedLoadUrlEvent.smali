.class public Lcom/ansca/corona/events/FinishedLoadUrlEvent;
.super Lcom/ansca/corona/events/Event;
.source "FinishedLoadUrlEvent.java"


# instance fields
.field private fId:I

.field private fUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 10
    iput p1, p0, Lcom/ansca/corona/events/FinishedLoadUrlEvent;->fId:I

    .line 11
    iput-object p2, p0, Lcom/ansca/corona/events/FinishedLoadUrlEvent;->fUrl:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lcom/ansca/corona/events/FinishedLoadUrlEvent;->fId:I

    iget-object v1, p0, Lcom/ansca/corona/events/FinishedLoadUrlEvent;->fUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ansca/corona/JavaToNativeShim;->webViewFinishedLoadUrl(ILjava/lang/String;)V

    .line 17
    return-void
.end method
