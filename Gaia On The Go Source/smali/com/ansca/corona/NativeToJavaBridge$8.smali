.class final Lcom/ansca/corona/NativeToJavaBridge$8;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/NativeToJavaBridge;->callStorePurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$productName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2577
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$8;->val$productName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2579
    monitor-enter p0

    .line 2580
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/Controller;->getActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 2581
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-eqz v0, :cond_0

    .line 2582
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getStore()Lcom/ansca/corona/purchasing/StoreProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/NativeToJavaBridge$8;->val$productName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ansca/corona/purchasing/StoreProxy;->purchase(Ljava/lang/String;)V

    .line 2584
    :cond_0
    monitor-exit p0

    .line 2585
    return-void

    .line 2584
    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
