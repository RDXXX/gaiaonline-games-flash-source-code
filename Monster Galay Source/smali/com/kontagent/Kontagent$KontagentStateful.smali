.class Lcom/kontagent/Kontagent$KontagentStateful;
.super Lcom/kontagent/Stateful;
.source "Kontagent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/Kontagent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KontagentStateful"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kontagent/Stateful;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kontagent/Kontagent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/kontagent/Kontagent$1;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/kontagent/Kontagent$KontagentStateful;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/kontagent/Kontagent;->access$300()V

    .line 95
    invoke-static {}, Lcom/kontagent/Kontagent;->access$100()Lcom/kontagent/QueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->pause()Z

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/kontagent/Kontagent;->access$100()Lcom/kontagent/QueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->resume()Z

    .line 89
    invoke-static {}, Lcom/kontagent/Kontagent;->access$200()V

    .line 90
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/kontagent/Kontagent;->access$100()Lcom/kontagent/QueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->start()V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/kontagent/Kontagent;->access$100()Lcom/kontagent/QueueManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kontagent/QueueManager;->stop()V

    .line 101
    invoke-static {}, Lcom/kontagent/Kontagent;->access$400()V

    .line 102
    return-void
.end method
