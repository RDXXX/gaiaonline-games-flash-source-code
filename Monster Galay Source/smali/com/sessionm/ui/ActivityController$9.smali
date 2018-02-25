.class Lcom/sessionm/ui/ActivityController$9;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$js:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$9;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$9;->val$js:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$9;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->getState()Lcom/sessionm/ui/ActivityController$State;

    move-result-object v0

    sget-object v1, Lcom/sessionm/ui/ActivityController$State;->DISMISSED:Lcom/sessionm/ui/ActivityController$State;

    if-ne v0, v1, :cond_0

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$9;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-static {v0}, Lcom/sessionm/ui/ActivityController;->access$400(Lcom/sessionm/ui/ActivityController;)Lcom/sessionm/ui/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/sessionm/ui/ActivityController$9;->val$js:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sessionm/ui/WebView;->executeJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method
