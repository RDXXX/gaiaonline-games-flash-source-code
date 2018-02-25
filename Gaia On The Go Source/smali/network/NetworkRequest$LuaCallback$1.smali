.class Lnetwork/NetworkRequest$LuaCallback$1;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnetwork/NetworkRequest$LuaCallback;->call(Lnetwork/NetworkRequest$NetworkRequestState;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnetwork/NetworkRequest$LuaCallback;

.field final synthetic val$callback:Lnetwork/NetworkRequest$LuaCallback;

.field final synthetic val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

.field final synthetic val$willUnregister:Z


# direct methods
.method constructor <init>(Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$LuaCallback;Lnetwork/NetworkRequest$NetworkRequestState;Z)V
    .locals 0

    .prologue
    .line 563
    iput-object p1, p0, Lnetwork/NetworkRequest$LuaCallback$1;->this$1:Lnetwork/NetworkRequest$LuaCallback;

    iput-object p2, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$callback:Lnetwork/NetworkRequest$LuaCallback;

    iput-object p3, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$networkRequest:Lnetwork/NetworkRequest$NetworkRequestState;

    iput-boolean p4, p0, Lnetwork/NetworkRequest$LuaCallback$1;->val$willUnregister:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 572
    new-instance v1, Lnetwork/NetworkRequest$LuaCallback$1$1;

    invoke-direct {v1, p0}, Lnetwork/NetworkRequest$LuaCallback$1$1;-><init>(Lnetwork/NetworkRequest$LuaCallback$1;)V

    .line 624
    .local v1, "task":Lcom/ansca/corona/CoronaRuntimeTask;
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getCoronaActivity()Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 625
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    const-string v2, "Posting callback CoronaRuntimeTask to Corona thread"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->isRuntimeAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 628
    const-string v2, "Runtime is not available, unable to post callback!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lnetwork/NetworkRequest;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :cond_0
    invoke-virtual {v0}, Lcom/ansca/corona/CoronaActivity;->getRuntimeTaskDispatcher()Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ansca/corona/CoronaRuntimeTaskDispatcher;->send(Lcom/ansca/corona/CoronaRuntimeTask;)V

    .line 631
    return-void
.end method
