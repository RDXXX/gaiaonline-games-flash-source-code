.class public abstract Lcom/ansca/corona/purchasing/Store;
.super Ljava/lang/Object;
.source "Store.java"


# instance fields
.field private fActivity:Landroid/app/Activity;

.field private fIsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract canMakePurchases()Z
.end method

.method public abstract confirmTransaction(Ljava/lang/String;)V
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    .line 73
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/Store;->onDisabled()V

    goto :goto_0
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    if-eqz v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 54
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    .line 55
    invoke-virtual {p0}, Lcom/ansca/corona/purchasing/Store;->onEnabled()V

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/ansca/corona/purchasing/Store;->fIsEnabled:Z

    return v0
.end method

.method protected onDisabled()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method protected abstract onEnabled()V
.end method

.method public abstract purchase(Ljava/lang/String;)V
.end method

.method protected raiseTransactionEventFor(Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V
    .locals 3
    .param p1, "result"    # Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;

    .prologue
    .line 127
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 133
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Lcom/ansca/corona/events/RunnableEvent;

    new-instance v2, Lcom/ansca/corona/purchasing/Store$1;

    invoke-direct {v2, p0, p1}, Lcom/ansca/corona/purchasing/Store$1;-><init>(Lcom/ansca/corona/purchasing/Store;Lcom/ansca/corona/purchasing/StoreTransactionResultSettings;)V

    invoke-direct {v1, v2}, Lcom/ansca/corona/events/RunnableEvent;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->addEvent(Lcom/ansca/corona/events/Event;)V

    goto :goto_0
.end method

.method public abstract restorePurchases()V
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ansca/corona/purchasing/Store;->fActivity:Landroid/app/Activity;

    .line 31
    return-void
.end method
