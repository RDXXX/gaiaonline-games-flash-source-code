.class public Lcom/ansca/corona/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# static fields
.field private static sNextImageFileNumber:I


# instance fields
.field private fCameraView:Lcom/ansca/corona/CameraView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    .prologue
    .line 25
    sget v0, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;I)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/ansca/corona/CameraActivity;->createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/ansca/corona/CameraActivity;)Lcom/ansca/corona/CameraView;
    .locals 1
    .param p0, "x0"    # Lcom/ansca/corona/CameraActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    return-object v0
.end method

.method public static clearCachedPhotos(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_0
    sget v3, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    if-ge v2, v3, :cond_1

    .line 190
    :try_start_0
    invoke-static {p0, v2}, Lcom/ansca/corona/CameraActivity;->createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 191
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 199
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x1

    sput v3, Lcom/ansca/corona/CameraActivity;->sNextImageFileNumber:I

    .line 200
    return-void
.end method

.method private static createCameraShotFileObjectWith(Landroid/content/Context;I)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # I

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraShot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x2

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v4, "viewGroup":Landroid/widget/FrameLayout;
    invoke-virtual {p0, v4}, Lcom/ansca/corona/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 50
    new-instance v5, Lcom/ansca/corona/CameraView;

    invoke-direct {v5, p0}, Lcom/ansca/corona/CameraView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    .line 51
    iget-object v5, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 55
    iget-object v5, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    new-instance v6, Lcom/ansca/corona/CameraActivity$1;

    invoke-direct {v6, p0}, Lcom/ansca/corona/CameraActivity$1;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v5, v6}, Lcom/ansca/corona/CameraView;->setTakePictureListener(Landroid/hardware/Camera$PictureCallback;)V

    .line 116
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 117
    .local v3, "toolbarLayout":Landroid/widget/FrameLayout;
    const/16 v5, 0xc0

    invoke-static {v5, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x50

    invoke-direct {v1, v5, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 122
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v4, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "cameraButton":Landroid/widget/ImageButton;
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 127
    invoke-virtual {v0, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 128
    const-string v5, "ic_menu_camera"

    invoke-static {v5}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 129
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x11

    invoke-direct {v1, v8, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 133
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v5, Lcom/ansca/corona/CameraActivity$2;

    invoke-direct {v5, p0}, Lcom/ansca/corona/CameraActivity$2;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-static {}, Lcom/ansca/corona/CameraServices;->getCameraCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 144
    new-instance v2, Landroid/widget/ImageButton;

    invoke-direct {v2, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 145
    .local v2, "switchButton":Landroid/widget/ImageButton;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 146
    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 147
    const-string v5, "ic_menu_refresh"

    invoke-static {v5}, Lcom/ansca/corona/ResourceServices;->getDrawableResourceId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x15

    invoke-direct {v1, v8, v8, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 152
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v5, Lcom/ansca/corona/CameraActivity$3;

    invoke-direct {v5, p0}, Lcom/ansca/corona/CameraActivity$3;-><init>(Lcom/ansca/corona/CameraActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .end local v2    # "switchButton":Landroid/widget/ImageButton;
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 171
    sparse-switch p1, :sswitch_data_0

    .line 179
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 174
    :sswitch_0
    iget-object v0, p0, Lcom/ansca/corona/CameraActivity;->fCameraView:Lcom/ansca/corona/CameraView;

    invoke-virtual {v0}, Lcom/ansca/corona/CameraView;->takePicture()V

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
    .end sparse-switch
.end method
