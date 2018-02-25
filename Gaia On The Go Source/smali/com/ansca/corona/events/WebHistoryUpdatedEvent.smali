.class public Lcom/ansca/corona/events/WebHistoryUpdatedEvent;
.super Lcom/ansca/corona/events/Event;
.source "WebHistoryUpdatedEvent.java"


# instance fields
.field private fCanGoBack:Z

.field private fCanGoForward:Z

.field private fId:I


# direct methods
.method constructor <init>(IZZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "canGoBack"    # Z
    .param p3, "canGoForward"    # Z

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 11
    iput p1, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fId:I

    .line 12
    iput-boolean p2, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fCanGoBack:Z

    .line 13
    iput-boolean p3, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fCanGoForward:Z

    .line 14
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 3

    .prologue
    .line 18
    iget v0, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fId:I

    iget-boolean v1, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fCanGoBack:Z

    iget-boolean v2, p0, Lcom/ansca/corona/events/WebHistoryUpdatedEvent;->fCanGoForward:Z

    invoke-static {v0, v1, v2}, Lcom/ansca/corona/JavaToNativeShim;->webViewHistoryUpdated(IZZ)V

    .line 19
    return-void
.end method
