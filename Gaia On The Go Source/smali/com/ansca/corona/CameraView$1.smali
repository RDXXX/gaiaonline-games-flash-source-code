.class Lcom/ansca/corona/CameraView$1;
.super Landroid/view/OrientationEventListener;
.source "CameraView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CameraView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CameraView;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CameraView;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientationInDegrees"    # I

    .prologue
    const/16 v2, 0xe1

    const/16 v1, 0x87

    .line 56
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    rsub-int v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 65
    const/16 v0, 0x2d

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    .line 68
    :cond_1
    if-lt p1, v1, :cond_2

    if-ge p1, v2, :cond_2

    .line 69
    iget-object v0, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v1, 0xb4

    invoke-static {v0, v1}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    .line 71
    :cond_2
    if-lt p1, v2, :cond_3

    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/16 v1, 0x10e

    invoke-static {v0, v1}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/ansca/corona/CameraView$1;->this$0:Lcom/ansca/corona/CameraView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ansca/corona/CameraView;->access$002(Lcom/ansca/corona/CameraView;I)I

    goto :goto_0
.end method
