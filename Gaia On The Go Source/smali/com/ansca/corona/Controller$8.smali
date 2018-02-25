.class Lcom/ansca/corona/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showNativeActivityIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 810
    iget-object v2, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v2

    .line 812
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 813
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 814
    monitor-exit v2

    .line 829
    :goto_0
    return-void

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    if-nez v1, :cond_1

    .line 819
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    new-instance v3, Lcom/ansca/corona/ActivityIndicatorDialog;

    invoke-direct {v3, v0}, Lcom/ansca/corona/ActivityIndicatorDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v3}, Lcom/ansca/corona/Controller;->access$602(Lcom/ansca/corona/Controller;Lcom/ansca/corona/ActivityIndicatorDialog;)Lcom/ansca/corona/ActivityIndicatorDialog;

    .line 820
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ansca/corona/ActivityIndicatorDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 821
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/ansca/corona/ActivityIndicatorDialog;->setCancelable(Z)V

    .line 825
    :cond_1
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ActivityIndicatorDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 826
    iget-object v1, p0, Lcom/ansca/corona/Controller$8;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$600(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/ActivityIndicatorDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/ActivityIndicatorDialog;->show()V

    .line 828
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "activity":Lcom/ansca/corona/CoronaActivity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
