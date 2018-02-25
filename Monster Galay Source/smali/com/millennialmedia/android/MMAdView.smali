.class public Lcom/millennialmedia/android/MMAdView;
.super Landroid/widget/FrameLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdView$Request;,
        Lcom/millennialmedia/android/MMAdView$RequestListener;,
        Lcom/millennialmedia/android/MMAdView$MMAdListener;
    }
.end annotation


# static fields
.field public static final BANNER_AD_BOTTOM:Ljava/lang/String; = "MMBannerAdBottom"

.field public static final BANNER_AD_RECTANGLE:Ljava/lang/String; = "MMBannerAdRectangle"

.field public static final BANNER_AD_TOP:Ljava/lang/String; = "MMBannerAdTop"

.field public static final FULLSCREEN_AD_LAUNCH:Ljava/lang/String; = "MMFullScreenAdLaunch"

.field public static final FULLSCREEN_AD_TRANSITION:Ljava/lang/String; = "MMFullScreenAdTransition"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_EDUCATION:Ljava/lang/String; = "education"

.field public static final KEY_ETHNICITY:Ljava/lang/String; = "ethnicity"

.field public static final KEY_GENDER:Ljava/lang/String; = "gender"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_MARITAL_STATUS:Ljava/lang/String; = "marital"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_ZIP_CODE:Ljava/lang/String; = "zip"

.field public static final REFRESH_INTERVAL_OFF:I = -0x1

.field public static final TRANSITION_DOWN:I = 0x3

.field public static final TRANSITION_FADE:I = 0x1

.field public static final TRANSITION_NONE:I = 0x0

.field public static final TRANSITION_RANDOM:I = 0x4

.field public static final TRANSITION_UP:I = 0x2

.field private static appInit:Z

.field private static nextAdViewId:J


# instance fields
.field acid:Ljava/lang/String;

.field adType:Ljava/lang/String;

.field adViewId:Ljava/lang/Long;

.field apid:Ljava/lang/String;

.field controller:Lcom/millennialmedia/android/MMAdViewController;

.field deferedRequest:Lcom/millennialmedia/android/MMAdView$Request;

.field private gestureDetector:Landroid/view/GestureDetector;

.field goalId:Ljava/lang/String;

.field height:Ljava/lang/String;

.field ignoreDensityScaling:Z

.field imageView:Landroid/widget/ImageView;

.field lastAdRequest:J

.field listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

.field mxsdk:Ljava/lang/String;

.field refreshInterval:I

.field transitionType:I

.field public userData:Ljava/lang/String;

.field width:Ljava/lang/String;

.field xmlLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 137
    const-string v0, "Creating new MMAdView for conversion tracking."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 157
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/16 v13, 0x3c

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v13, "28911"

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v13

    if-nez v13, :cond_2

    .line 160
    const-string v13, "Creating MMAdView from XML layout."

    invoke-static {v13}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 162
    if-eqz p2, :cond_1

    .line 164
    const-string v10, "http://millennialmedia.com/android/schema"

    .line 165
    .local v10, "namespace":Ljava/lang/String;
    const-string v13, "apid"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 166
    const-string v13, "acid"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 167
    const-string v13, "adType"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 168
    const-string v13, "refreshInterval"

    const/16 v14, 0x3c

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13, v14}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 169
    const-string v13, "ignoreDensityScaling"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13, v14}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 170
    const-string v13, "height"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 171
    const-string v13, "width"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 172
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v13, :cond_0

    .line 174
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "gender"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    .line 175
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "ethnicity"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    .line 176
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "orientation"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    .line 177
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "marital"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    .line 178
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "education"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    .line 180
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "age"

    const-string v15, "age"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "zip"

    const-string v15, "zip"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "income"

    const-string v15, "income"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "keywords"

    const-string v15, "keywords"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "children"

    const-string v15, "children"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "politics"

    const-string v15, "politics"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v13, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v14, "vendor"

    const-string v15, "vendor"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    const-string v13, "goalId"

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/millennialmedia/android/MMAdView;->goalId:Ljava/lang/String;

    .line 190
    .end local v10    # "namespace":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 191
    invoke-direct/range {p0 .. p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 240
    :goto_0
    return-void

    .line 195
    :cond_2
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v9, "logoForXML":Landroid/widget/ImageView;
    const-string v7, "http://images.millennialmedia.com/9513/192134.gif"

    .line 197
    .local v7, "imageUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 198
    .local v8, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 201
    .local v11, "out":Ljava/io/OutputStream;
    :try_start_0
    const-string v13, "java.io.tmpdir"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "dir":Ljava/lang/String;
    if-eqz v5, :cond_3

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 203
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_3
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "millenial355jns6u3l1nmedia.png"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_7

    .line 208
    new-instance v13, Ljava/net/URL;

    const-string v14, "http://images.millennialmedia.com/9513/192134.gif"

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 209
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 210
    const/16 v13, 0xbb8

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 211
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 214
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    .end local v11    # "out":Ljava/io/OutputStream;
    .local v12, "out":Ljava/io/OutputStream;
    const/16 v13, 0x400

    :try_start_1
    new-array v2, v13, [B

    .line 216
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 217
    .local v3, "bytesRead":I
    :goto_1
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_6

    .line 219
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 227
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    :catch_0
    move-exception v13

    move-object v11, v12

    .line 232
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "dir":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :goto_2
    if-eqz v8, :cond_4

    .line 233
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_4
    if-eqz v11, :cond_5

    .line 235
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 238
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "bytesRead":I
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "dir":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :cond_6
    move-object v11, v12

    .line 222
    .end local v2    # "buffer":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    :cond_7
    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 224
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_8

    if-eqz v1, :cond_8

    .line 225
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    :cond_8
    if-eqz v8, :cond_9

    .line 233
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_9
    if-eqz v11, :cond_5

    .line 235
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 236
    :catch_1
    move-exception v13

    goto :goto_3

    .line 231
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v5    # "dir":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :catchall_0
    move-exception v13

    .line 232
    :goto_4
    if-eqz v8, :cond_a

    .line 233
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_a
    if-eqz v11, :cond_b

    .line 235
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 236
    :cond_b
    :goto_5
    throw v13

    :catch_2
    move-exception v14

    goto :goto_5

    .line 231
    .end local v11    # "out":Ljava/io/OutputStream;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "dir":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v12    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "out":Ljava/io/OutputStream;
    .restart local v11    # "out":Ljava/io/OutputStream;
    goto :goto_4

    .line 236
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "dir":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    :catch_3
    move-exception v13

    goto :goto_3

    .line 227
    :catch_4
    move-exception v13

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 255
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 256
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 257
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 258
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 259
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 260
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 279
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 280
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 282
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 283
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Hashtable;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "refreshInterval"    # I
    .param p6, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 304
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 305
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 306
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 308
    iput p4, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 309
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 310
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apid"    # Ljava/lang/String;
    .param p3, "adType"    # Ljava/lang/String;
    .param p4, "accelerate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "metaMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 328
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const/16 v0, 0x3c

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 55
    const-string v0, "28911"

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 69
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 73
    const/4 v0, 0x4

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 329
    const-string v0, "Creating new MMAdView."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 330
    iput-object p2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 331
    iput-object p3, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 332
    const/4 v0, -0x1

    iput v0, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 333
    invoke-virtual {p0, p5}, Lcom/millennialmedia/android/MMAdView;->setMetaValues(Ljava/util/Hashtable;)V

    .line 334
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->init(Landroid/content/Context;)V

    .line 335
    return-void
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/MMAdView;)V
    .locals 0
    .param p0, "x0"    # Lcom/millennialmedia/android/MMAdView;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->printDiagnostics()V

    return-void
.end method

.method private static checkActivity(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x3

    .line 1199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1205
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.millennialmedia.android.MMActivity"

    invoke-direct {v2, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1206
    .local v2, "cn":Landroid/content/ComponentName;
    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1227
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v5, "com.millennialmedia.android.VideoPlayer"

    invoke-direct {v2, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1228
    .restart local v2    # "cn":Landroid/content/ComponentName;
    const/16 v5, 0x80

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 1246
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_1
    return-void

    .line 1208
    :catch_0
    move-exception v3

    .line 1210
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Activity MMActivity not declared in AndroidManifest.xml"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1212
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1213
    .local v0, "activityDialog":Landroid/app/AlertDialog;
    const-string v5, "Whoops!"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1214
    const-string v5, "The developer has forgot to declare the MMActivity in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1215
    const-string v5, "OK"

    new-instance v6, Lcom/millennialmedia/android/MMAdView$5;

    invoke-direct {v6, v0}, Lcom/millennialmedia/android/MMAdView$5;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v7, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1222
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1230
    .end local v0    # "activityDialog":Landroid/app/AlertDialog;
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1232
    .restart local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Activity VideoPlayer not declared in AndroidManifest.xml"

    invoke-static {v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1234
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1235
    .restart local v0    # "activityDialog":Landroid/app/AlertDialog;
    const-string v5, "Whoops!"

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1236
    const-string v5, "The developer has forgot to declare the VideoPlayer in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1237
    const-string v5, "OK"

    new-instance v6, Lcom/millennialmedia/android/MMAdView$6;

    invoke-direct {v6, v0}, Lcom/millennialmedia/android/MMAdView$6;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v7, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1244
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method private static checkPermissions(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x3

    .line 1150
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1152
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1153
    .local v2, "phoneStateDialog":Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1154
    const-string v3, "The developer has forgot to declare the READ_PHONE_STATE permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1155
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$2;

    invoke-direct {v4, v2}, Lcom/millennialmedia/android/MMAdView$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1162
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1165
    .end local v2    # "phoneStateDialog":Landroid/app/AlertDialog;
    :cond_0
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 1167
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1168
    .local v0, "internetDialog":Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1169
    const-string v3, "The developer has forgot to declare the INTERNET permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1170
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$3;

    invoke-direct {v4, v0}, Lcom/millennialmedia/android/MMAdView$3;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1177
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1180
    .end local v0    # "internetDialog":Landroid/app/AlertDialog;
    :cond_1
    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1182
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1183
    .local v1, "networkStateDialog":Landroid/app/AlertDialog;
    const-string v3, "Whoops!"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1184
    const-string v3, "The developer has forgot to declare the ACCESS_NETWORK_STATE permission in the manifest file. Please reach out to the developer to remove this error."

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1185
    const-string v3, "OK"

    new-instance v4, Lcom/millennialmedia/android/MMAdView$4;

    invoke-direct {v4, v1}, Lcom/millennialmedia/android/MMAdView$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1192
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1194
    .end local v1    # "networkStateDialog":Landroid/app/AlertDialog;
    :cond_2
    return-void
.end method

.method static getAdTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 464
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MMBannerAdTop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MMBannerAdBottom"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MMBannerAdRectangle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MMFullScreenAdLaunch"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MMFullScreenAdTransition"

    aput-object v2, v0, v1

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 354
    :try_start_0
    const-string v1, "Initializing MMAdView."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 357
    const-class v2, Lcom/millennialmedia/android/MMAdView;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :try_start_1
    new-instance v1, Ljava/lang/Long;

    sget-wide v3, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    invoke-direct {v1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 360
    sget-wide v3, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/millennialmedia/android/MMAdView;->nextAdViewId:J

    .line 361
    const-string v1, "Assigning MMAdView internal id: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :try_start_2
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/content/Context;)V

    .line 368
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdView;->checkActivity(Landroid/content/Context;)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V

    .line 374
    invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V

    .line 376
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->setDescendantFocusability(I)V

    .line 379
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 381
    const-string v1, "MMAdView initialized without an apid. New ad requests will be disabled."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 382
    const-string v1, "28911"

    sput-object v1, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;

    .line 388
    :goto_0
    invoke-static {p1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/millennialmedia/android/HandShake;->overrideAdRefresh(Lcom/millennialmedia/android/MMAdView;)V

    .line 391
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v2, "MMFullScreenAdTransition"

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v2, "MMFullScreenAdLaunch"

    if-ne v1, v2, :cond_1

    .line 393
    :cond_0
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-eq v1, v7, :cond_1

    .line 395
    const-string v1, "Turning off interstitial refresh interval."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    .line 396
    const/4 v1, -0x1

    iput v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    .line 401
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    .line 402
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 403
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 404
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/millennialmedia/android/MMAdView$1;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->gestureDetector:Landroid/view/GestureDetector;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 443
    :goto_1
    sget-boolean v1, Lcom/millennialmedia/android/MMAdView;->appInit:Z

    if-nez v1, :cond_2

    .line 445
    const-string v1, "********** Millennial Device Id *****************"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 446
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 447
    const-string v1, "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 449
    const-string v1, "*************************************************"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 451
    invoke-static {p1}, Lcom/millennialmedia/android/AdCache;->cleanUpExpiredAds(Landroid/content/Context;)V

    .line 453
    invoke-static {p1, v8}, Lcom/millennialmedia/android/MMFileManager;->cleanupCache(Landroid/content/Context;Z)V

    .line 454
    sput-boolean v9, Lcom/millennialmedia/android/MMAdView;->appInit:Z

    .line 457
    :cond_2
    return-void

    .line 362
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 437
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "There was an exception initializing the MMAdView. %s"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 386
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    sput-object v1, Lcom/millennialmedia/android/HandShake;->apid:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method private printDiagnostics()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1433
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1435
    .local v0, "context":Landroid/content/Context;
    const-string v1, "MMAdView ID: %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    const-string v1, "APID: %s"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    const-string v2, "SD card is %savailable."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v4, "mounted"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_0
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1439
    if-eqz v0, :cond_0

    .line 1441
    const-string v1, "Package: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1442
    const-string v1, "HDID: %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->getHdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1444
    const-string v1, "Permissions:"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1445
    const-string v2, "android.permission.READ_PHONE_STATE is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_2

    const-string v1, "not "

    :goto_1
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1447
    const-string v2, "android.permission.ACCESS_NETWORK_STATE is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_3

    const-string v1, "not "

    :goto_2
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1449
    const-string v2, "android.permission.INTERNET is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_4

    const-string v1, "not "

    :goto_3
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1450
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_5

    const-string v1, "not "

    :goto_4
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1452
    const-string v2, "android.permission.VIBRATE is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_6

    const-string v1, "not "

    :goto_5
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1453
    const-string v2, "android.permission.ACCESS_COARSE_LOCATION is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_7

    const-string v1, "not "

    :goto_6
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    const-string v2, "android.permission.ACCESS_FINE_LOCATION is %spresent"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_8

    const-string v1, "not "

    :goto_7
    aput-object v1, v3, v5

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1461
    const-string v1, "Cached Ads:"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 1462
    const/4 v1, 0x2

    new-instance v2, Lcom/millennialmedia/android/MMAdView$8;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/MMAdView$8;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/android/AdCache;->iterateCachedAds(Landroid/content/Context;ILcom/millennialmedia/android/AdCache$Iterator;)V

    .line 1471
    :cond_0
    return-void

    .line 1437
    :cond_1
    const-string v1, "not "

    goto/16 :goto_0

    .line 1445
    :cond_2
    const-string v1, ""

    goto/16 :goto_1

    .line 1447
    :cond_3
    const-string v1, ""

    goto :goto_2

    .line 1449
    :cond_4
    const-string v1, ""

    goto :goto_3

    .line 1450
    :cond_5
    const-string v1, ""

    goto :goto_4

    .line 1452
    :cond_6
    const-string v1, ""

    goto :goto_5

    .line 1453
    :cond_7
    const-string v1, ""

    goto :goto_6

    .line 1455
    :cond_8
    const-string v1, ""

    goto :goto_7
.end method

.method public static startConversionTrackerWithGoalId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    .line 1359
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdView;->checkPermissions(Landroid/content/Context;)V

    .line 1360
    invoke-static {p0, p1}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;)V

    .line 1361
    return-void
.end method


# virtual methods
.method animateTransition()V
    .locals 1

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1375
    new-instance v0, Lcom/millennialmedia/android/MMAdView$7;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$7;-><init>(Lcom/millennialmedia/android/MMAdView;)V

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1416
    :cond_0
    return-void
.end method

.method public callForAd()V
    .locals 4

    .prologue
    .line 783
    new-instance v0, Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    .line 784
    .local v0, "request":Lcom/millennialmedia/android/MMAdView$Request;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->canRequestAd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, v0, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 790
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    goto :goto_0
.end method

.method canRequestAd()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 719
    sget-boolean v3, Lcom/millennialmedia/android/MMAdViewSDK;->disableAdMinRefresh:Z

    if-eqz v3, :cond_0

    .line 728
    :goto_0
    return v1

    .line 721
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/millennialmedia/android/MMAdView;->lastAdRequest:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    const-wide/16 v5, 0xf

    cmp-long v3, v3, v5

    if-ltz v3, :cond_1

    .line 723
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/MMAdView;->lastAdRequest:J

    goto :goto_0

    .line 726
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/millennialmedia/android/MMAdView;->lastAdRequest:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v0, v3

    .line 727
    .local v0, "lastRequest":I
    const-string v3, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    rsub-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 728
    goto :goto_0
.end method

.method public check()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 863
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 865
    const-string v1, "Only the main thread can access an MMAdView."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 868
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->checkInternal()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method checkInternal()I
    .locals 6

    .prologue
    const/16 v1, 0x64

    .line 827
    :try_start_0
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 828
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMAdViewController;->check(Lcom/millennialmedia/android/MMAdView;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 836
    :cond_0
    :goto_0
    return v1

    .line 832
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "There was an exception checking for a cached ad. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public display()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_1

    .line 879
    const-string v1, "Only the main thread can access an MMAdView."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 882
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->displayInternal()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method displayInternal()I
    .locals 6

    .prologue
    const/16 v1, 0x64

    .line 844
    :try_start_0
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 845
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v2, :cond_0

    .line 846
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMAdViewController;->display(Lcom/millennialmedia/android/MMAdView;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 853
    :cond_0
    :goto_0
    return v1

    .line 849
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "There was an exception displaying a cached ad. %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public fetch()V
    .locals 5

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->check()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 797
    const-string v2, "Ad already fetched and ready for display..."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v2, :cond_0

    .line 802
    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v2, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdFailed(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception raised in your MMAdListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 812
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/millennialmedia/android/MMAdView$Request;

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/android/MMAdView$Request;-><init>(Ljava/lang/String;Lcom/millennialmedia/android/MMAdView$RequestListener;Z)V

    .line 813
    .local v1, "request":Lcom/millennialmedia/android/MMAdView$Request;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->canRequestAd()Z

    move-result v2

    if-nez v2, :cond_2

    .line 815
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/MMError;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v2, p0, v1, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0

    .line 818
    :cond_2
    const-string v2, "Fetching new ad..."

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 342
    :cond_1
    return-void
.end method

.method getCachedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListener()Lcom/millennialmedia/android/MMAdView$MMAdListener;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    return-object v0
.end method

.method isInterstitial()Z
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v1, "MMFullScreenAdTransition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    const-string v1, "MMFullScreenAdLaunch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1425
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1429
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1420
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 551
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 552
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    const-string v0, "onAttachedToWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 556
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 557
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedRequest:Lcom/millennialmedia/android/MMAdView$Request;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->deferedRequest:Lcom/millennialmedia/android/MMAdView$Request;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V

    .line 560
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 603
    const-wide/16 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 604
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 568
    const-string v0, "onDetachedFromWindow"

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 569
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 570
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 528
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 532
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 536
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 587
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 590
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "onRestoreInstanceState"

    invoke-static {v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 592
    const-string v3, "MMAdView"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 593
    .local v1, "id":J
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    .line 594
    const-string v3, "super"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 595
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 576
    const-string v1, "onSaveInstanceState"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 579
    const-string v1, "MMAdView"

    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->adViewId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 580
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 622
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    :cond_0
    :goto_0
    return v7

    .line 626
    :cond_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v7, :cond_f

    .line 631
    const-string v4, "Ad clicked: action=%d x=%f y=%f"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 634
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "javascript"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "mmsdk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 636
    :cond_2
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_3
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "mmvideo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "content.once"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 641
    :cond_4
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v7, v4, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 643
    :cond_5
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 645
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v8, v4, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    .line 648
    :cond_6
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v4, v4, Lcom/millennialmedia/android/OverlaySettings;->shouldLaunchToOverlay:Z

    if-ne v4, v7, :cond_9

    .line 651
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    if-eqz v4, :cond_7

    .line 655
    :try_start_0
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    invoke-interface {v4, p0}, Lcom/millennialmedia/android/MMAdView$MMAdListener;->MMAdClickedToOverlay(Lcom/millennialmedia/android/MMAdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_7
    :goto_1
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 664
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/millennialmedia/android/MMAdViewController;->handleClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :catch_0
    move-exception v1

    .line 659
    .local v1, "exception":Ljava/lang/Exception;
    const-string v4, "Exception raised in your MMAdListener: "

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 666
    .end local v1    # "exception":Ljava/lang/Exception;
    :cond_8
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v4, p1}, Lcom/millennialmedia/android/MMAdViewController;->touchWebView(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 671
    :cond_9
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    if-eqz v4, :cond_e

    .line 674
    const-string v4, "Ad clicked, launching new browser"

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 677
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_a

    .line 679
    const-string v4, "The reference to the ad view was broken."

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 685
    :cond_a
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v5, v5, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 686
    .local v2, "myIntent":Landroid/content/Intent;
    const/high16 v4, 0x24000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    instance-of v4, v0, Landroid/app/Activity;

    if-nez v4, :cond_b

    .line 689
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    :cond_b
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v4, v4, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 692
    :cond_c
    const/4 v4, 0x0

    const-string v5, "browser"

    invoke-static {v0, v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->intentStarted(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Ljava/lang/String;)V

    .line 693
    :cond_d
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 695
    .end local v2    # "myIntent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 697
    .local v3, "notFoundException":Landroid/content/ActivityNotFoundException;
    const-string v4, "Could not find activity for: %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v6, v6, Lcom/millennialmedia/android/MMAdViewController;->nextUrl:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 702
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "notFoundException":Landroid/content/ActivityNotFoundException;
    :cond_e
    const-string v4, "No ad returned, no new browser launched"

    invoke-static {v4}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_0

    .line 707
    iget-object v4, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v4, p1}, Lcom/millennialmedia/android/MMAdViewController;->touchWebView(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 515
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v2, :cond_0

    .line 517
    if-nez p2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 522
    :cond_0
    :goto_0
    const-string v2, "Window Visibility Changed. Window is visible?: %b"

    new-array v3, v0, [Ljava/lang/Object;

    if-nez p2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    return-void

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v2, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 522
    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "windowInFocus"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 475
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_0

    .line 477
    if-eqz p1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v4}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 480
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v2, "default"

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 481
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const-string v2, "javascript:MMSDK.mraid.stateChange(\'default\')"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const-string v2, "javascript:MMSDK.mraid.viewableChange(true)"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const-string v2, "javascript:MMSDK.mraid.ready()"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    const-string v1, "Window Focus Changed. Window in focus?: %b"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 499
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    :cond_1
    invoke-static {p0, v5}, Lcom/millennialmedia/android/MMAdViewController;->removeAdViewController(Lcom/millennialmedia/android/MMAdView;Z)V

    .line 505
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/MMMedia$Audio;->sharedAudio(Landroid/content/Context;)Lcom/millennialmedia/android/MMMedia$Audio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMMedia$Audio;->stop()Lcom/millennialmedia/android/MMJSResponse;

    .line 506
    return-void

    .line 487
    :cond_3
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, v4}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 488
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdViewController;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const-string v2, "hidden"

    iput-object v2, v1, Lcom/millennialmedia/android/OverlaySettings;->state:Ljava/lang/String;

    .line 489
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const-string v2, "javascript:MMSDK.mraid.stateChange(\'hidden\')"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const-string v2, "javascript:MMSDK.mraid.viewableChange(false)"

    invoke-virtual {v1, v2}, Lcom/millennialmedia/android/MMAdViewController;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->pauseTimer(Z)V

    .line 890
    :cond_0
    return-void
.end method

.method prepareTransition(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1367
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1368
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->bringToFront()V

    .line 1369
    return-void
.end method

.method requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
    .locals 5
    .param p1, "request"    # Lcom/millennialmedia/android/MMAdView$Request;

    .prologue
    .line 734
    invoke-static {}, Lcom/millennialmedia/android/MMAdViewSDK;->isUiThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 736
    const-string v1, "Only the main thread can access an MMAdView."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, p1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    .line 776
    :goto_0
    return-void

    .line 740
    :cond_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    iget-boolean v1, v1, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v1, :cond_1

    .line 742
    const-string v1, "The server is no longer allowing ads."

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->i(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/millennialmedia/android/MMError;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lcom/millennialmedia/android/MMError;-><init>(I)V

    invoke-static {v1, p0, p1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Event;->requestFailed(Landroid/content/Context;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/MMAdView$Request;Lcom/millennialmedia/android/MMError;)V

    goto :goto_0

    .line 748
    :cond_1
    :try_start_0
    const-string v1, "callForAd"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 749
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdView;->xmlLayout:Z

    if-eqz v1, :cond_2

    .line 753
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->deferedRequest:Lcom/millennialmedia/android/MMAdView$Request;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "There was an exception with the ad request. %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 774
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 757
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget v1, p0, Lcom/millennialmedia/android/MMAdView;->refreshInterval:I

    if-gez v1, :cond_3

    .line 760
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdViewController;->assignAdViewController(Lcom/millennialmedia/android/MMAdView;)V

    .line 761
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v1, :cond_3

    .line 763
    iget-boolean v1, p1, Lcom/millennialmedia/android/MMAdView$Request;->fetch:Z

    if-eqz v1, :cond_4

    .line 764
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMAdViewController;->fetch(Lcom/millennialmedia/android/MMAdView$Request;)V

    .line 769
    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdView;->deferedRequest:Lcom/millennialmedia/android/MMAdView$Request;

    goto :goto_0

    .line 766
    :cond_4
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    invoke-virtual {v1, p1}, Lcom/millennialmedia/android/MMAdViewController;->requestAd(Lcom/millennialmedia/android/MMAdView$Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->controller:Lcom/millennialmedia/android/MMAdViewController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/MMAdViewController;->resumeTimer(Z)V

    .line 897
    :cond_0
    return-void
.end method

.method public setAcid(Ljava/lang/String;)V
    .locals 0
    .param p1, "acid"    # Ljava/lang/String;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 1059
    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0
    .param p1, "adType"    # Ljava/lang/String;

    .prologue
    .line 917
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->adType:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .locals 2
    .param p1, "age"    # Ljava/lang/String;

    .prologue
    .line 927
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 928
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v1, "age"

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    :cond_0
    return-void
.end method

.method public setApid(Ljava/lang/String;)V
    .locals 0
    .param p1, "apid"    # Ljava/lang/String;

    .prologue
    .line 1024
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->apid:Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public setEducation(Ljava/lang/String;)V
    .locals 1
    .param p1, "education"    # Ljava/lang/String;

    .prologue
    .line 1004
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 1005
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    iput-object p1, v0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    .line 1006
    :cond_0
    return-void
.end method

.method public setEthnicity(Ljava/lang/String;)V
    .locals 1
    .param p1, "ethnicity"    # Ljava/lang/String;

    .prologue
    .line 982
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 983
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    iput-object p1, v0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    .line 984
    :cond_0
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 938
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    iput-object p1, v0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    .line 940
    :cond_0
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 1035
    return-void
.end method

.method public setIgnoresDensityScaling(Z)V
    .locals 1
    .param p1, "ignoresDensityScaling"    # Z

    .prologue
    .line 1136
    monitor-enter p0

    .line 1138
    :try_start_0
    iput-boolean p1, p0, Lcom/millennialmedia/android/MMAdView;->ignoreDensityScaling:Z

    .line 1139
    monitor-exit p0

    .line 1140
    return-void

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setIncome(Ljava/lang/String;)V
    .locals 2
    .param p1, "income"    # Ljava/lang/String;

    .prologue
    .line 971
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 972
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v1, "income"

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :cond_0
    return-void
.end method

.method public setListener(Lcom/millennialmedia/android/MMAdView$MMAdListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .prologue
    .line 1114
    monitor-enter p0

    .line 1116
    :try_start_0
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->listener:Lcom/millennialmedia/android/MMAdView$MMAdListener;

    .line 1117
    monitor-exit p0

    .line 1118
    return-void

    .line 1117
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMarital(Ljava/lang/String;)V
    .locals 1
    .param p1, "marital"    # Ljava/lang/String;

    .prologue
    .line 960
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 961
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    iput-object p1, v0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    .line 962
    :cond_0
    return-void
.end method

.method public setMetaValues(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p1, "metaHash":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 1105
    :cond_0
    return-void

    .line 1091
    :cond_1
    const-string v2, "mmacid"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1092
    const-string v2, "mmacid"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->acid:Ljava/lang/String;

    .line 1093
    :cond_2
    const-string v2, "mxsdk"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1094
    const-string v2, "mxsdk"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 1095
    :cond_3
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1096
    const-string v2, "height"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->height:Ljava/lang/String;

    .line 1097
    :cond_4
    const-string v2, "width"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1098
    const-string v2, "width"

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 1100
    :cond_5
    sget-object v2, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMxsdk(Ljava/lang/String;)V
    .locals 0
    .param p1, "mxsdk"    # Ljava/lang/String;

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->mxsdk:Ljava/lang/String;

    .line 1067
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 1
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 993
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 994
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    iput-object p1, v0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    .line 995
    :cond_0
    return-void
.end method

.method public setPolitics(Ljava/lang/String;)V
    .locals 2
    .param p1, "politics"    # Ljava/lang/String;

    .prologue
    .line 1014
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 1015
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v1, "politics"

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public setTransitionType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 1145
    iput p1, p0, Lcom/millennialmedia/android/MMAdView;->transitionType:I

    .line 1146
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .locals 2
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 1049
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 1050
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v1, "vendor"

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_0
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/millennialmedia/android/MMAdView;->width:Ljava/lang/String;

    .line 1045
    return-void
.end method

.method public setZip(Ljava/lang/String;)V
    .locals 2
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 949
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lcom/millennialmedia/android/MMAdViewSDK;->demographic:Lcom/millennialmedia/android/MMDemographic;

    const-string v1, "zip"

    invoke-virtual {v0, v1, p1}, Lcom/millennialmedia/android/MMDemographic;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :cond_0
    return-void
.end method

.method public startConversionTrackerWithGoalId(Ljava/lang/String;)V
    .locals 1
    .param p1, "goalId"    # Ljava/lang/String;

    .prologue
    .line 1348
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/millennialmedia/android/MMConversionTracker;->trackConversion(Landroid/content/Context;Ljava/lang/String;)V

    .line 1349
    return-void
.end method

.method public updateUserLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "userLocation"    # Landroid/location/Location;

    .prologue
    .line 905
    if-nez p1, :cond_0

    .line 908
    :goto_0
    return-void

    .line 907
    :cond_0
    sput-object p1, Lcom/millennialmedia/android/MMAdViewSDK;->location:Landroid/location/Location;

    goto :goto_0
.end method
