.class Lcom/ansca/corona/Controller$5$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ansca/corona/Controller$5;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller$5;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/ansca/corona/Controller$5$2;->this$1:Lcom/ansca/corona/Controller$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 690
    iget-object v1, p0, Lcom/ansca/corona/Controller$5$2;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v1, v1, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/events/EventManager;

    move-result-object v0

    .line 691
    .local v0, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v0, :cond_0

    .line 692
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ansca/corona/events/EventManager;->nativeAlertResult(IZ)V

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$5$2;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v2, v1, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v2

    .line 695
    :try_start_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$5$2;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v1, v1, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 696
    monitor-exit v2

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
