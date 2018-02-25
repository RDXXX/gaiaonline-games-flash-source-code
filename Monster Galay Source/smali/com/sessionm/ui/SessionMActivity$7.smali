.class Lcom/sessionm/ui/SessionMActivity$7;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/SessionMActivity;->handleCloseCommand()V
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
    .line 393
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 397
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 399
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    const v2, 0x10a000b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 400
    new-instance v1, Lcom/sessionm/ui/SessionMActivity$7$1;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/SessionMActivity$7$1;-><init>(Lcom/sessionm/ui/SessionMActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 416
    iget-object v1, p0, Lcom/sessionm/ui/SessionMActivity$7;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v1}, Lcom/sessionm/ui/SessionMActivity;->access$800(Lcom/sessionm/ui/SessionMActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    return-void
.end method
