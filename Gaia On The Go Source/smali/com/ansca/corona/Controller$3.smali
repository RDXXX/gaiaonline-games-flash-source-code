.class Lcom/ansca/corona/Controller$3;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/Controller;->internalSetIdleTimer(Z)V
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
    .line 581
    iput-object p1, p0, Lcom/ansca/corona/Controller$3;->this$0:Lcom/ansca/corona/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 584
    iget-object v1, p0, Lcom/ansca/corona/Controller$3;->this$0:Lcom/ansca/corona/Controller;

    invoke-static {v1}, Lcom/ansca/corona/Controller;->access$200(Lcom/ansca/corona/Controller;)Lcom/ansca/corona/CoronaActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CoronaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 585
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 587
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 589
    :cond_0
    return-void
.end method
