.class Lcom/millennialmedia/android/AdViewOverlayView;
.super Landroid/widget/FrameLayout;
.source "AdViewOverlayView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;,
        Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;,
        Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;,
        Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;,
        Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;,
        Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;,
        Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    }
.end annotation


# static fields
.field private static final TITLE_MARGIN_X:I = 0x8

.field private static final TITLE_MARGIN_Y:I = 0x9


# instance fields
.field private content:Landroid/widget/RelativeLayout;

.field private mraidCloseButton:Landroid/widget/Button;

.field private navBar:Landroid/widget/RelativeLayout;

.field private navCloseButton:Landroid/widget/Button;

.field private overlayUrl:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private progressDone:Z

.field private settings:Lcom/millennialmedia/android/OverlaySettings;

.field private title:Landroid/widget/TextView;

.field viewHandler:Landroid/os/Handler;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/millennialmedia/android/OverlaySettings;)V
    .locals 26
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "settings"    # Lcom/millennialmedia/android/OverlaySettings;

    .prologue
    .line 72
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 716
    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/AdViewOverlayView$12;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    .line 73
    const/16 v2, 0x3ad6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->setId(I)V

    .line 74
    if-nez p1, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/millennialmedia/android/OverlaySettings;->isBannerAd:Z

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    .line 81
    .local v17, "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    if-eqz v17, :cond_2

    .line 83
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->bottomBarVisible:Z

    iput-boolean v3, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    .line 84
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->bottomBarEnabled:Z

    iput-boolean v3, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    .line 85
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    .line 86
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->webView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    .line 90
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    .line 92
    .local v19, "scale":F
    const/high16 v2, 0x3d800000    # 0.0625f

    mul-float v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget v3, v3, Lcom/millennialmedia/android/OverlaySettings;->shouldResizeOverlay:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 93
    .local v20, "scaledPadding":Ljava/lang/Integer;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/millennialmedia/android/AdViewOverlayView;->setPadding(IIII)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->addView(Landroid/view/View;)V

    .line 99
    const/16 v21, 0x0

    .line 100
    .local v21, "titleBar":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v2, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v2, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldShowTitlebar:Z

    if-eqz v2, :cond_3

    .line 102
    new-instance v21, Landroid/widget/RelativeLayout;

    .end local v21    # "titleBar":Landroid/widget/RelativeLayout;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .restart local v21    # "titleBar":Landroid/widget/RelativeLayout;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    .local v22, "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    invoke-virtual/range {v21 .. v22}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    const/high16 v2, -0x1000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 107
    const/16 v2, 0x64

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 108
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v3, v3, Lcom/millennialmedia/android/OverlaySettings;->overlayTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    const/16 v3, 0x8

    const/16 v4, 0x9

    const/16 v5, 0x8

    const/16 v6, 0x9

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 118
    new-instance v10, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 119
    .local v10, "closeButton":Landroid/widget/Button;
    const/high16 v2, -0x1000000

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 120
    const-string v2, "Close"

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const/4 v2, -0x1

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 122
    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/millennialmedia/android/AdViewOverlayView$1;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v10, v2}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 140
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v14, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v14, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v14, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 148
    .end local v10    # "closeButton":Landroid/widget/Button;
    .end local v14    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v22    # "titleParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/millennialmedia/android/OverlaySettings;->shouldShowCustomClose:Z

    if-eqz v2, :cond_a

    .line 150
    new-instance v2, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    .line 151
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    .local v16, "navLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdViewOverlayView$BottomBarDrawable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 156
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v2, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldEnableBottomBar:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->setCloseButtonListener(Z)V

    .line 159
    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 160
    .local v11, "closeHeight":I
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .local v12, "closeLP":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x41400000    # 12.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 162
    const/high16 v2, 0x41700000    # 15.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 163
    const/16 v2, 0xb

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    const/16 v2, 0xf

    invoke-virtual {v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    move-object/from16 v25, v0

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    iget v5, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v8, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/widget/Button;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v2, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldShowBottomBar:Z

    if-eqz v2, :cond_9

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 202
    .end local v12    # "closeLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "navLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    if-nez v2, :cond_4

    .line 204
    new-instance v2, Landroid/webkit/WebView;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    .line 206
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 207
    new-instance v24, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v24, "webviewLp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v21, :cond_b

    .line 209
    const/4 v2, 0x3

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 212
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_c

    .line 213
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getId()I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 216
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayWebViewClient;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Lcom/millennialmedia/android/OverlaySettings;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdViewOverlayView$OverlayJSInterface;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    const-string v4, "interface"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v23

    .line 220
    .local v23, "webSettings":Landroid/webkit/WebSettings;
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    const-string v2, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 225
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setLoadWithOverviewMode"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 226
    .local v15, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 234
    .end local v15    # "method":Ljava/lang/reflect/Method;
    :goto_4
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setGeolocationEnabled"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 235
    .restart local v15    # "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-virtual {v15, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    .end local v15    # "method":Ljava/lang/reflect/Method;
    :goto_5
    new-instance v13, Landroid/view/GestureDetector;

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView$3;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/app/Activity;)V

    move-object/from16 v0, p1

    invoke-direct {v13, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 250
    .local v13, "gestDetector":Landroid/view/GestureDetector;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/millennialmedia/android/AdViewOverlayView$4;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v2, v2, Lcom/millennialmedia/android/OverlaySettings;->shouldMakeOverlayTransparent:Z

    if-eqz v2, :cond_d

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 267
    :try_start_2
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "setLayerType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/graphics/Paint;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 268
    .restart local v15    # "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v15, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 274
    .end local v15    # "method":Ljava/lang/reflect/Method;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 282
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    if-eqz v2, :cond_5

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 287
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v2, :cond_6

    .line 289
    new-instance v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 292
    new-instance v18, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 293
    .local v18, "progParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    .end local v18    # "progParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    if-nez v17, :cond_7

    .line 298
    invoke-direct/range {p0 .. p0}, Lcom/millennialmedia/android/AdViewOverlayView;->animateView()V

    .line 300
    :cond_7
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdViewOverlayView$5;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/millennialmedia/android/OverlaySettings;->delayShowBottombar:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 313
    :cond_8
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->viewHandler:Landroid/os/Handler;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdViewOverlayView$6;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/millennialmedia/android/OverlaySettings;->delayEnableBottombar:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 174
    .end local v13    # "gestDetector":Landroid/view/GestureDetector;
    .end local v23    # "webSettings":Landroid/webkit/WebSettings;
    .end local v24    # "webviewLp":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v12    # "closeLP":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v16    # "navLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 179
    .end local v11    # "closeHeight":I
    .end local v12    # "closeLP":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v16    # "navLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_a
    new-instance v2, Landroid/widget/Button;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    const/16 v3, 0x12d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setId(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v3, v0, v4, v1}, Lcom/millennialmedia/android/AdViewOverlayView$CloseTopDrawable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;ZF)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    new-instance v3, Lcom/millennialmedia/android/AdViewOverlayView$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/millennialmedia/android/AdViewOverlayView$2;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const/high16 v2, 0x42480000    # 50.0f

    mul-float v2, v2, v19

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v11, v2

    .line 191
    .restart local v11    # "closeHeight":I
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v11, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v9, "closeButParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 193
    const/16 v2, 0xa

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    iget v5, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v6, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v7, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v8, v9, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/millennialmedia/android/AdViewOverlayView$SetCloseButtonTouchDelegateRunnable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Landroid/widget/Button;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 211
    .end local v9    # "closeButParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v24    # "webviewLp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b
    const/16 v2, 0xa

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 215
    :cond_c
    const/16 v2, 0xc

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_3

    .line 278
    .restart local v13    # "gestDetector":Landroid/view/GestureDetector;
    .restart local v23    # "webSettings":Landroid/webkit/WebSettings;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_7

    .line 270
    :catch_0
    move-exception v2

    goto/16 :goto_6

    .line 237
    .end local v13    # "gestDetector":Landroid/view/GestureDetector;
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 228
    :catch_2
    move-exception v2

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/millennialmedia/android/AdViewOverlayView;)Lcom/millennialmedia/android/OverlaySettings;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/millennialmedia/android/AdViewOverlayView;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/millennialmedia/android/AdViewOverlayView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->mraidCloseButton:Landroid/widget/Button;

    return-object v0
.end method

.method private animateView()V
    .locals 12

    .prologue
    const v4, 0x3f666666    # 0.9f

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 507
    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v5, v5, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    const-string v6, "toptobottom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 509
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 512
    .local v0, "translateDown":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-wide v4, v1, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 513
    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$7;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdViewOverlayView$7;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 528
    const-string v1, "Translate down"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 583
    .end local v0    # "translateDown":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v5, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v5, v5, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    const-string v6, "explode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const v3, 0x3f8ccccd    # 1.1f

    const v5, 0x3dcccccd    # 0.1f

    move v6, v4

    move v7, v1

    move v9, v1

    move v10, v8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 535
    .local v2, "scale":Landroid/view/animation/ScaleAnimation;
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-wide v4, v1, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 536
    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$8;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdViewOverlayView$8;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 550
    const-string v1, "Explode"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 553
    .end local v2    # "scale":Landroid/view/animation/ScaleAnimation;
    :cond_2
    iget-object v4, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v4, v4, Lcom/millennialmedia/android/OverlaySettings;->overlayTransition:Ljava/lang/String;

    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 562
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v1

    move v10, v1

    move v11, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 565
    .local v3, "translateUp":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->settings:Lcom/millennialmedia/android/OverlaySettings;

    iget-wide v4, v1, Lcom/millennialmedia/android/OverlaySettings;->transitionTime:J

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 566
    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$9;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdViewOverlayView$9;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 580
    const-string v1, "Translate up"

    invoke-static {v1}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->v(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method dismiss(Z)V
    .locals 5
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x1

    .line 676
    const-string v2, "Ad overlay closed"

    invoke-static {v2}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->d(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 678
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 682
    :cond_0
    if-eqz p1, :cond_1

    .line 684
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 685
    .local v1, "animation":Landroid/view/animation/AlphaAnimation;
    new-instance v2, Lcom/millennialmedia/android/AdViewOverlayView$11;

    invoke-direct {v2, p0}, Lcom/millennialmedia/android/AdViewOverlayView$11;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 703
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 704
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 705
    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 706
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 707
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 711
    .end local v1    # "animation":Landroid/view/animation/AlphaAnimation;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method getNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 627
    new-instance v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;

    invoke-direct {v0, v2}, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;-><init>(Lcom/millennialmedia/android/AdViewOverlayView$1;)V

    .line 628
    .local v0, "nonConfigurationInstance":Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 630
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 631
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->bottomBarVisible:Z

    .line 634
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->bottomBarEnabled:Z

    .line 636
    :cond_0
    iget-boolean v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    iput-boolean v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->progressDone:Z

    .line 637
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    iput-object v1, v0, Lcom/millennialmedia/android/AdViewOverlayView$NonConfigurationInstance;->webView:Landroid/webkit/WebView;

    .line 638
    return-object v0

    .line 633
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method goBack()Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 593
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method injectJS(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsString"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method loadWebContent(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayUrl:Ljava/lang/String;

    .line 605
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->overlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    const-string v0, "No network available, can\'t load overlay."

    invoke-static {v0}, Lcom/millennialmedia/android/MMAdViewSDK$Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "windowInFocus"    # Z

    .prologue
    .line 927
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 928
    if-eqz p1, :cond_0

    .line 930
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.stateChange(\'expanded\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 931
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.viewableChange(true)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 938
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.stateChange(\'hidden\');"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:MMSDK.mraid.viewableChange(false)"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setCloseButtonListener(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 647
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 649
    if-eqz p1, :cond_1

    .line 651
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;

    invoke-direct {v1, p0, v3}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 652
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$10;

    invoke-direct {v1, p0}, Lcom/millennialmedia/android/AdViewOverlayView$10;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/AdViewOverlayView$CloseDrawable;-><init>(Lcom/millennialmedia/android/AdViewOverlayView;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 665
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->navCloseButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method stopProgress()V
    .locals 2

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressDone:Z

    .line 332
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 333
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->content:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayView;->progressBar:Landroid/widget/ProgressBar;

    .line 336
    :cond_0
    return-void
.end method
