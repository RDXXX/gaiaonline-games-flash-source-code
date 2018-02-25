.class Lcom/ansca/corona/Controller$5;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->showNativeAlert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$buttonLabels:[Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/Controller$5;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/ansca/corona/Controller$5;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 651
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v6}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 652
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 662
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v6, v0}, Lcom/ansca/corona/Controller;->access$300(Lcom/ansca/corona/Controller;Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 663
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/ansca/corona/Controller$5$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$5$1;-><init>(Lcom/ansca/corona/Controller$5;)V

    .line 688
    .local v4, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/ansca/corona/Controller$5$2;

    invoke-direct {v3, p0}, Lcom/ansca/corona/Controller$5$2;-><init>(Lcom/ansca/corona/Controller$5;)V

    .line 699
    .local v3, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    array-length v2, v6

    .line 700
    .local v2, "buttonCount":I
    :goto_1
    if-gtz v2, :cond_4

    .line 701
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 702
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 719
    :cond_2
    :goto_2
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    monitor-enter v6

    .line 723
    :try_start_0
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/ansca/corona/Controller;->access$502(Lcom/ansca/corona/Controller;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 724
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v5}, Lcom/ansca/corona/Controller;->access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 725
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v5}, Lcom/ansca/corona/Controller;->access$500(Lcom/ansca/corona/Controller;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 726
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .end local v2    # "buttonCount":I
    :cond_3
    move v2, v5

    .line 699
    goto :goto_1

    .line 704
    .restart local v2    # "buttonCount":I
    :cond_4
    const/4 v6, 0x3

    if-gt v2, v6, :cond_6

    .line 705
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 706
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    if-le v2, v7, :cond_5

    .line 709
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    :cond_5
    if-le v2, v8, :cond_2

    .line 712
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 716
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ansca/corona/Controller$5;->val$msg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 717
    iget-object v5, p0, Lcom/ansca/corona/Controller$5;->val$buttonLabels:[Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method
