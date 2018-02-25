.class Lcom/sessionm/ui/SessionMActivity$3;
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
    .line 297
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$3;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$3;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$500(Lcom/sessionm/ui/SessionMActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 301
    return-void
.end method
