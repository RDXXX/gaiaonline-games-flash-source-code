.class Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;
.super Ljava/lang/Object;
.source "NativeToJavaBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ansca/corona/NativeToJavaBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapResult"
.end annotation


# instance fields
.field private fBitmap:Landroid/graphics/Bitmap;

.field private fScaleFactor:F

.field final synthetic this$0:Lcom/ansca/corona/NativeToJavaBridge;


# direct methods
.method public constructor <init>(Lcom/ansca/corona/NativeToJavaBridge;Landroid/graphics/Bitmap;F)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "scaleFactor"    # F

    .prologue
    .line 955
    iput-object p1, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->this$0:Lcom/ansca/corona/NativeToJavaBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 956
    iput-object p2, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    .line 957
    iput p3, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fScaleFactor:F

    .line 958
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 969
    iget v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fScaleFactor:F

    return v0
.end method

.method public wasSuccessful()Z
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/ansca/corona/NativeToJavaBridge$LoadBitmapResult;->fBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
