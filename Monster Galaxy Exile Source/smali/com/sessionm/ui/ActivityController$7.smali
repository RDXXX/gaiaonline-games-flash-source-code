.class Lcom/sessionm/ui/ActivityController$7;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->dismiss()V
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
    .line 406
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$400(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismissLoader()V

    .line 414
    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/core/Session;->getRequestQueue()Lcom/sessionm/net/RequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/net/RequestQueue;->getHttpClient()Lcom/sessionm/net/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sessionm/net/HttpClient;->storeCookies()V

    .line 416
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$800(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/SessionMActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 417
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$800(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/SessionMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/SessionMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 418
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$800(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/SessionMActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/SessionMActivity;->finish()V

    .line 436
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$400(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/WebView;->destroy()V

    .line 437
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0, v3}, Lcom/sessionm/ui/ActivityController;->access$402(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/WebView;)Lcom/sessionm/ui/WebView;

    .line 438
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0, v3}, Lcom/sessionm/ui/ActivityController;->access$902(Lcom/sessionm/ui/ActivityController;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 440
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$500(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/core/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0, v1}, Lcom/sessionm/core/Session;->notifyActivityFinished(Lcom/sessionm/ui/ActivityController;)V

    .line 442
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->PRESENTED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    .line 443
    :goto_2
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v2, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    invoke-static {v1, v2}, Lcom/sessionm/ui/ActivityController;->access$100(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$State;)V

    .line 445
    if-eqz v0, :cond_0

    .line 446
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Lcom/sessionm/api/SessionM;->getActivityListener()Lcom/sessionm/api/ActivityListener;

    move-result-object v1

    .line 448
    if-eqz v1, :cond_0

    .line 450
    :try_start_0
    invoke-interface {v1, v0}, Lcom/sessionm/api/ActivityListener;->onDismissed(Lcom/sessionm/api/SessionM;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    .line 452
    const-string v1, "ActivityController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling ActivityListener.onDismissed(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sessionm/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$900(Lcom/sessionm/ui/ActivityController;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$900(Lcom/sessionm/ui/ActivityController;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 423
    if-eqz v0, :cond_5

    .line 424
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$900(Lcom/sessionm/ui/ActivityController;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 429
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 430
    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$7;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v1}, Lcom/sessionm/ui/ActivityController;->access$300(Lcom/sessionm/ui/ActivityController;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 431
    if-eqz v1, :cond_2

    .line 432
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_1

    .line 426
    :cond_5
    const-string v0, "ActivityController"

    const-string v1, "container has no parent?"

    invoke-static {v0, v1}, Lcom/sessionm/logging/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 442
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2
.end method
