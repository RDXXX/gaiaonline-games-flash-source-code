.class Lcom/sessionm/ui/ActivityController$10$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/ActivityController$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/ActivityController$10;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/ActivityController$10;)V
    .locals 0

    .prologue
    .line 556
    iput-object p1, p0, Lcom/sessionm/ui/ActivityController$10$1;->this$1:Lcom/sessionm/ui/ActivityController$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sessionm/ui/ActivityController$10$1;->this$1:Lcom/sessionm/ui/ActivityController$10;

    iget-object v0, v0, Lcom/sessionm/ui/ActivityController$10;->this$0:Lcom/sessionm/ui/ActivityController;

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    .line 560
    return-void
.end method
