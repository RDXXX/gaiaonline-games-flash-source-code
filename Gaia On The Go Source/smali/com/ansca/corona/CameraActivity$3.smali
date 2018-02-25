.class Lcom/ansca/corona/CameraActivity$3;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ansca/corona/CameraActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ansca/corona/CameraActivity;


# direct methods
.method constructor <init>(Lcom/ansca/corona/CameraActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {v1}, Lcom/ansca/corona/CameraActivity;->access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ansca/corona/CameraView;->getSelectedCameraIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/ansca/corona/CameraServices;->getCameraCount()I

    move-result v2

    rem-int v0, v1, v2

    .line 157
    .local v0, "cameraIndex":I
    iget-object v1, p0, Lcom/ansca/corona/CameraActivity$3;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {v1}, Lcom/ansca/corona/CameraActivity;->access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ansca/corona/CameraView;->selectCameraByIndex(I)V

    .line 158
    return-void
.end method
