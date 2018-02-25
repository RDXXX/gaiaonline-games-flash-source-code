.class Lcom/sessionm/ui/SessionMActivity$7$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/SessionMActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/SessionMActivity$7;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/SessionMActivity$7;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$7$1;->this$1:Lcom/sessionm/ui/SessionMActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$7$1;->this$1:Lcom/sessionm/ui/SessionMActivity$7;

    iget-object v0, v0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v0}, Lcom/sessionm/ui/SessionMActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$7$1;->this$1:Lcom/sessionm/ui/SessionMActivity$7;

    iget-object v0, v0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-virtual {v0}, Lcom/sessionm/ui/SessionMActivity;->finish()V

    .line 405
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$7$1;->this$1:Lcom/sessionm/ui/SessionMActivity$7;

    iget-object v0, v0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    const-string v1, "GreyhoundEventDispatcher.dispatch(\'browserDidClose\',{});"

    invoke-virtual {v0, v1}, Lcom/sessionm/ui/ActivityController;->executeJavascript(Ljava/lang/String;)V

    .line 414
    return-void
.end method
