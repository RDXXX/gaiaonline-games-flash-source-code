.class Lcom/sessionm/ui/SessionMActivity$5;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/SessionMActivity;->createBrowserControlLayout()V
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
    .line 312
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$5;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$5;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$500(Lcom/sessionm/ui/SessionMActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$5;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$500(Lcom/sessionm/ui/SessionMActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 316
    :cond_0
    return-void
.end method
