.class Lcom/ansca/corona/Controller$16;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->facebookDialog(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 1556
    iput-object p1, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$16;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/ansca/corona/Controller$16;->val$params:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v0}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/Controller$16;->val$action:Ljava/lang/String;

    iget-object v3, p0, Lcom/ansca/corona/Controller$16;->this$0:Lcom/ansca/corona/Controller;

    iget-object v4, p0, Lcom/ansca/corona/Controller$16;->val$params:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Lcom/ansca/corona/Controller;->createFacebookBundle(Ljava/util/HashMap;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/ansca/corona/Controller$16$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$16$1;-><init>(Lcom/ansca/corona/Controller$16;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 1585
    return-void
.end method
