.class Lcom/ansca/corona/Controller$5$1;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 663
    iput-object p1, p0, Lcom/ansca/corona/Controller$5$1;->this$1:Lcom/ansca/corona/Controller$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 665
    move v0, p2

    .line 666
    .local v0, "buttonIndex":I
    if-gez p2, :cond_0

    .line 667
    packed-switch p2, :pswitch_data_0

    .line 679
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/ansca/corona/Controller$5$1;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v2, v2, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v2}, Lcom/ansca/corona/Controller;->access$400(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/events/EventManager;

    move-result-object v1

    .line 680
    .local v1, "eventManager":Lcom/ansca/corona/events/EventManager;
    if-eqz v1, :cond_1

    .line 681
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ansca/corona/events/EventManager;->nativeAlertResult(IZ)V

    .line 683
    :cond_1
    iget-object v2, p0, Lcom/ansca/corona/Controller$5$1;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v3, v2, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v3

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/ansca/corona/Controller$5$1;->this$1:Lcom/ansca/corona/Controller$5;

    iget-object v2, v2, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 685
    monitor-exit v3

    .line 686
    return-void

    .line 669
    .end local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :pswitch_0
    const/4 v0, 0x1

    .line 670
    goto :goto_0

    .line 672
    :pswitch_1
    const/4 v0, 0x2

    .line 673
    goto :goto_0

    .line 675
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 685
    .restart local v1    # "eventManager":Lcom/ansca/corona/events/EventManager;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 667
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
