.class Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;
.super Ljava/lang/Object;
.source "AndroidFacebookService.java"

# interfaces
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->logout(Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

.field private final synthetic val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 110
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/FacebookError;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 136
    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/io/FileNotFoundException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 123
    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 116
    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 2
    .param p1, "e"    # Ljava/net/MalformedURLException;
    .param p2, "state"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->this$0:Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;->access$4(Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/service/AndroidFacebookService$2;->val$onCompletedHandler:Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/gaiaonline/monstergalaxy/service/FacebookService$OnCompletedHandler;->onCompleted(Z)V

    .line 130
    return-void
.end method
