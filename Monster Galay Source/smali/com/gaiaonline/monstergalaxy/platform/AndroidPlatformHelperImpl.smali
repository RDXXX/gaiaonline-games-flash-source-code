.class public Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;
.super Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;
.source "AndroidPlatformHelperImpl.java"

# interfaces
.implements Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelper;


# static fields
.field private static resumeProgressDialog:Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;


# instance fields
.field private dbHelper:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

.field private dealListener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

.field private editTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private exportDirectory:Ljava/io/File;

.field private externalStoragePath:Ljava/lang/String;

.field private fontScaleFactor:F

.field private mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

.field private scrollview:Landroid/widget/ScrollView;

.field seekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private textView:Landroid/widget/TextView;

.field toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private typeface:Landroid/graphics/Typeface;

.field private typefaceRegular:Landroid/graphics/Typeface;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 7
    .param p1, "mgActivity"    # Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;-><init>()V

    .line 75
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->fontScaleFactor:F

    .line 568
    new-instance v4, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$1;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$1;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->toggleListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 584
    new-instance v4, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;

    invoke-direct {v4, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$2;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->seekbarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 87
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 88
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    .line 89
    invoke-virtual {v4}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getDbHelper()Lcom/gaiaonline/monstergalaxy/storage/SQLiteHelper;

    move-result-object v4

    .line 88
    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    .line 91
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->editTexts:Ljava/util/Map;

    .line 92
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 93
    const-string v5, "fonts/VAGRunds.ttf"

    .line 92
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->typeface:Landroid/graphics/Typeface;

    .line 94
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 95
    const-string v5, "fonts/VAGRundsRegular.ttf"

    .line 94
    invoke-static {v4, v5}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->typefaceRegular:Landroid/graphics/Typeface;

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 100
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 102
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionCode:I

    .line 103
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 111
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 114
    .local v0, "density":I
    const/16 v4, 0xa0

    if-eq v0, v4, :cond_0

    .line 115
    const/16 v4, 0x78

    if-ne v0, v4, :cond_2

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 117
    invoke-virtual {p1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 118
    :cond_1
    const v4, 0x3fd9999a    # 1.7f

    iput v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->fontScaleFactor:F

    .line 122
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 123
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 122
    iput-object v4, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->externalStoragePath:Ljava/lang/String;

    .line 124
    return-void

    .line 105
    .end local v0    # "density":I
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t read app version"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static synthetic access$0(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    return-object v0
.end method

.method static synthetic access$1(Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;)V
    .locals 0

    .prologue
    .line 81
    sput-object p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->resumeProgressDialog:Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    return-void
.end method

.method static synthetic access$10(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->typefaceRegular:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$11(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->scrollview:Landroid/widget/ScrollView;

    return-void
.end method

.method static synthetic access$12(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->scrollview:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionCode:I

    return v0
.end method

.method static synthetic access$15(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2()Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->resumeProgressDialog:Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Z)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->switchKeyboardSync(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->requestFocusSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$6(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->fontScaleFactor:F

    return v0
.end method

.method static synthetic access$7(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->editTexts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$8(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->textView:Landroid/widget/TextView;

    return-void
.end method

.method private getTapPoints()V
    .locals 3

    .prologue
    .line 795
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    .line 796
    new-instance v1, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;

    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->dealListener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    invoke-direct {v1, v2}, Lcom/gaiaonline/monstergalaxy/reward/TapjoyNotifierImpl;-><init>(Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;)V

    .line 795
    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V

    .line 797
    return-void
.end method

.method private getW3iReward()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method private requestFocusSync(Ljava/lang/String;)V
    .locals 2
    .param p1, "textFieldName"    # Ljava/lang/String;

    .prologue
    .line 222
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->editTexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 223
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 224
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 225
    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 862
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 863
    return-void
.end method

.method private switchKeyboardSync(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .line 201
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 200
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 202
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method


# virtual methods
.method public addOptionsView(Ljava/lang/String;)V
    .locals 2
    .param p1, "UdId"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$14;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method

.method public addTextField(Ljava/lang/String;IIIIZZLjava/lang/Integer;Ljava/lang/String;ZZ)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "multiline"    # Z
    .param p7, "fullScreenKeyboard"    # Z
    .param p8, "maxChars"    # Ljava/lang/Integer;
    .param p9, "disallowedChars"    # Ljava/lang/String;
    .param p10, "capWords"    # Z
    .param p11, "requestFocus"    # Z

    .prologue
    .line 233
    iget-object v13, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;

    move-object v1, p0

    move/from16 v2, p6

    move/from16 v3, p10

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p7

    move/from16 v9, p2

    move/from16 v10, p3

    move-object v11, p1

    move/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$7;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;ZZLjava/lang/Integer;Ljava/lang/String;IIZIILjava/lang/String;Z)V

    invoke-virtual {v13, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    if-eqz p11, :cond_0

    .line 315
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$8;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$8;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    :cond_0
    return-void
.end method

.method public addTextView(IIILjava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->textView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 393
    iget-object v7, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;

    move-object v1, p0

    move-object v2, p5

    move v3, p3

    move v4, p2

    move v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$12;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Lcom/badlogic/gdx/graphics/Color;IIILjava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 446
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->textView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public buyProduct(Ljava/lang/String;)V
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 644
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v0, p1}, Lcom/nextive/android/billing/market/BillingService;->requestPurchase(Ljava/lang/String;)Z

    .line 645
    return-void
.end method

.method public composeEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;

    invoke-direct {v1, p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$18;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 859
    return-void
.end method

.method public composeSms(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$17;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$17;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 820
    return-void
.end method

.method public getAdsService()Lcom/gaiaonline/monstergalaxy/service/AdsService;
    .locals 1

    .prologue
    .line 867
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->getInstance()Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    move-result-object v0

    return-object v0
.end method

.method public getBootElapsedTimeMillis()J
    .locals 2

    .prologue
    .line 888
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDealListener()Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->dealListener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    return-object v0
.end method

.method public getDealRewards()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->getTapPoints()V

    .line 786
    invoke-direct {p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->getW3iReward()V

    .line 787
    return-void
.end method

.method public getExportDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 649
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->exportDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/io/File;

    .line 651
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "mgsnapshots"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 650
    iput-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->exportDirectory:Ljava/io/File;

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->exportDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->exportDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->exportDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->externalStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 676
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;
    .locals 3

    .prologue
    .line 881
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 882
    const-string v2, "com.gaiaonline.mge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 883
    .local v0, "isSk2":Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK2:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    goto :goto_0
.end method

.method public getStorageHelper()Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->dbHelper:Lcom/gaiaonline/monstergalaxy/storage/StorageHelper;

    return-object v0
.end method

.method public getTextfieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->editTexts:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 342
    .local v0, "editText":Landroid/widget/EditText;
    if-nez v0, :cond_0

    .line 343
    const-string v1, ""

    .line 345
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public hideNativeProgressDialog()V
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->resumeProgressDialog:Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$4;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$4;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    :cond_0
    return-void
.end method

.method public isAndroid()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public isPurchaseTransactionPending()Z
    .locals 1

    .prologue
    .line 893
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->BILLING_SERVICE:Lcom/nextive/android/billing/market/BillingService;

    invoke-virtual {v0}, Lcom/nextive/android/billing/market/BillingService;->isPurchaseTransactionPending()Z

    move-result v0

    return v0
.end method

.method public isSMSCapable()Z
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 873
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 875
    .local v0, "m":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openMarketProductPage()V
    .locals 4

    .prologue
    .line 684
    const/4 v1, 0x0

    .line 686
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->getSourceStore()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;->AMAZON:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$Store;

    if-ne v2, v3, :cond_1

    .line 687
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_0

    .line 688
    const-string v1, "amzn://apps/android?p=com.gaiaonline.monstergalaxy"

    .line 700
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 701
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v2, 0x40080000    # 2.125f

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v2, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->startActivity(Landroid/content/Intent;)V

    .line 708
    .end local v0    # "marketIntent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 690
    :cond_0
    const-string v1, "amzn://apps/android?p=com.gaiaonline.mge"

    goto :goto_0

    .line 693
    :cond_1
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getSkin()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    move-result-object v2

    sget-object v3, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;->SK1:Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper$MGSkin;

    if-ne v2, v3, :cond_2

    .line 694
    const-string v1, "market://details?id=com.gaiaonline.monstergalaxy"

    goto :goto_0

    .line 696
    :cond_2
    const-string v1, "market://details?id=com.gaiaonline.mge"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 705
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->nativeOnBackPressed()V

    .line 662
    return-void
.end method

.method public removeOptionsView()V
    .locals 2

    .prologue
    .line 630
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->scrollview:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 631
    new-instance v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$15;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$15;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    .line 638
    .local v0, "action":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->scrollview:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 640
    .end local v0    # "action":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public removeTextField(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$9;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$9;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public removeTextView()V
    .locals 2

    .prologue
    .line 370
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 372
    new-instance v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$11;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    .line 383
    .local v0, "action":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    invoke-virtual {v1, v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    .end local v0    # "action":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public requestFocus(Ljava/lang/String;)V
    .locals 2
    .param p1, "textFieldName"    # Ljava/lang/String;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$6;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public setDealListener(Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->dealListener:Lcom/gaiaonline/monstergalaxy/model/shop/DealListener;

    .line 713
    return-void
.end method

.method public setTextViewText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 450
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$13;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public setTextfieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$10;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    return-void
.end method

.method public share(Ljava/lang/String;)V
    .locals 4
    .param p1, "shareText"    # Ljava/lang/String;

    .prologue
    .line 901
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 902
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v2, "android.intent.extra.SUBJECT"

    const-string v3, "Monster Galaxy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    iget-object v2, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    const-string v3, "Share Monster Galaxy"

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MonsterGalaxy"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAdColonyVideo()V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$16;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$16;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public showNativeProgressDialog()V
    .locals 2

    .prologue
    .line 140
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->getInstance()Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gaiaonline/monstergalaxy/service/AndroidAdsService;->isShowingInterstitial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->resumeProgressDialog:Lcom/gaiaonline/monstergalaxy/platform/MogaProgressDialog;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$3;

    invoke-direct {v1, p0}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$3;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showTapJoyOffers()V
    .locals 1

    .prologue
    .line 791
    invoke-static {}, Lcom/tapjoy/TapjoyConnect;->getTapjoyConnectInstance()Lcom/tapjoy/TapjoyConnect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->showOffers()V

    .line 792
    return-void
.end method

.method public showW3iOfferWall()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public switchKeyboard(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;->mgActivity:Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    new-instance v1, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl$5;-><init>(Lcom/gaiaonline/monstergalaxy/platform/AndroidPlatformHelperImpl;Z)V

    invoke-virtual {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method
