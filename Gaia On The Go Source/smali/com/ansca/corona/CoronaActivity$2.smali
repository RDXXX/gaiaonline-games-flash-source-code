.class Lcom/ansca/corona/CoronaActivity$2;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity;->hideSplashScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CoronaActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity;)V
    .locals 0

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v0}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/ansca/corona/CoronaActivity$2$1;

    invoke-direct {v1, p0}, Lcom/ansca/corona/CoronaActivity$2$1;-><init>(Lcom/ansca/corona/CoronaActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1055
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1036
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1033
    return-void
.end method
