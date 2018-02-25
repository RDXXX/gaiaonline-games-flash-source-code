.class Lcom/sessionm/ui/ActivityController$8;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/ui/ActivityController$LoadContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController;->prepare(Ljava/lang/String;Lcom/sessionm/ui/ActivityController$PrepareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sessionm/ui/ActivityController;

.field final synthetic val$prepareListener:Lcom/sessionm/ui/ActivityController$PrepareListener;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController;Lcom/sessionm/ui/ActivityController$PrepareListener;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$8;->this$0:Lcom/sessionm/ui/ActivityController;

    iput-object p2, p0, Lcom/sessionm/ui/ActivityController$8;->val$prepareListener:Lcom/sessionm/ui/ActivityController$PrepareListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$8;->this$0:Lcom/sessionm/ui/ActivityController;

    new-instance v1, Lcom/sessionm/ui/ActivityController$8$1;

    invoke-direct {v1, p0}, Lcom/sessionm/ui/ActivityController$8$1;-><init>(Lcom/sessionm/ui/ActivityController$8;)V

    invoke-static {v0, p1, p2, v1}, Lcom/sessionm/ui/ActivityController;->access$200(Lcom/sessionm/ui/ActivityController;Ljava/lang/String;Ljava/lang/String;Lcom/sessionm/ui/ActivityController$LoadWebViewListener;)V

    .line 487
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$8;->val$prepareListener:Lcom/sessionm/ui/ActivityController$PrepareListener;

    invoke-interface {v0, p1}, Lcom/sessionm/ui/ActivityController$PrepareListener;->onFailure(Ljava/lang/Throwable;)V

    .line 492
    return-void
.end method
