.class Lcom/sessionm/ui/ActivityController$4;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->presentActivity(Lcom/sessionm/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$forecast:Lcom/sessionm/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$4;->val$forecast:Lcom/sessionm/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$500(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/core/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/sessionm/core/Session;->notifyActivityStarted(Lcom/sessionm/ui/ActivityController;)V

    .line 370
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    const-string v1, "data"

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$4;->val$forecast:Lcom/sessionm/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/sessionm/ui/ActivityController;->access$700(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    const-string v1, "submitEvent"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sessionm/ui/ActivityController;->access$700(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$4;->val$forecast:Lcom/sessionm/json/JSONObject;

    const-string v1, "preload_url"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$4;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v2, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sessionm/ui/ActivityController;->loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V

    .line 376
    return-void
.end method
