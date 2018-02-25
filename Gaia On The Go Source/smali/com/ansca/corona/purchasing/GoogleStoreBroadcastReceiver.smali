.class public Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GoogleStoreBroadcastReceiver.java"


# static fields
.field private static sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;

    .prologue
    .line 23
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 33
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static removeListener(Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    sget-object v2, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastReceiver;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;

    .line 58
    .local v1, "listener":Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;
    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1, p1, p2}, Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    .end local v1    # "listener":Lcom/ansca/corona/purchasing/GoogleStoreBroadcastListener;
    :cond_1
    return-void
.end method
