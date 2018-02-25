.class Lcom/ansca/corona/MapView$3;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/MapView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/MapView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/MapView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ansca/corona/MapView$3;->this$0:Lcom/ansca/corona/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/ansca/corona/MapView$3;->this$0:Lcom/ansca/corona/MapView;

    invoke-virtual {v1}, Lcom/ansca/corona/MapView;->isZoomEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 173
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 173
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
