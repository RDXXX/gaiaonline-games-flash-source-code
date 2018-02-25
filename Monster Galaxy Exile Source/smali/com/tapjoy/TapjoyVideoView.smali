.class public Lcom/tapjoy/TapjoyVideoView;
.super Landroid/app/Activity;
.source "TapjoyVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyVideoView$RemainingTime;
    }
.end annotation


# static fields
.field private static final BUNDLE_DIALOG_SHOWING:Ljava/lang/String; = "dialog_showing"

.field private static final BUNDLE_SEEK_TIME:Ljava/lang/String; = "seek_time"

.field private static final DIALOG_WARNING_ID:I = 0x0

.field private static final TJC_VIDEO_AD_TEXT_FONT_COLOR:Ljava/lang/String; = "#909090"

.field private static TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String; = null

.field private static final TJC_VIDEO_CURRENCY_TEXT_COLOR:Ljava/lang/String; = "#004194"

.field private static final TJC_VIDEO_FONT_COLOR:Ljava/lang/String; = "\"black\""

.field private static TJC_VIDEO_FONT_SIZE:Ljava/lang/String; = null

.field private static final TJC_VIDEO_FONT_TYPE:Ljava/lang/String; = "\"helvetica\""

.field static buttonHeight:I = 0x0

.field static final colorsBackground:[I

.field static final colorsButtons:[I

.field static final colorsInfo:[I

.field static final cornerAll:[F

.field static final innerRadii:[F

.field static final inset:Landroid/graphics/RectF;

.field static final outerRadii:[F

.field static padding:I = 0x0

.field static final stateFocused:I = 0x101009c

.field static final statePressed:I = 0x10100a7

.field static final stateSelected:I = 0x10100a1

.field private static streamingVideo:Z = false

.field static textSize:I = 0x0

.field private static videoData:Lcom/tapjoy/TapjoyVideoObject; = null

.field private static videoError:Z = false

.field private static final videoSecondsText:Ljava/lang/String; = " seconds"

.field private static final videoWillResumeText:Ljava/lang/String; = ""


# instance fields
.field final TAPJOY_VIDEO:Ljava/lang/String;

.field private adText:Ljava/lang/String;

.field private allowBackKey:Z

.field private clickRequestSuccess:Z

.field private closeButton:Landroid/widget/Button;

.field private currencyAmount:Ljava/lang/String;

.field private currencyName:Ljava/lang/String;

.field private detailsText:Landroid/widget/TextView;

.field deviceScreenDensity:I

.field deviceScreenLayoutSize:I

.field dialog:Landroid/app/Dialog;

.field private dialogShowing:Z

.field private iconURL:Ljava/lang/String;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private linkAltButton:Landroid/widget/Button;

.field private linkButton:Landroid/widget/Button;

.field final mHandler:Landroid/os/Handler;

.field final mUpdateResults:Ljava/lang/Runnable;

.field private overlayText:Landroid/widget/TextView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private replayButton:Landroid/widget/Button;

.field private seekTime:I

.field private tapjoyImage:Landroid/widget/ImageView;

.field private thumbnailImage:Landroid/widget/ImageView;

.field private timeRemaining:I

.field timer:Ljava/util/Timer;

.field private videoPath:Ljava/lang/String;

.field private videoScreenshot:Landroid/graphics/Bitmap;

.field private videoView:Landroid/widget/VideoView;

.field private whatNowText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x2

    const/high16 v1, 0x40c00000    # 6.0f

    .line 83
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoError:Z

    .line 84
    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 116
    const-string v0, "\"4\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 118
    const-string v0, "\"3\""

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 126
    const/16 v0, 0x10

    sput v0, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 127
    const/16 v0, 0xa

    sput v0, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 128
    const/4 v0, -0x1

    sput v0, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 130
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsBackground:[I

    .line 135
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsInfo:[I

    .line 140
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    .line 145
    new-array v0, v3, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->cornerAll:[F

    .line 151
    new-array v0, v3, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->outerRadii:[F

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->inset:Landroid/graphics/RectF;

    .line 153
    new-array v0, v3, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/tapjoy/TapjoyVideoView;->innerRadii:[F

    .line 63
    return-void

    .line 130
    nop

    :array_0
    .array-data 4
        -0x757576
        -0xbbbbbc
    .end array-data

    .line 135
    :array_1
    .array-data 4
        -0x1
        -0x171718
    .end array-data

    .line 140
    :array_2
    .array-data 4
        -0x1
        -0x171718
    .end array-data

    .line 145
    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 151
    :array_4
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 153
    :array_5
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 66
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    .line 72
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    .line 73
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    .line 74
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    .line 75
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    .line 81
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 88
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 92
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    .line 93
    iput-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 94
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 95
    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 121
    const-string v0, "VIDEO"

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->TAPJOY_VIDEO:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mHandler:Landroid/os/Handler;

    .line 876
    new-instance v0, Lcom/tapjoy/TapjoyVideoView$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/TapjoyVideoView$1;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->mUpdateResults:Ljava/lang/Runnable;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    .prologue
    .line 851
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->getRemainingVideoTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/tapjoy/TapjoyVideoView;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    return-void
.end method

.method static synthetic access$2(Lcom/tapjoy/TapjoyVideoView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tapjoy/TapjoyVideoView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$4(Lcom/tapjoy/TapjoyVideoView;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    return-void
.end method

.method static synthetic access$5()Lcom/tapjoy/TapjoyVideoObject;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    return-object v0
.end method

.method static synthetic access$6(Lcom/tapjoy/TapjoyVideoView;Z)V
    .locals 0

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return-void
.end method

.method static synthetic access$7(Lcom/tapjoy/TapjoyVideoView;)Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->clickRequestSuccess:Z

    return v0
.end method

.method static synthetic access$8(Lcom/tapjoy/TapjoyVideoView;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tapjoy/TapjoyVideoView;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    return v0
.end method

.method private createButton(Ljava/lang/String;)Landroid/widget/Button;
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 746
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    .line 747
    .local v4, "s1":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 748
    .local v3, "n1":Landroid/graphics/drawable/Drawable;
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->colorsButtons:[I

    invoke-static {v5}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 751
    .local v2, "f1":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 753
    .local v1, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v5, v8, [I

    const/4 v6, 0x0

    const v7, 0x10100a7

    aput v7, v5, v6

    invoke-virtual {v1, v5, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 754
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 755
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 757
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 758
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 761
    const v5, -0xfcc36e

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 762
    sget v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextSize(F)V

    .line 763
    const-string v5, "default"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v0, v5, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 765
    sget v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    if-lez v5, :cond_0

    .line 766
    sget v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setHeight(I)V

    .line 768
    :cond_0
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding bottom: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding top: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding left: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding right: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/widget/Button;->setPadding(IIII)V

    .line 775
    return-object v0

    .line 754
    nop

    :array_0
    .array-data 4
        -0x101009c
        -0x10100a1
    .end array-data

    .line 755
    :array_1
    .array-data 4
        -0x101009c
        0x10100a1
    .end array-data
.end method

.method private static createGradient([I)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .param p0, "colors"    # [I

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 787
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 790
    .local v1, "orientation":Landroid/graphics/drawable/GradientDrawable$Orientation;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .end local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 793
    .restart local v0    # "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    sget-object v2, Lcom/tapjoy/TapjoyVideoView;->cornerAll:[F

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 794
    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 796
    return-object v0
.end method

.method private getRemainingVideoTime()I
    .locals 3

    .prologue
    .line 853
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit16 v0, v1, 0x3e8

    .line 855
    .local v0, "timeRemaining":I
    if-gez v0, :cond_0

    .line 856
    const/4 v0, 0x0

    .line 858
    :cond_0
    return v0
.end method

.method private initVideoUI()V
    .locals 45

    .prologue
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 409
    .local v14, "display":Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v38

    .line 410
    .local v38, "width":I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v18

    .line 412
    .local v18, "height":I
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "view dimensions: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "x"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v40, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    const/16 v41, 0x3

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_0

    .line 418
    new-instance v15, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 420
    .local v15, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v15}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    .line 422
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "deviceScreenLayoutSize: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    move/from16 v40, v0

    const/16 v41, 0x4

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 427
    const/16 v40, 0x14

    sput v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 428
    const/16 v40, 0x20

    sput v40, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 429
    div-int/lit8 v40, v18, 0x7

    sput v40, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 431
    const-string v40, "\"10\""

    sput-object v40, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 432
    const-string v40, "\"6\""

    sput-object v40, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 434
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "buttonHeight: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v42, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v15    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    :cond_0
    div-int/lit8 v19, v18, 0x3

    .line 439
    .local v19, "infoViewHeight":I
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v40

    div-int/lit8 v40, v40, 0x2

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v41, v41, 0x2

    sub-int v6, v40, v41

    .line 441
    .local v6, "buttonWidth":I
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 443
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x1

    const/16 v41, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 444
    .local v20, "linearLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v20

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "Details"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "default"

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, -0x1000000

    invoke-virtual/range {v40 .. v44}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 456
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    const/16 v41, -0x2

    move/from16 v0, v40

    move/from16 v1, v41

    invoke-direct {v13, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 457
    .local v13, "detailsParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    const/16 v43, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x83f

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setId(I)V

    .line 474
    :try_start_0
    sget-object v40, Lcom/tapjoy/TapjoyVideo;->imageBackgroundLocation:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 476
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 478
    new-instance v33, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 479
    .local v33, "tiledBackground":Landroid/graphics/drawable/BitmapDrawable;
    sget-object v40, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 480
    sget-object v40, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v33    # "tiledBackground":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    new-instance v40, Landroid/widget/ImageView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    .line 499
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tapjoy/TapjoyVideoView;->videoScreenshot:Landroid/graphics/Bitmap;

    .line 504
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v5, :cond_2

    .line 506
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v34

    .line 507
    .local v34, "w":I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 510
    .local v17, "h":I
    sget-object v40, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v17

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v28

    .line 511
    .local v28, "rounder":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 516
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v39, Landroid/graphics/Paint;

    const/16 v40, 0x1

    invoke-direct/range {v39 .. v40}, Landroid/graphics/Paint;-><init>(I)V

    .line 517
    .local v39, "xferPaint":Landroid/graphics/Paint;
    const/high16 v40, -0x10000

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setColor(I)V

    .line 521
    new-instance v40, Landroid/graphics/RectF;

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v43, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v44, v0

    invoke-direct/range {v40 .. v44}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v41, 0x41c80000    # 25.0f

    const/high16 v42, 0x41c80000    # 25.0f

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move-object/from16 v3, v39

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 524
    new-instance v40, Landroid/graphics/PorterDuffXfermode;

    sget-object v41, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v40 .. v41}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual/range {v39 .. v40}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 527
    sget-object v40, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v34

    move/from16 v1, v17

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 528
    .local v27, "roundedBitmap":Landroid/graphics/Bitmap;
    new-instance v26, Landroid/graphics/Canvas;

    invoke-direct/range {v26 .. v27}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 530
    .local v26, "result":Landroid/graphics/Canvas;
    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 535
    move/from16 v11, v19

    .line 536
    .local v11, "desiredHeight":I
    mul-int v40, v34, v11

    div-int v12, v40, v17

    .line 539
    .local v12, "desiredWidth":I
    const/16 v40, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-static {v0, v12, v11, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 541
    .local v29, "scaled":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    invoke-virtual/range {v40 .. v44}, Landroid/widget/ImageView;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v11    # "desiredHeight":I
    .end local v12    # "desiredWidth":I
    .end local v17    # "h":I
    .end local v26    # "result":Landroid/graphics/Canvas;
    .end local v27    # "roundedBitmap":Landroid/graphics/Bitmap;
    .end local v28    # "rounder":Landroid/graphics/Bitmap;
    .end local v29    # "scaled":Landroid/graphics/Bitmap;
    .end local v34    # "w":I
    .end local v39    # "xferPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_2
    new-instance v36, Landroid/webkit/WebView;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 551
    .local v36, "webview":Landroid/webkit/WebView;
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 554
    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "<html><body><font face=\"helvetica\" color=\"black\" size="

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    sget-object v41, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 558
    const-string v41, "<p>You just earned <font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "#004194"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "><b>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->currencyAmount:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "</b></font> "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->currencyName:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "! <br /> <font color="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "#909090"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 559
    const-string v41, " size="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    sget-object v41, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ">"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 560
    const-string v41, "<b>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->adText:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "</b></p></font></font></body></html>"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    .line 554
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 563
    .local v32, "summary":Ljava/lang/String;
    const-string v40, "text/html"

    const-string v41, "utf-8"

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 566
    .local v35, "webLinearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 570
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    neg-int v0, v0

    move/from16 v40, v0

    div-int/lit8 v40, v40, 0x2

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    div-int/lit8 v41, v41, 0x2

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 572
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 573
    .local v9, "customLinearLayoutView":Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v40, v40, 0x2

    sub-int v40, v38, v40

    move/from16 v0, v40

    move/from16 v1, v19

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 574
    .local v10, "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 575
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 578
    const/16 v40, 0x0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v41, v41, 0x2

    const/16 v42, 0x0

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    mul-int/lit8 v43, v43, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 579
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->colorsInfo:[I

    invoke-static/range {v40 .. v40}, Lcom/tapjoy/TapjoyVideoView;->createGradient([I)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    const/16 v40, 0x13

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->thumbnailImage:Landroid/widget/ImageView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 583
    move-object/from16 v0, v35

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "What now?"

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, -0x1

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    sget v41, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "default"

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x3f800000    # 1.0f

    const/high16 v42, 0x3f800000    # 1.0f

    const/high16 v43, 0x3f800000    # 1.0f

    const/high16 v44, -0x1000000

    invoke-virtual/range {v40 .. v44}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 594
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    const/16 v41, -0x2

    move-object/from16 v0, v37

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 595
    .local v37, "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    const/16 v43, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0xc28

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setId(I)V

    .line 603
    const-string v40, "Replay this video"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    .line 605
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 606
    .local v25, "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v25

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    const/16 v41, 0x459

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setId(I)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$3;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$3;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "button dimensions: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "x"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v40, "View More Offers"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    .line 625
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move/from16 v0, v40

    invoke-direct {v8, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    .local v8, "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$4;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$4;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 638
    .local v21, "linearLayoutRow":Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v22

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .local v22, "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    const/16 v40, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->replayButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->closeButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "linear width: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->detailsText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->whatNowText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 654
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_3

    .line 656
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget-object v40, v40, v41

    const/16 v41, 0x0

    aget-object v40, v40, v41

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    .line 658
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 659
    .local v24, "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v24

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$5;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v0, v40

    iget v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonCount:I

    move/from16 v40, v0

    const/16 v41, 0x2

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_5

    .line 688
    sget-object v40, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoObject;->buttonData:[[Ljava/lang/String;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aget-object v40, v40, v41

    const/16 v41, 0x0

    aget-object v40, v40, v41

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView;->createButton(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    .line 690
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-direct {v0, v6, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 691
    .local v23, "linkAltParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v40, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v41, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v42, Lcom/tapjoy/TapjoyVideoView;->padding:I

    sget v43, Lcom/tapjoy/TapjoyVideoView;->padding:I

    move-object/from16 v0, v23

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    new-instance v41, Lcom/tapjoy/TapjoyVideoView$6;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyVideoView$6;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual/range {v40 .. v41}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 718
    .local v30, "secondLayoutRow":Landroid/widget/LinearLayout;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, -0x2

    move-object/from16 v0, v31

    move/from16 v1, v38

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 719
    .local v31, "secondLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 720
    const/16 v40, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkAltButton:Landroid/widget/Button;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 732
    .end local v23    # "linkAltParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v24    # "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "secondLayoutRow":Landroid/widget/LinearLayout;
    .end local v31    # "secondLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    :goto_3
    return-void

    .line 485
    .end local v8    # "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "customLinearLayoutView":Landroid/widget/LinearLayout;
    .end local v10    # "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v21    # "linearLayoutRow":Landroid/widget/LinearLayout;
    .end local v22    # "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v25    # "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v32    # "summary":Ljava/lang/String;
    .end local v35    # "webLinearLayout":Landroid/widget/LinearLayout;
    .end local v36    # "webview":Landroid/webkit/WebView;
    .end local v37    # "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    :catch_0
    move-exception v16

    .line 487
    .local v16, "e":Ljava/lang/Exception;
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "error decoding background image: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_2
    sget-object v40, Lcom/tapjoy/TapjoyVideo;->imagePlaceholderLocation:Ljava/lang/String;

    invoke-static/range {v40 .. v40}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 545
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v16

    .line 547
    .restart local v16    # "e":Ljava/lang/Exception;
    const-string v40, "VIDEO"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "error decoding thumbnail image: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 729
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v8    # "closeParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v9    # "customLinearLayoutView":Landroid/widget/LinearLayout;
    .restart local v10    # "customLinearLayoutViewParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21    # "linearLayoutRow":Landroid/widget/LinearLayout;
    .restart local v22    # "linearLayoutRowParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v24    # "linkParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v25    # "replayParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v32    # "summary":Ljava/lang/String;
    .restart local v35    # "webLinearLayout":Landroid/widget/LinearLayout;
    .restart local v36    # "webview":Landroid/webkit/WebView;
    .restart local v37    # "whatNowParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tapjoy/TapjoyVideoView;->linkButton:Landroid/widget/Button;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3
.end method

.method private initVideoView()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x1

    const/4 v7, -0x2

    .line 339
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 340
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 342
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 347
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    .line 348
    sget-object v4, Lcom/tapjoy/TapjoyVideo;->imageTapjoyLocation:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 351
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v1, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 355
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, p0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    .line 362
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 363
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 364
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 366
    sget-boolean v4, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    if-eqz v4, :cond_2

    .line 368
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "streaming video: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 377
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 379
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    .line 386
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "videoView.getDuration(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v6}, Landroid/widget/VideoView;->getDuration()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "timeRemaining: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/tapjoy/TapjoyVideoView;->timeRemaining:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    .line 390
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    sget v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 391
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    const-string v5, "default"

    invoke-static {v5, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 393
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 394
    .local v3, "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 395
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "textParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->startVideo()V

    .line 400
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->tapjoyImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->overlayText:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 403
    return-void

    .line 373
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const-string v4, "VIDEO"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cached video: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showVideoUI()V
    .locals 4

    .prologue
    .line 737
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 738
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v3, Lcom/tapjoy/TapjoyVideoView;->colorsBackground:[I

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 740
    return-void
.end method

.method private startVideo()V
    .locals 6

    .prologue
    .line 805
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 808
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 811
    const-string v0, "VIDEO"

    const-string v1, "dialog is showing -- don\'t start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 827
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    .line 828
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$RemainingTime;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tapjoy/TapjoyVideoView$RemainingTime;-><init>(Lcom/tapjoy/TapjoyVideoView;Lcom/tapjoy/TapjoyVideoView$RemainingTime;)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 830
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$7;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$7;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 843
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 844
    return-void

    .line 815
    :cond_1
    const-string v0, "VIDEO"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 817
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 915
    const-string v0, "VIDEO"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 920
    :cond_0
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoUI()V

    .line 921
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoUI()V

    .line 923
    sget-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoError:Z

    if-nez v0, :cond_1

    .line 926
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v0

    invoke-interface {v0}, Lcom/tapjoy/TapjoyVideoNotifier;->videoComplete()V

    .line 928
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$8;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$8;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 936
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 940
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tapjoy/TapjoyVideoView;->videoError:Z

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 942
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 163
    const-string v5, "VIDEO"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_0

    .line 167
    const-string v5, "VIDEO"

    const-string v6, "*** Loading saved data from bundle ***"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v5, "seek_time"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 169
    const-string v5, "dialog_showing"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 172
    :cond_0
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "dialogShowing: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", seekTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v5, 0x0

    sput-boolean v5, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 177
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v5

    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->finish()V

    .line 277
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getInstance()Lcom/tapjoy/TapjoyVideo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tapjoy/TapjoyVideo;->getCurrentVideoData()Lcom/tapjoy/TapjoyVideoObject;

    move-result-object v5

    sput-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    .line 185
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->dataLocation:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    .line 188
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 190
    :cond_2
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "no cached video, try streaming video at location: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v7, v7, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->videoURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    .line 192
    sput-boolean v9, Lcom/tapjoy/TapjoyVideoView;->streamingVideo:Z

    .line 195
    :cond_3
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->currencyAmount:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->currencyAmount:Ljava/lang/String;

    .line 196
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->currencyName:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->currencyName:Ljava/lang/String;

    .line 197
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->videoAdName:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->adText:Ljava/lang/String;

    .line 198
    sget-object v5, Lcom/tapjoy/TapjoyVideoView;->videoData:Lcom/tapjoy/TapjoyVideoObject;

    iget-object v5, v5, Lcom/tapjoy/TapjoyVideoObject;->iconURL:Ljava/lang/String;

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    .line 201
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->iconURL:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 203
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/tapjoy/TapjoyVideoView$2;

    invoke-direct {v6, p0}, Lcom/tapjoy/TapjoyVideoView$2;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 228
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 231
    :cond_4
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "videoPath: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/tapjoy/TapjoyVideoView;->videoPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0, v9}, Lcom/tapjoy/TapjoyVideoView;->requestWindowFeature(I)Z

    .line 236
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 237
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v5, p0, Lcom/tapjoy/TapjoyVideoView;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v5}, Lcom/tapjoy/TapjoyVideoView;->setContentView(Landroid/view/View;)V

    .line 243
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_5

    .line 245
    new-instance v1, Lcom/tapjoy/TapjoyDisplayMetricsUtil;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    invoke-virtual {v1}, Lcom/tapjoy/TapjoyDisplayMetricsUtil;->getScreenLayoutSize()I

    move-result v5

    iput v5, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    .line 249
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deviceScreenLayoutSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget v5, p0, Lcom/tapjoy/TapjoyVideoView;->deviceScreenLayoutSize:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 254
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyVideoView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 255
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 256
    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 258
    .local v2, "height":I
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "width: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/16 v5, 0x14

    sput v5, Lcom/tapjoy/TapjoyVideoView;->padding:I

    .line 261
    const/16 v5, 0x20

    sput v5, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    .line 262
    div-int/lit8 v5, v2, 0x7

    sput v5, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    .line 264
    const-string v5, "\"10\""

    sput-object v5, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_FONT_SIZE:Ljava/lang/String;

    .line 265
    const-string v5, "\"6\""

    sput-object v5, Lcom/tapjoy/TapjoyVideoView;->TJC_VIDEO_AD_TEXT_FONT_SIZE:Ljava/lang/String;

    .line 267
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "buttonHeight: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->buttonHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displayMetricsUtil":Lcom/tapjoy/TapjoyDisplayMetricsUtil;
    .end local v2    # "height":I
    .end local v4    # "width":I
    :cond_5
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "padding: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->padding:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v5, "VIDEO"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "textSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Lcom/tapjoy/TapjoyVideoView;->textSize:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->initVideoView()V

    .line 276
    const-string v5, "VIDEO"

    const-string v6, "onCreate DONE"

    invoke-static {v5, v6}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 989
    const-string v0, "VIDEO"

    const-string v1, "dialog onCreateDialog"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 1047
    :goto_0
    return-object v0

    .line 996
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1045
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 1047
    :goto_1
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    goto :goto_0

    .line 999
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Cancel Video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Currency will not be awarded, are you sure you want to cancel the video?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1000
    const-string v1, "End"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$9;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$9;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1007
    const-string v1, "Resume"

    new-instance v2, Lcom/tapjoy/TapjoyVideoView$10;

    invoke-direct {v2, p0}, Lcom/tapjoy/TapjoyVideoView$10;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1023
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 999
    iput-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    .line 1026
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/tapjoy/TapjoyVideoView$11;

    invoke-direct {v1, p0}, Lcom/tapjoy/TapjoyVideoView$11;-><init>(Lcom/tapjoy/TapjoyVideoView;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1041
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    goto :goto_1

    .line 996
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v2, 0x1

    .line 899
    sput-boolean v2, Lcom/tapjoy/TapjoyVideoView;->videoError:Z

    .line 900
    const-string v0, "VIDEO"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/tapjoy/TapjoyVideo;->getVideoNotifier()Lcom/tapjoy/TapjoyVideoNotifier;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/tapjoy/TapjoyVideoNotifier;->videoError(I)V

    .line 903
    iput-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    .line 905
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 908
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 948
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 951
    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->allowBackKey:Z

    if-nez v1, :cond_1

    .line 955
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 956
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 958
    iput-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    .line 959
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tapjoy/TapjoyVideoView;->showDialog(I)V

    .line 961
    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PAUSE VIDEO time: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currentPosition: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    const-string v1, "VIDEO"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duration: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", elapsed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getDuration()I

    move-result v3

    iget-object v4, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v4}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    :cond_0
    :goto_0
    return v0

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 973
    invoke-direct {p0}, Lcom/tapjoy/TapjoyVideoView;->showVideoUI()V

    .line 975
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/tapjoy/TapjoyVideoView;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    goto :goto_0

    .line 983
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 282
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 285
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "VIDEO"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    .line 289
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_0
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 892
    const-string v0, "VIDEO"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 297
    const-string v0, "VIDEO"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tapjoy/TapjoyVideoView;->setRequestedOrientation(I)V

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    iget v0, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    if-lez v0, :cond_1

    .line 306
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 311
    iget-boolean v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/TapjoyVideoView;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 314
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "VIDEO"

    const-string v1, "*** onSaveInstanceState ***"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "VIDEO"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dialogShowing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seekTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v0, "dialog_showing"

    iget-boolean v1, p0, Lcom/tapjoy/TapjoyVideoView;->dialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string v0, "seek_time"

    iget v1, p0, Lcom/tapjoy/TapjoyVideoView;->seekTime:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 326
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 332
    const-string v0, "VIDEO"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 334
    return-void
.end method
