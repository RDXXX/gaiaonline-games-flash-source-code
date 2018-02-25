.class Lcom/millennialmedia/android/MMMedia;
.super Lcom/millennialmedia/android/MMJSObject;
.source "MMMedia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMMedia$Audio;,
        Lcom/millennialmedia/android/MMMedia$PickerActivity;
    }
.end annotation


# static fields
.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PICTURES:Ljava/lang/String; = "Pictures"

.field private static pickerActivityObject:Ljava/lang/Object;


# instance fields
.field mediaScanner:Landroid/media/MediaScannerConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    return-object v0
.end method

.method private static centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 248
    .local v0, "x":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    .line 250
    .local v1, "y":F
    float-to-int v2, v0

    float-to-int v3, v1

    invoke-static {p0, v2, v3, p1, p2}, Lcom/millennialmedia/android/MMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private static cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 255
    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private isCameraAvailable()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 55
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 56
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.CAMERA"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 60
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 62
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 65
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private isPictureChooserAvailable()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 71
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 72
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "image/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v4, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 78
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 80
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return v3
.end method

.method private moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .param p1, "source"    # Ljava/io/File;
    .param p2, "dest"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v7

    .line 478
    :goto_0
    return v1

    .line 468
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 470
    .local v0, "inChannel":Ljava/nio/channels/FileChannel;
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 471
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 472
    .local v5, "outChannel":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    const/4 v1, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v5    # "outChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v6

    .line 477
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v7

    .line 478
    goto :goto_0
.end method

.method private static resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "newW"    # I
    .param p2, "newH"    # I
    .param p3, "quality"    # I

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "contentMode"    # Ljava/lang/String;
    .param p2, "toW"    # I
    .param p3, "toH"    # I
    .param p4, "quality"    # I

    .prologue
    const/4 v7, 0x0

    .line 210
    int-to-float v5, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 211
    .local v0, "horizontalRatio":F
    int-to-float v5, p3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 216
    .local v4, "verticalRatio":F
    const-string v5, "Center"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 218
    invoke-static {p0, p2, p3}, Lcom/millennialmedia/android/MMMedia;->centerOfImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 236
    :goto_0
    return-object v5

    .line 220
    :cond_0
    const-string v5, "ScaleToAspectFit"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 222
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 223
    .local v3, "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 224
    .local v2, "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 225
    .local v1, "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/MMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 227
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_1
    const-string v5, "ScaleToAspectFill"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 229
    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 230
    .restart local v3    # "ratio":F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v2, v5

    .line 231
    .restart local v2    # "newW":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v1, v5

    .line 234
    .restart local v1    # "newH":I
    invoke-static {p0, v2, v1, p4}, Lcom/millennialmedia/android/MMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v7, v7, p2, p3}, Lcom/millennialmedia/android/MMMedia;->cropImage(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 236
    .end local v1    # "newH":I
    .end local v2    # "newW":I
    .end local v3    # "ratio":F
    :cond_2
    invoke-static {p0, p2, p3, p4}, Lcom/millennialmedia/android/MMMedia;->resizeImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private static final scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B
    .locals 21
    .param p0, "file"    # Ljava/io/File;
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "contentMode"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v10, 0x0

    .line 261
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v12, 0x0

    .line 262
    .local v12, "fis2":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    .line 265
    .local v17, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v11, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 268
    .local v16, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 269
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v11, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 271
    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 272
    .local v14, "height":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    .line 273
    .local v18, "width":I
    const/4 v15, 0x1

    .line 275
    .local v15, "inSampleSize":I
    move/from16 v0, p2

    if-gt v14, v0, :cond_0

    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_1

    .line 277
    :cond_0
    move/from16 v0, v18

    if-le v0, v14, :cond_8

    .line 279
    int-to-float v0, v14

    move/from16 v19, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 288
    :cond_1
    :goto_0
    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 290
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .local v13, "fis2":Ljava/io/FileInputStream;
    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 291
    move-object/from16 v0, v16

    iput v15, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 292
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v13, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result-object v17

    .line 301
    if-eqz v11, :cond_2

    .line 302
    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 303
    :cond_2
    if-eqz v13, :cond_3

    .line 304
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 311
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    :cond_4
    :goto_1
    const/4 v7, 0x0

    .line 312
    .local v7, "contents":[B
    if-eqz v17, :cond_7

    .line 314
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/millennialmedia/android/MMMedia;->resizeImage(Landroid/graphics/Bitmap;Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 315
    .local v9, "finalBitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 319
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_4
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 320
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    const-string v19, ""

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 321
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 324
    :goto_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v7

    .line 335
    if-eqz v17, :cond_5

    .line 336
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_5
    if-eqz v9, :cond_6

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    :cond_6
    if-eqz v6, :cond_7

    .line 340
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 348
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_7
    :goto_3
    return-object v7

    .line 283
    .end local v7    # "contents":[B
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :cond_8
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    :try_start_7
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result v15

    goto :goto_0

    .line 306
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    :catch_0
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .line 309
    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 294
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    :catch_1
    move-exception v19

    .line 301
    :goto_4
    if-eqz v10, :cond_9

    .line 302
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 303
    :cond_9
    if-eqz v12, :cond_4

    .line 304
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 306
    :catch_2
    move-exception v19

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v19

    .line 301
    :goto_5
    if-eqz v10, :cond_a

    .line 302
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 303
    :cond_a
    if-eqz v12, :cond_b

    .line 304
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 308
    :cond_b
    :goto_6
    throw v19

    .line 323
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "contents":[B
    .restart local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_a
    sget-object v19, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v20, 0x64

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    .line 326
    :catch_3
    move-exception v8

    move-object v5, v6

    .line 328
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_7
    const/4 v7, 0x0

    .line 329
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 335
    if-eqz v17, :cond_d

    .line 336
    :try_start_c
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_d
    if-eqz v9, :cond_e

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    :cond_e
    if-eqz v5, :cond_7

    .line 340
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_3

    .line 342
    :catch_4
    move-exception v8

    .line 344
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 342
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v8

    .line 344
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 333
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v19

    .line 335
    :goto_8
    if-eqz v17, :cond_f

    .line 336
    :try_start_d
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    :cond_f
    if-eqz v9, :cond_10

    .line 338
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 339
    :cond_10
    if-eqz v5, :cond_11

    .line 340
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 345
    :cond_11
    :goto_9
    throw v19

    .line 342
    :catch_6
    move-exception v8

    .line 344
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 333
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v19

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .line 326
    :catch_7
    move-exception v8

    goto :goto_7

    .line 306
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "contents":[B
    .end local v9    # "finalBitmap":Landroid/graphics/Bitmap;
    :catch_8
    move-exception v20

    goto :goto_6

    .line 299
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catchall_3
    move-exception v19

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catchall_4
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 294
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "height":I
    .end local v15    # "inSampleSize":I
    .end local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v18    # "width":I
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v19

    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "fis2":Ljava/io/FileInputStream;
    .restart local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v14    # "height":I
    .restart local v15    # "inSampleSize":I
    .restart local v16    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v18    # "width":I
    :catch_a
    move-exception v19

    move-object v12, v13

    .end local v13    # "fis2":Ljava/io/FileInputStream;
    .restart local v12    # "fis2":Ljava/io/FileInputStream;
    move-object v10, v11

    .end local v11    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method private scanMedia(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 486
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 487
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 489
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/MMMedia$1;

    invoke-direct {v3, p0, p1}, Lcom/millennialmedia/android/MMMedia$1;-><init>(Lcom/millennialmedia/android/MMMedia;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    .line 507
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    if-eqz v1, :cond_0

    .line 508
    iget-object v1, p0, Lcom/millennialmedia/android/MMMedia;->mediaScanner:Landroid/media/MediaScannerConnection;

    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 510
    :cond_0
    return-void
.end method


# virtual methods
.method public availableSourceTypes(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 109
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isCameraAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "Camera"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isPictureChooserAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const-string v2, "Photo Library"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 115
    .local v1, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 116
    iput-object v0, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 117
    return-object v1
.end method

.method public declared-synchronized getPicture(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 360
    .local v3, "context":Landroid/content/Context;
    const-string v13, "sourceType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 361
    .local v10, "type":Ljava/lang/String;
    const-string v13, "constrainHeight"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 362
    .local v7, "height":Ljava/lang/String;
    const-string v13, "constrainWidth"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 364
    .local v12, "width":Ljava/lang/String;
    const-string v13, "contentMode"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    .local v1, "contentMode":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 366
    const-string v1, ""

    .line 367
    :cond_0
    if-eqz v7, :cond_1

    if-nez v12, :cond_2

    .line 368
    :cond_1
    const-string v13, "Missing constrainHeight and/or constrainWidth"

    invoke-static {v13}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 423
    :goto_0
    monitor-exit p0

    return-object v9

    .line 371
    :cond_2
    :try_start_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 372
    .local v6, "h":I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 373
    .local v11, "w":I
    mul-int v13, v6, v11

    const v14, 0x57e40

    if-le v13, v14, :cond_3

    .line 374
    const-string v13, "constrainHeight * constrainWidth > 360000"

    invoke-static {v13}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v9

    goto :goto_0

    .line 377
    :cond_3
    if-eqz v3, :cond_7

    if-eqz v10, :cond_7

    .line 379
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tmp_mm_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    .local v5, "file":Ljava/io/File;
    const-string v13, "Camera"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia;->isCameraAvailable()Z

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    const-string v13, "Photo Library"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/MMMedia;->isPictureChooserAvailable()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_7

    .line 385
    :cond_5
    :try_start_2
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    sput-object v13, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 386
    new-instance v8, Landroid/content/Intent;

    const-class v13, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v8, v3, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 387
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 388
    const-string v13, "type"

    invoke-virtual {v8, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v13, "class"

    const-string v14, "com.millennialmedia.android.MMMedia$PickerActivity"

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    instance-of v13, v3, Landroid/app/Activity;

    if-nez v13, :cond_6

    .line 392
    const/high16 v13, 0x10000000

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 394
    :cond_6
    sget-object v14, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    monitor-enter v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 396
    :try_start_3
    invoke-virtual {v3, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 397
    sget-object v13, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    invoke-virtual {v13}, Ljava/lang/Object;->wait()V

    .line 398
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 406
    const/4 v13, 0x0

    :try_start_4
    sput-object v13, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    .line 409
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_7

    .line 411
    invoke-static {v5, v11, v6, v1}, Lcom/millennialmedia/android/MMMedia;->scaleBitmapToBytes(Ljava/io/File;IILjava/lang/String;)[B

    move-result-object v2

    .line 412
    .local v2, "contents":[B
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 413
    if-eqz v2, :cond_7

    .line 415
    new-instance v9, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v9}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 416
    .local v9, "response":Lcom/millennialmedia/android/MMJSResponse;
    const/4 v13, 0x1

    iput v13, v9, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 417
    iput-object v2, v9, Lcom/millennialmedia/android/MMJSResponse;->dataResponse:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 359
    .end local v1    # "contentMode":Ljava/lang/String;
    .end local v2    # "contents":[B
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "h":I
    .end local v7    # "height":Ljava/lang/String;
    .end local v9    # "response":Lcom/millennialmedia/android/MMJSResponse;
    .end local v10    # "type":Ljava/lang/String;
    .end local v11    # "w":I
    .end local v12    # "width":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 398
    .restart local v1    # "contentMode":Ljava/lang/String;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "h":I
    .restart local v7    # "height":Ljava/lang/String;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "type":Ljava/lang/String;
    .restart local v11    # "w":I
    .restart local v12    # "width":Ljava/lang/String;
    :catchall_1
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 400
    .end local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 402
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 406
    const/4 v13, 0x0

    :try_start_8
    sput-object v13, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v13

    const/4 v14, 0x0

    sput-object v14, Lcom/millennialmedia/android/MMMedia;->pickerActivityObject:Ljava/lang/Object;

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 423
    .end local v5    # "file":Ljava/io/File;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public isSourceTypeAvailable(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "sourceType"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 94
    :cond_0
    const-string v1, "Photo Library"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/millennialmedia/android/MMMedia;->isPictureChooserAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 567
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 569
    .local v1, "context":Landroid/content/Context;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 572
    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v4

    invoke-virtual {v4}, Lcom/millennialmedia/android/MMMedia$Audio;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    const-string v4, "Audio already playing."

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 593
    :goto_0
    return-object v4

    .line 575
    :cond_0
    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 577
    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v5

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v4, "repeat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/millennialmedia/android/MMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 581
    :cond_1
    invoke-static {v1}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 582
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_2

    .line 584
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 585
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v5

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v4, "repeat"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v5, v6, v4}, Lcom/millennialmedia/android/MMMedia$Audio;->playAudio(Landroid/net/Uri;Z)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0

    .line 593
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public playSound(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 605
    .local v1, "context":Landroid/content/Context;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 606
    .local v3, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 608
    invoke-static {v1}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 609
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 611
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 612
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 614
    iget-object v4, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-static {v4}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/millennialmedia/android/MMMedia$Audio;->playSound(Ljava/io/File;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 618
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public playVideo(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/high16 v7, 0x10000000

    .line 520
    iget-object v5, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 521
    .local v1, "context":Landroid/content/Context;
    const-string v5, "path"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 522
    .local v4, "path":Ljava/lang/String;
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    .line 524
    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 526
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 527
    .local v3, "intent":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 528
    const-string v5, "class"

    const-string v6, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    instance-of v5, v1, Landroid/app/Activity;

    if-nez v5, :cond_0

    .line 531
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 533
    :cond_0
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 534
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 557
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v5

    .line 538
    :cond_1
    invoke-static {v1}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 539
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 541
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 542
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 544
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/millennialmedia/android/VideoPlayer;

    invoke-direct {v3, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 545
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 546
    const-string v5, "class"

    const-string v6, "com.millennialmedia.android.VideoPlayerActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    instance-of v5, v1, Landroid/app/Activity;

    if-nez v5, :cond_2

    .line 549
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 551
    :cond_2
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 552
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    goto :goto_0

    .line 557
    .end local v0    # "cacheDir":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public stopAudio(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeToPhotoLibrary(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "arguments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/millennialmedia/android/MMMedia;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 436
    .local v0, "context":Landroid/content/Context;
    const-string v6, "path"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 437
    .local v3, "path":Landroid/net/Uri;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Pictures"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v1, "dest":Ljava/io/File;
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_2

    const-string v6, "http"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 441
    const-string v6, "url"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v6, "path"

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    new-instance v2, Lcom/millennialmedia/android/MMFileManager;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMFileManager;-><init>()V

    .line 444
    .local v2, "fileManager":Lcom/millennialmedia/android/MMFileManager;
    invoke-virtual {v2, v0}, Lcom/millennialmedia/android/MMFileManager;->setContext(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v2, p1}, Lcom/millennialmedia/android/MMFileManager;->downloadFile(Ljava/util/HashMap;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    if-nez v6, :cond_0

    .line 446
    const-string v6, "Failed to download"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 457
    .end local v2    # "fileManager":Lcom/millennialmedia/android/MMFileManager;
    :goto_0
    monitor-exit p0

    return-object v6

    .line 447
    .restart local v2    # "fileManager":Lcom/millennialmedia/android/MMFileManager;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 448
    .local v5, "source":Ljava/io/File;
    invoke-direct {p0, v5, v1}, Lcom/millennialmedia/android/MMMedia;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-direct {p0, v6}, Lcom/millennialmedia/android/MMMedia;->scanMedia(Ljava/lang/String;)V

    .line 457
    .end local v2    # "fileManager":Lcom/millennialmedia/android/MMFileManager;
    :goto_2
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 448
    .restart local v2    # "fileManager":Lcom/millennialmedia/android/MMFileManager;
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 452
    .end local v2    # "fileManager":Lcom/millennialmedia/android/MMFileManager;
    .end local v5    # "source":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-static {v0}, Lcom/millennialmedia/android/MMFileManager;->getCreativeCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 453
    .restart local v5    # "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No file at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    goto :goto_0

    .line 455
    :cond_3
    invoke-direct {p0, v5, v1}, Lcom/millennialmedia/android/MMMedia;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-direct {p0, v6}, Lcom/millennialmedia/android/MMMedia;->scanMedia(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 435
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "dest":Ljava/io/File;
    .end local v3    # "path":Landroid/net/Uri;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "source":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 455
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "dest":Ljava/io/File;
    .restart local v3    # "path":Landroid/net/Uri;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "source":Ljava/io/File;
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    goto :goto_3
.end method
