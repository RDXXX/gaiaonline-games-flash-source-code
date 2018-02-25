.class Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;

.field private final synthetic val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 206
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 201
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 196
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->this$1:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;->access$0(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3;)Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$3$1;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 190
    return-void
.end method
