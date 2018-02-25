.class Lcom/sessionm/ui/SessionMActivity$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/SessionMActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/SessionMActivity;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/SessionMActivity;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v1}, Lcom/sessionm/ui/SessionMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    const-string v3, "url"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v4, "controllerId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    iget-object v4, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {}, Lcom/sessionm/core/Session;->getSession()Lcom/sessionm/core/Session;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sessionm/core/Session;->getCurrentActivityController()Lcom/sessionm/ui/ActivityController;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sessionm/ui/SessionMActivity;->access$002(Lcom/sessionm/ui/SessionMActivity;Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/ActivityController;

    .line 74
    if-eqz v2, :cond_0

    const-string v4, "inlineBrowser"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0, v6}, Lcom/sessionm/ui/SessionMActivity;->access$102(Lcom/sessionm/ui/SessionMActivity;Z)Z

    .line 76
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0, v3}, Lcom/sessionm/ui/SessionMActivity;->access$200(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v2}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v2}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sessionm/ui/ActivityController;->getControllerId()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v0}, Lcom/sessionm/ui/SessionMActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v1}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v1

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v1, v2}, Lcom/sessionm/ui/ActivityController;->setPresentedActivity(Lcom/sessionm/ui/SessionMActivity;)V

    .line 90
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v1, v6}, Lcom/sessionm/ui/SessionMActivity;->requestWindowFeature(I)Z

    .line 92
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v1}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/ui/ActivityController;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/sessionm/ui/SessionMActivity$1$1;

    invoke-direct {v2, p0}, Lcom/sessionm/ui/SessionMActivity$1$1;-><init>(Lcom/sessionm/ui/SessionMActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 110
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    iget-object v2, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v2}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sessionm/ui/ActivityController;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sessionm/ui/SessionMActivity;->setContentView(Landroid/view/View;)V

    .line 112
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v1}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sessionm/ui/ActivityController;->getOrientations()[Ljava/lang/String;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_4

    .line 115
    array-length v1, v2

    if-nez v1, :cond_5

    .line 116
    const/4 v0, -0x1

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v1, v0}, Lcom/sessionm/ui/SessionMActivity;->setRequestedOrientation(I)V

    .line 129
    :cond_4
    if-eqz v3, :cond_7

    .line 130
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->presentLoader()V

    .line 131
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    sget-object v1, Lcom/sessionm/net/Request$Type;->CONTENT:Lcom/sessionm/net/Request$Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sessionm/ui/ActivityController;->loadContent(Lcom/sessionm/net/Request$Type;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadContentListener;)V

    goto :goto_0

    .line 118
    :cond_5
    array-length v4, v2

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    .line 119
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xa

    if-lt v6, v7, :cond_6

    .line 120
    iget-object v6, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v6, v5}, Lcom/sessionm/ui/SessionMActivity;->access$300(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v0, v5

    .line 118
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    :cond_6
    iget-object v6, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v6, v5}, Lcom/sessionm/ui/SessionMActivity;->access$400(Lcom/sessionm/ui/SessionMActivity;Ljava/lang/String;)I

    move-result v5

    or-int/2addr v0, v5

    goto :goto_2

    .line 133
    :cond_7
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->displayView()V

    goto/16 :goto_0
.end method
