.class Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

.field private final synthetic val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 95
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$3(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 70
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "facebook_access_token"

    .line 72
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "facebook_access_expires"

    .line 74
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v2

    invoke-static {v2}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    .line 73
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 78
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 90
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 2
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$1$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 84
    return-void
.end method
