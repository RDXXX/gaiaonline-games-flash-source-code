.class public Lcom/ansca/corona/events/RunnableEvent;
.super Lcom/ansca/corona/events/Event;
.source "RunnableEvent.java"


# instance fields
.field private fRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ansca/corona/events/Event;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ansca/corona/events/RunnableEvent;->fRunnable:Ljava/lang/Runnable;

    .line 17
    return-void
.end method


# virtual methods
.method public Send()V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ansca/corona/events/RunnableEvent;->fRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/ansca/corona/events/RunnableEvent;->fRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 25
    :cond_0
    return-void
.end method
