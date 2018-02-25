.class Lcom/ansca/corona/Controller$13;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->facebookLogin(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/Controller;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ansca/corona/Controller;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    iput-object p2, p0, Lcom/ansca/corona/Controller$13;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v0

    .line 1361
    .local v0, "activity":Lcom/ansca/corona/CoronaActivity;
    if-nez v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v1, p0, Lcom/ansca/corona/Controller$13;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$700(Lcom/ansca/corona/Controller;)Lcom/facebook/android/Facebook;

    move-result-object v1

    iget-object v2, p0, Lcom/ansca/corona/Controller$13;->val$permissions:[Ljava/lang/String;

    const/4 v3, 0x5

    new-instance v4, Lcom/ansca/corona/Controller$13$1;

    invoke-direct {v4, p0}, Lcom/ansca/corona/Controller$13$1;-><init>(Lcom/ansca/corona/Controller$13;)V

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    goto :goto_0
.end method
