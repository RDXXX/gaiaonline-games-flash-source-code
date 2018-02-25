.class Lcom/ansca/corona/Controller$13$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$13;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$13;)V
    .locals 0

    .prologue
    .line 1365
    iput-object p1, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private storeLoginInfo()V
    .locals 4

    .prologue
    .line 1403
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "facebook-session"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1405
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 1406
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    iget-object v2, v2, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1407
    const-string v1, "expires_in"

    iget-object v2, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    iget-object v2, v2, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1410
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 1395
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    invoke-direct {p0}, Lcom/ansca/corona/Controller$13$1;->storeLoginInfo()V

    .line 1397
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(I)V

    .line 1399
    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 1367
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    iget-object v0, v0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    invoke-direct {p0}, Lcom/ansca/corona/Controller$13$1;->storeLoginInfo()V

    .line 1371
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    iget-object v2, v2, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ansca/corona/Controller$13$1;->this$1:Lcom/ansca/corona/Controller$13;

    iget-object v3, v3, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v3}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEvent(ILjava/lang/String;J)V

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1378
    :cond_1
    invoke-virtual {p0}, Lcom/ansca/corona/Controller$13$1;->onCancel()V

    goto :goto_0
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 1389
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-direct {p0}, Lcom/ansca/corona/Controller$13$1;->storeLoginInfo()V

    .line 1391
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEventError(Ljava/lang/String;)V

    .line 1393
    :cond_0
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 2
    .param p1, "e"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 1383
    invoke-static {}, Lcom/ansca/corona/Controller;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    invoke-direct {p0}, Lcom/ansca/corona/Controller$13$1;->storeLoginInfo()V

    .line 1385
    invoke-static {}, Lcom/ansca/corona/Controller;->getEventManager()Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ansca/corona/events/EventManager;->fbConnectSessionEventError(Ljava/lang/String;)V

    .line 1387
    :cond_0
    return-void
.end method
