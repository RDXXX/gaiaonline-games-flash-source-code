.class Lcom/ansca/corona/ViewManager$17;
.super Ljava/lang/Object;
.source "ViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/ViewManager;->destroyVideoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/ViewManager;


# direct methods
.method constructor <init>(Lcom/ansca/corona/ViewManager;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 870
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$600(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 883
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$600(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 875
    .local v0, "parentView":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 876
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parentView":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$600(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaVideoView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 878
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 879
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getGLView()Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->setVisibility(I)V

    .line 880
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    invoke-static {v1}, Lcom/ansca/corona/ViewManager;->access$100(Lcom/ansca/corona/ViewManager;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getGLView()Lcom/ansca/corona/opengl/CoronaGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/opengl/CoronaGLSurfaceView;->requestFocus()Z

    .line 882
    :cond_2
    iget-object v1, p0, Lcom/ansca/corona/ViewManager$17;->this$0:Lcom/ansca/corona/ViewManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ansca/corona/ViewManager;->access$602(Lcom/ansca/corona/ViewManager;Lcom/ansca/corona/CoronaVideoView;)Lcom/ansca/corona/CoronaVideoView;

    goto :goto_0
.end method
