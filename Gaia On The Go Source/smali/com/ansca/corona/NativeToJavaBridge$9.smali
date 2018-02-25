.class final Lcom/ansca/corona/NativeToJavaBridge$9;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callStoreFinishTransaction(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$transactionStringId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2592
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$9;->val$transactionStringId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2594
    monitor-enter p0

    .line 2595
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 2596
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 2597
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$9;->val$transactionStringId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/purchasing/StoreProxy;->confirmTransaction(Ljava/lang/String;)V

    .line 2599
    :cond_0
    monitor-exit p0

    .line 2600
    return-void

    .line 2599
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
