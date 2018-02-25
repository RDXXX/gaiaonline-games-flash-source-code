.class public Lcom/ansca/corona/events/AdRequestEvent;
.super Lcom/ansca/corona/events/Event;
.source "AdRequestEvent.java"


# instance fields
.field private fIsError:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "isError"    # Z

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 9
    iput-boolean p1, p0, Lcom/ansca/corona/events/AdRequestEvent;->fIsError:Z

    .line 10
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/ansca/corona/events/AdRequestEvent;->fIsError:Z

    invoke-static {v0}, Lcom/ansca/corona/JavaToNativeShim;->adRequestEvent(Z)V

    .line 15
    return-void
.end method
