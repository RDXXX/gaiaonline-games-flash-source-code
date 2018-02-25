.class Lcom/sessionm/ui/ActivityController$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->launchActivity(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$500(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/core/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/sessionm/core/Session;->notifyActivityStarted(Lcom/sessionm/ui/ActivityController;)V

    .line 345
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 346
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 347
    const-string v2, "url"

    iget-object v3, p0, Lcom/sessionm/ui/ActivityController$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "controllerId"

    iget-object v3, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v3}, Lcom/sessionm/ui/ActivityController;->access$600(Lcom/sessionm/ui/ActivityController;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 349
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 350
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$3;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 352
    return-void
.end method
