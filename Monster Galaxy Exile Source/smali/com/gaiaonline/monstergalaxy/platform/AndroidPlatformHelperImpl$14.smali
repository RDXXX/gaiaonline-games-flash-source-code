.class Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;
.super Ljava/lang/Object;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->addOptionsView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

.field private final synthetic val$UdId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    iput-object p2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->val$UdId:Ljava/lang/String;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v17

    .line 478
    const-string v18, "layout_inflater"

    invoke-virtual/range {v17 .. v18}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 477
    check-cast v5, Landroid/view/LayoutInflater;

    .line 480
    .local v5, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v18, v0

    sget v17, Lcom/gaiaonline/monstergalaxy/R$layout;->settings:I

    .line 481
    const/16 v19, 0x0

    .line 480
    move/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$11(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Landroid/widget/ScrollView;)V

    .line 483
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 484
    const/16 v17, -0x1

    .line 485
    const/16 v18, -0x2

    .line 483
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v12, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 487
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 488
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    .line 489
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 491
    const/high16 v17, 0x42d20000    # 105.0f

    iget v0, v9, Landroid/util/DisplayMetrics;->ydpi:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x43200000    # 160.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v13, v0

    .line 492
    .local v13, "pix":I
    const/high16 v17, 0x41200000    # 10.0f

    iget v0, v9, Landroid/util/DisplayMetrics;->xdpi:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    const/high16 v18, 0x43200000    # 160.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 494
    .local v7, "left":I
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 495
    iput v13, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 496
    const/16 v17, 0x33

    move/from16 v0, v17

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 503
    const v19, 0x106000d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    .line 502
    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->setBackgroundColor(I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 506
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_effectsvolume:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 505
    check-cast v4, Landroid/widget/SeekBar;

    .line 507
    .local v4, "effectsVolume":Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->seekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 508
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getSoundVolume()F

    move-result v17

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 509
    .local v8, "mVol":Ljava/lang/Float;
    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 512
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_musicvolume:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 511
    check-cast v11, Landroid/widget/SeekBar;

    .line 513
    .local v11, "musicVolume":Landroid/widget/SeekBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->seekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 514
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->getMusicVolume()F

    move-result v17

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 515
    invoke-virtual {v8}, Ljava/lang/Float;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 518
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_tammeralerts:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 517
    check-cast v14, Landroid/widget/ToggleButton;

    .line 519
    .local v14, "tammerAlerts":Landroid/widget/ToggleButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 520
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isTammerAlerts()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 523
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_islandalerts:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 522
    check-cast v6, Landroid/widget/ToggleButton;

    .line 524
    .local v6, "islandAlerts":Landroid/widget/ToggleButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 525
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isIslandAlerts()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 528
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_dailyprizesalert:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 527
    check-cast v3, Landroid/widget/ToggleButton;

    .line 529
    .local v3, "daulyPrizesAlert":Landroid/widget/ToggleButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 531
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isDailyPrizesAlerts()Z

    move-result v17

    .line 530
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 534
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_mogarestedalert:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 533
    check-cast v10, Landroid/widget/ToggleButton;

    .line 535
    .local v10, "mogaRestedAlert":Landroid/widget/ToggleButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 536
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/settings/SettingsManager;->isMogaRestedAlerts()Z

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 539
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_udid:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 538
    check-cast v15, Landroid/widget/TextView;

    .line 540
    .local v15, "udid":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->val$UdId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v17

    .line 543
    sget v18, Lcom/gaiaonline/monstergalaxy/R$id;->settings_version:I

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 542
    check-cast v16, Landroid/widget/TextView;

    .line 545
    .local v16, "versionLabel":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v2, "buildNumber":Ljava/lang/StringBuilder;
    const-string v17, "v "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$13(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const-string v17, " ("

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$14(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    const-string v17, ")"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const-string v17, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v17, "Build # "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-wide/32 v17, 0x90e1

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;->this$0:Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 563
    return-void
.end method
