.class Lcom/sessionm/ui/ActivityController$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->loadWebView(Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$baseUrl:Ljava/lang/String;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$2;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$2;->val$baseUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/sessionm/ui/ActivityController$2;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$2;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$2;->this$0:Lcom/sessionm/ui/ActivityController;

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->LOADING_WEBVIEW:Lcom/sessionm/ui/ActivityController$State;

    invoke-static {v0, v1}, Lcom/sessionm/ui/ActivityController;->access$100(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$State;)V

    .line 295
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$2;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$400(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$2;->val$baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sessionm/ui/ActivityController$2;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const-string v5, "http://about:blank"

    invoke-virtual/range {v0 .. v5}, Lcom/sessionm/ui/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
