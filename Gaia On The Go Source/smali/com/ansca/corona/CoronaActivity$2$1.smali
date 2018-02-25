.class Lcom/ansca/corona/CoronaActivity$2$1;
.super Ljava/lang/Object;
.source "CoronaActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CoronaActivity$2;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/CoronaActivity$2;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CoronaActivity$2;)V
    .locals 0

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/ansca/corona/CoronaActivity$2$1;->this$1:Lcom/ansca/corona/CoronaActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1045
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$2$1;->this$1:Lcom/ansca/corona/CoronaActivity$2;

    iget-object v1, v1, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$2$1;->this$1:Lcom/ansca/corona/CoronaActivity$2;

    iget-object v1, v1, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1047
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1048
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$2$1;->this$1:Lcom/ansca/corona/CoronaActivity$2;

    iget-object v1, v1, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    invoke-static {v1}, Lcom/ansca/corona/CoronaActivity;->access$000(Lcom/ansca/corona/CoronaActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1050
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/CoronaActivity$2$1;->this$1:Lcom/ansca/corona/CoronaActivity$2;

    iget-object v1, v1, Lcom/ansca/corona/CoronaActivity$2;->this$0:Lcom/ansca/corona/CoronaActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/CoronaActivity;->access$002(Lcom/ansca/corona/CoronaActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1052
    .end local v0    # "group":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method
