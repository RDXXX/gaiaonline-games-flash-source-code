.class Lcom/sessionm/ui/SessionMActivity$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sessionm/ui/SessionMActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sessionm/ui/SessionMActivity$1;


# direct methods
.method constructor <init>(Lcom/sessionm/ui/SessionMActivity$1;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sessionm/ui/SessionMActivity$1$1;->this$1:Lcom/sessionm/ui/SessionMActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 96
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/sessionm/ui/SessionMActivity$1$1;->this$1:Lcom/sessionm/ui/SessionMActivity$1;

    iget-object v0, v0, Lcom/sessionm/ui/SessionMActivity$1;->this$0:Lcom/sessionm/ui/SessionMActivity;

    invoke-static {v0}, Lcom/sessionm/ui/SessionMActivity;->access$000(Lcom/sessionm/ui/SessionMActivity;)Lcom/sessionm/ui/ActivityController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sessionm/ui/ActivityController;->dismiss()V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
