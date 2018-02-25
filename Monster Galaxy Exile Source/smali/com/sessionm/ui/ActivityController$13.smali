.class Lcom/sessionm/ui/ActivityController$13;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/ui/ActivityController$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->handleOpenMessageAsync(Lcom/sessionm/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$controller:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$message:Lcom/sessionm/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;Lcom/sessionm/ui/ActivityController;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$13;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$13;->val$message:Lcom/sessionm/json/JSONObject;

    iput-object p3, p0, Lcom/sessionm/ui/ActivityController$13;->val$controller:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 704
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 685
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    .line 699
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->this$0:Lcom/sessionm/ui/ActivityController;

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$13;->val$message:Lcom/sessionm/json/JSONObject;

    invoke-static {v0, v1, v3}, Lcom/sessionm/ui/ActivityController;->access$1200(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/json/JSONObject;Lcom/sessionm/json/JSONObject;)V

    .line 690
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->val$message:Lcom/sessionm/json/JSONObject;

    const-string v1, "child"

    invoke-virtual {v0, v1}, Lcom/sessionm/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->val$message:Lcom/sessionm/json/JSONObject;

    const-string v1, "orientation"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sessionm/json/JSONObject;->getArray(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 695
    if-eqz v0, :cond_2

    .line 696
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$13;->val$controller:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1, v0}, Lcom/sessionm/ui/ActivityController;->access$1300(Lcom/sessionm/ui/ActivityController;[Ljava/lang/String;)V

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$13;->val$controller:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0, v3}, Lcom/sessionm/ui/ActivityController;->access$1400(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V

    goto :goto_0
.end method
