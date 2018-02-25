.class Lcom/ansca/corona/CameraActivity$2;
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
    .line 136
    iput-object p1, p0, Lcom/ansca/corona/CameraActivity$2;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity$2;->this$0:Lcom/ansca/corona/CameraActivity;

    invoke-static {v0}, Lcom/ansca/corona/CameraActivity;->access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ansca/corona/CameraView;->takePicture()V

    .line 139
    return-void
.end method
