.class Lcom/sessionm/core/Session$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/core/Session;->logAction(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/core/Session;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/sessionm/core/Session;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/sessionm/core/Session$3;->this$0:Lcom/sessionm/core/Session;

    iput-object p2, p0, Lcom/sessionm/core/Session$3;->val$params:Ljava/util/Map;

    iput-object p3, p0, Lcom/sessionm/core/Session$3;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/sessionm/core/Session$3;->val$params:Ljava/util/Map;

    .line 432
    if-nez v0, :cond_0

    .line 433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/sessionm/core/Session$3;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v1}, Lcom/sessionm/core/Session;->access$100(Lcom/sessionm/core/Session;)V

    .line 437
    iget-object v1, p0, Lcom/sessionm/core/Session$3;->this$0:Lcom/sessionm/core/Session;

    iget-object v2, p0, Lcom/sessionm/core/Session$3;->val$actionName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sessionm/core/Session;->access$200(Lcom/sessionm/core/Session;Ljava/lang/String;)I

    .line 438
    const-string v1, "event"

    iget-object v2, p0, Lcom/sessionm/core/Session$3;->val$actionName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/sessionm/core/Session$3;->this$0:Lcom/sessionm/core/Session;

    invoke-static {v1, v0}, Lcom/sessionm/core/Session;->access$300(Lcom/sessionm/core/Session;Ljava/util/Map;)V

    .line 440
    return-void
.end method
