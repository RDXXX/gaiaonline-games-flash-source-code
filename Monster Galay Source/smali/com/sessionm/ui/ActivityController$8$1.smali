.class Lcom/sessionm/ui/ActivityController$8$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/sessionm/ui/ActivityController$LoadWebViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController$8;->onContentLoaded(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/ActivityController$8;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController$8;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$8$1;->this$1:Lcom/sessionm/ui/ActivityController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$8$1;->this$1:Lcom/sessionm/ui/ActivityController$8;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$8;->val$prepareListener:Lcom/sessionm/ui/ActivityController$PrepareListener;

    invoke-interface {v0, p1}, Lcom/sessionm/ui/ActivityController$PrepareListener;->onFailure(Ljava/lang/Throwable;)V

    .line 485
    return-void
.end method

.method public onWebViewLoaded()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$8$1;->this$1:Lcom/sessionm/ui/ActivityController$8;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$8;->val$prepareListener:Lcom/sessionm/ui/ActivityController$PrepareListener;

    invoke-interface {v0}, Lcom/sessionm/ui/ActivityController$PrepareListener;->onPrepared()V

    .line 480
    return-void
.end method
