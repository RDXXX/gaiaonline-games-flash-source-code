.class Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    .line 1006
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADED_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$100(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$State;)V

    .line 991
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 992
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismissLoader()V

    .line 994
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Lcom/sessionm/api/SessionM;->getActivityListener()Lcom/sessionm/api/ActivityListener;

    move-result-object v1

    .line 996
    if-eqz v1, :cond_1

    .line 997
    invoke-interface {v1, v0}, Lcom/sessionm/api/ActivityListener;->onFinishLoading(Lcom/sessionm/api/SessionM;)V

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1700(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1001
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->displayView()V

    goto :goto_0

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$1700(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sessionm/ui/ActivityController$LoadWebViewListener;->onWebViewLoaded()V

    .line 1004
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$2;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->this$0:Lcom/sessionm/ui/ActivityController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$1702(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)Lcom/sessionm/ui/ActivityController$LoadWebViewListener;

    goto :goto_0
.end method
