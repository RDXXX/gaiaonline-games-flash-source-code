.class final Lcom/ansca/corona/NativeToJavaBridge$10;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callStoreRestoreCompletedTransactions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2609
    monitor-enter p0

    .line 2610
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 2611
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 2612
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreProxy;->restorePurchases()V

    .line 2614
    :cond_0
    monitor-exit p0

    .line 2615
    return-void

    .line 2614
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
