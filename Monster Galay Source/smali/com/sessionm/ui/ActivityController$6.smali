.class Lcom/sessionm/ui/ActivityController$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->presentIntroduction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$6;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$6;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$500(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/core/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$6;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/sessionm/core/Session;->notifyActivityStarted(Lcom/sessionm/ui/ActivityController;)V

    .line 399
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$6;->this$0:Lcom/sessionm/ui/ActivityController;

    const-string v1, "ad[type]"

    const-string v2, "intro"

    invoke-static {v0, v1, v2}, Lcom/sessionm/ui/ActivityController;->access$700(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$6;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v1, Lcom/sessionm/net/Request$Type;->BUG:Lcom/sessionm/net/Request$Type;

    invoke-virtual {v0, v1, v3, v3}, Lcom/sessionm/ui/ActivityController;->loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V

    .line 401
    return-void
.end method
