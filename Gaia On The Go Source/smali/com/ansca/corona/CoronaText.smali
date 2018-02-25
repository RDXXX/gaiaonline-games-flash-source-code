.class public Lcom/ansca/corona/CoronaText;
.super Ljava/lang/Object;
.source "CoronaText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ansca/corona/CoronaText$TextInfo;
    }
.end annotation


# static fields
.field private static ourBits:[B

.field private static ourCachedInt:[I

.field private static ourCachedSize:I

.field private static ourTypefaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ansca/corona/CoronaText$TextInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected myHeight:I

.field private myTextInfo:Lcom/ansca/corona/CoronaText$TextInfo;

.field protected myWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    sput v1, Lcom/ansca/corona/CoronaText;->ourCachedSize:I

    .line 34
    sget v0, Lcom/ansca/corona/CoronaText;->ourCachedSize:I

    new-array v0, v0, [I

    sput-object v0, Lcom/ansca/corona/CoronaText;->ourCachedInt:[I

    .line 35
    new-array v0, v1, [B

    sput-object v0, Lcom/ansca/corona/CoronaText;->ourBits:[B

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ansca/corona/CoronaText;->ourTypefaces:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)V
    .locals 2
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lcom/ansca/corona/CoronaText;->myWidth:I

    .line 31
    iput v1, p0, Lcom/ansca/corona/CoronaText;->myHeight:I

    .line 111
    invoke-static {p1, p3}, Lcom/ansca/corona/CoronaText;->getTypeface(Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 112
    .local v0, "typeface":Landroid/graphics/Typeface;
    sget-object v1, Lcom/ansca/corona/CoronaText;->ourTypefaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ansca/corona/CoronaText$TextInfo;

    iput-object v1, p0, Lcom/ansca/corona/CoronaText;->myTextInfo:Lcom/ansca/corona/CoronaText$TextInfo;

    .line 113
    return-void
.end method

.method public static getCoronaText(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)Lcom/ansca/corona/CoronaText;
    .locals 1
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "fontSize"    # F
    .param p2, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 26
    new-instance v0, Lcom/ansca/corona/CoronaText;

    invoke-direct {v0, p0, p1, p2}, Lcom/ansca/corona/CoronaText;-><init>(Ljava/lang/String;FLcom/ansca/corona/CoronaActivity;)V

    .line 27
    .local v0, "coronaText":Lcom/ansca/corona/CoronaText;
    return-object v0
.end method

.method public static getFonts()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v3, "fontNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/io/File;

    const-string v10, "/system/fonts/"

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v8, "temp":Ljava/io/File;
    const-string v4, ".ttf"

    .line 228
    .local v4, "fontSuffix":Ljava/lang/String;
    new-instance v7, Lcom/ansca/corona/CoronaText$1;

    invoke-direct {v7}, Lcom/ansca/corona/CoronaText$1;-><init>()V

    .line 233
    .local v7, "myFileNameFilter":Ljava/io/FilenameFilter;
    invoke-virtual {v8, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 234
    .local v1, "font":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "fontName":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, ".ttf"

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "font":Ljava/io/File;
    .end local v2    # "fontName":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-array v9, v10, [Ljava/lang/String;

    .line 240
    .local v9, "typedArray":[Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    return-object v10
.end method

.method public static getTypeface(Ljava/lang/String;Lcom/ansca/corona/CoronaActivity;)Landroid/graphics/Typeface;
    .locals 10
    .param p0, "fontName"    # Ljava/lang/String;
    .param p1, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 56
    sget-object v7, Lcom/ansca/corona/CoronaText;->ourTypefaces:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ansca/corona/CoronaText$TextInfo;

    .line 58
    .local v3, "fontInfo":Lcom/ansca/corona/CoronaText$TextInfo;
    if-eqz v3, :cond_1

    .line 59
    iget-object v6, v3, Lcom/ansca/corona/CoronaText$TextInfo;->myTypeface:Landroid/graphics/Typeface;

    .line 105
    :cond_0
    :goto_0
    return-object v6

    .line 61
    :cond_1
    const/4 v5, 0x0

    .line 62
    .local v5, "style":I
    const/4 v6, 0x0

    .line 64
    .local v6, "typeface":Landroid/graphics/Typeface;
    const-string v7, ""

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez p0, :cond_4

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    .local v0, "createName":Ljava/lang/String;
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 67
    const-string p0, ""

    .line 101
    .end local v0    # "createName":Ljava/lang/String;
    :cond_3
    :goto_1
    if-eqz v6, :cond_0

    .line 102
    new-instance v4, Lcom/ansca/corona/CoronaText$TextInfo;

    invoke-direct {v4, v6}, Lcom/ansca/corona/CoronaText$TextInfo;-><init>(Landroid/graphics/Typeface;)V

    .line 103
    .local v4, "info":Lcom/ansca/corona/CoronaText$TextInfo;
    sget-object v7, Lcom/ansca/corona/CoronaText;->ourTypefaces:Ljava/util/HashMap;

    invoke-virtual {v7, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    .end local v4    # "info":Lcom/ansca/corona/CoronaText$TextInfo;
    :cond_4
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ttf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "fontFileName":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/ansca/corona/FileServices;->doesAssetFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".otf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {p1, v2}, Lcom/ansca/corona/FileServices;->doesAssetFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 76
    const/4 v2, 0x0

    .line 79
    :cond_5
    if-eqz v2, :cond_6

    .line 80
    invoke-static {p1, v2}, Lcom/ansca/corona/FileServices;->externalizeAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 81
    .local v1, "fontFile":Ljava/io/File;
    if-eqz v1, :cond_6

    .line 82
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 89
    .end local v1    # "fontFile":Ljava/io/File;
    .end local v2    # "fontFileName":Ljava/lang/String;
    :cond_6
    :goto_2
    if-nez v6, :cond_7

    .line 90
    invoke-static {}, Lcom/ansca/corona/Controller;->getAndroidVersionSpecific()Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/system/fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".ttf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ansca/corona/version/IAndroidVersionSpecific;->typefaceCreateFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 94
    :cond_7
    if-nez v6, :cond_3

    .line 96
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING: Could not load font "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Using default."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 97
    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    goto/16 :goto_1

    .line 86
    :catch_0
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public getBits()[B
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/ansca/corona/CoronaText;->ourBits:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/ansca/corona/CoronaText;->myHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/ansca/corona/CoronaText;->myWidth:I

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method

.method public render(Ljava/lang/String;FIILcom/ansca/corona/CoronaActivity;)V
    .locals 24
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontSize"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "activity"    # Lcom/ansca/corona/CoronaActivity;

    .prologue
    .line 118
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ansca/corona/CoronaText;->myTextInfo:Lcom/ansca/corona/CoronaText$TextInfo;

    iget-object v4, v3, Lcom/ansca/corona/CoronaText$TextInfo;->myTextPaint:Landroid/text/TextPaint;

    .line 124
    .local v4, "textPaint":Landroid/text/TextPaint;
    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 125
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v19

    .line 126
    .local v19, "metrics":Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {}, Lcom/ansca/corona/JavaToNativeShim;->getMaxTextureSize()I

    move-result v18

    .line 129
    .local v18, "maxTextureSize":I
    if-gtz p3, :cond_2

    .line 130
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 p3, v0

    .line 131
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ge v0, v3, :cond_2

    .line 132
    const/16 p3, 0x1

    .line 135
    :cond_2
    and-int/lit8 v3, p3, 0x3

    if-eqz v3, :cond_3

    .line 137
    add-int/lit8 v3, p3, 0x3

    and-int/lit8 p3, v3, -0x4

    .line 139
    :cond_3
    move/from16 v0, p3

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 140
    move/from16 p3, v18

    .line 144
    :cond_4
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 145
    .local v6, "textAlignment":Landroid/text/Layout$Alignment;
    new-instance v2, Landroid/text/StaticLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 148
    .local v2, "layout":Landroid/text/StaticLayout;
    if-gtz p4, :cond_5

    .line 149
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, v19

    iget v5, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 p4, v3, 0x1

    .line 150
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    mul-int p4, p4, v3

    .line 151
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_5

    .line 152
    const/16 p4, 0x1

    .line 155
    :cond_5
    move/from16 v0, p4

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 156
    move/from16 p4, v18

    .line 160
    :cond_6
    const/4 v7, 0x0

    .line 162
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 163
    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 164
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v16, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v16    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    if-eqz v7, :cond_0

    .line 175
    const/4 v8, 0x0

    .line 176
    .local v8, "intBits":[I
    const/4 v15, 0x0

    .line 178
    .local v15, "bytes":[B
    mul-int v20, p3, p4

    .line 179
    .local v20, "newSize":I
    :try_start_1
    sget v3, Lcom/ansca/corona/CoronaText;->ourCachedSize:I

    move/from16 v0, v20

    if-le v0, v3, :cond_7

    .line 180
    move/from16 v0, v20

    new-array v3, v0, [I

    sput-object v3, Lcom/ansca/corona/CoronaText;->ourCachedInt:[I

    .line 181
    sput v20, Lcom/ansca/corona/CoronaText;->ourCachedSize:I

    .line 183
    :cond_7
    sget-object v8, Lcom/ansca/corona/CoronaText;->ourCachedInt:[I

    .line 184
    sget-object v3, Lcom/ansca/corona/CoronaText;->ourBits:[B

    array-length v3, v3

    move/from16 v0, v20

    if-eq v0, v3, :cond_8

    .line 185
    move/from16 v0, v20

    new-array v3, v0, [B

    sput-object v3, Lcom/ansca/corona/CoronaText;->ourBits:[B

    .line 187
    :cond_8
    sget-object v15, Lcom/ansca/corona/CoronaText;->ourBits:[B

    .line 188
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p3

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    :goto_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 194
    if-eqz v8, :cond_0

    if-eqz v15, :cond_0

    .line 199
    const/16 v23, 0x0

    .local v23, "y":I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, p4

    if-ge v0, v1, :cond_a

    .line 200
    mul-int v21, v23, p3

    .line 201
    .local v21, "start":I
    const/16 v22, 0x0

    .local v22, "x":I
    :goto_4
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    .line 202
    add-int v3, v21, v22

    add-int v5, v21, v22

    aget v5, v8, v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v15, v3

    .line 201
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 167
    .end local v8    # "intBits":[I
    .end local v15    # "bytes":[B
    .end local v20    # "newSize":I
    .end local v21    # "start":I
    .end local v22    # "x":I
    .end local v23    # "y":I
    :catch_0
    move-exception v17

    .line 168
    .local v17, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v17    # "ex":Ljava/lang/Exception;
    .restart local v8    # "intBits":[I
    .restart local v15    # "bytes":[B
    .restart local v20    # "newSize":I
    :catch_1
    move-exception v17

    .line 191
    .restart local v17    # "ex":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 199
    .end local v17    # "ex":Ljava/lang/Exception;
    .restart local v21    # "start":I
    .restart local v22    # "x":I
    .restart local v23    # "y":I
    :cond_9
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 207
    .end local v21    # "start":I
    .end local v22    # "x":I
    :cond_a
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ansca/corona/CoronaText;->myWidth:I

    .line 208
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ansca/corona/CoronaText;->myHeight:I

    goto/16 :goto_0
.end method
