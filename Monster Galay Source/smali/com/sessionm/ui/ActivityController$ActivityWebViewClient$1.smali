.class Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
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
    .line 968
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$ActivityWebViewClient$1;->this$1:Lcom/sessionm/ui/ActivityController$ActivityWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 971
    invoke-static {}, Lcom/sessionm/api/SessionM;->getInstance()Lcom/sessionm/api/SessionM;

    move-result-object v0

    .line 972
    invoke-virtual {v0}, Lcom/sessionm/api/SessionM;->getActivityListener()Lcom/sessionm/api/ActivityListener;

    move-result-object v1

    .line 973
    if-eqz v1, :cond_0

    .line 974
    invoke-interface {v1, v0}, Lcom/sessionm/api/ActivityListener;->onStartLoading(Lcom/sessionm/api/SessionM;)V

    .line 976
    :cond_0
    return-void
.end method
