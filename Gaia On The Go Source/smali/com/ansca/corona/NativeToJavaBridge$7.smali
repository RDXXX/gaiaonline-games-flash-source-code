.class final Lcom/ansca/corona/NativeToJavaBridge$7;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callStoreInit(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$storeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$7;->val$storeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2557
    monitor-enter p0

    .line 2558
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 2559
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_1

    .line 2560
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v1

    .line 2561
    .local v1, "store":Lcom/ansca/corona/purchasing/StoreProxy;
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$7;->val$storeName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$7;->val$storeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 2562
    :cond_0
    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreProxy;->useDefaultStore()V

    .line 2567
    :goto_0
    invoke-virtual {v1}, Lcom/ansca/corona/purchasing/StoreProxy;->enable()V

    .line 2569
    .end local v1    # "store":Lcom/ansca/corona/purchasing/StoreProxy;
    :cond_1
    monitor-exit p0

    .line 2570
    return-void

    .line 2565
    .restart local v1    # "store":Lcom/ansca/corona/purchasing/StoreProxy;
    :cond_2
    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$7;->val$storeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/purchasing/StoreProxy;->useStore(Ljava/lang/String;)V

    goto :goto_0

    .line 2569
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    .end local v1    # "store":Lcom/ansca/corona/purchasing/StoreProxy;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
