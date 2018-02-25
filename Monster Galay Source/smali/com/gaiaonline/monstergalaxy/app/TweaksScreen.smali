.class public Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;
.super Ljava/lang/Object;
.source "TweaksScreen.java"


# static fields
.field private static DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field public static final DIALOG_AUTPLAY_ISLAND:I = 0x1

.field public static final DIALOG_SNAPSHOTS:I = 0x2

.field private static showing:Z

.field private static tweaksView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 129
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->save()V

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 216
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->saveSnapshot()V

    return-void
.end method

.method static synthetic access$2()V
    .locals 0

    .prologue
    .line 115
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->optionsChanged()V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 211
    invoke-static {p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$5(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 27
    sput-object p0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    return-void
.end method

.method public static autoPlay(I)V
    .locals 1
    .param p0, "islandIndex"    # I

    .prologue
    .line 108
    new-instance v0, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/tweak/AutoPlayerScreen;-><init>(I)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/Screen;)V

    .line 109
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 110
    return-void
.end method

.method private static getBoolFieldValue(I)Z
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 168
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method private static getIntFieldValue(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 173
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSnapshots()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 178
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "snapshotNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getExportDirectory()Ljava/io/File;

    move-result-object v3

    .line 180
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 181
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 182
    const/4 v3, 0x0

    .line 189
    :goto_0
    return-object v3

    .line 184
    :cond_0
    array-length v5, v1

    move v3, v4

    :goto_1
    if-lt v3, v5, :cond_1

    .line 189
    new-array v3, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_1
    aget-object v0, v1, v3

    .line 185
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 236
    const/4 v1, 0x0

    sput-boolean v1, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showing:Z

    .line 237
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$9;

    invoke-direct {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$9;-><init>()V

    .line 245
    .local v0, "action":Ljava/lang/Runnable;
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public static isShowing()Z
    .locals 1

    .prologue
    .line 256
    sget-boolean v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showing:Z

    return v0
.end method

.method private static optionsChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 118
    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_enable:I

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getBoolFieldValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 119
    .local v0, "visibility":I
    :goto_0
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v3, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_otheroptions:I

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    sget v1, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_customrivalstartingenergy:I

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getBoolFieldValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 123
    :goto_1
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v2, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_rivalstartingenergy:I

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 124
    return-void

    .line 118
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 122
    .restart local v0    # "visibility":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private static populateField(II)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "value"    # I

    .prologue
    .line 158
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method private static populateField(IZ)V
    .locals 1
    .param p0, "id"    # I
    .param p1, "value"    # Z

    .prologue
    .line 163
    sget-object v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 164
    return-void
.end method

.method private static populateFields()V
    .locals 2

    .prologue
    .line 148
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_enable:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(IZ)V

    .line 149
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_bluecoffees:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getBlueCoffees()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(II)V

    .line 150
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_mogacash:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getMogaCash()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(II)V

    .line 151
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_starseeds:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getStarSeeds()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(II)V

    .line 152
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_rivalstartingenergy:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->getCustomCpuStartingEnergy()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(II)V

    .line 153
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_customrivalstartingenergy:I

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isCustomCpuStartingEnergyEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateField(IZ)V

    .line 154
    return-void
.end method

.method private static save()V
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_enable:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getBoolFieldValue(I)Z

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setEnabled(Z)V

    .line 132
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_bluecoffees:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getIntFieldValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setBlueCoffees(I)V

    .line 135
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_mogacash:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getIntFieldValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setMogaCash(I)V

    .line 136
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_starseeds:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getIntFieldValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setStarSeeds(I)V

    .line 138
    :cond_0
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_customrivalstartingenergy:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getBoolFieldValue(I)Z

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setCustomCpuStartingEnergyEnabled(Z)V

    .line 139
    sget v0, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_rivalstartingenergy:I

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->getIntFieldValue(I)I

    move-result v0

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/tweak/Tweak;->setCustomCpuStartingEnergy(I)V

    .line 140
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 141
    return-void
.end method

.method private static saveSnapshot()V
    .locals 5

    .prologue
    .line 218
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/Game;->getPlatformHelper()Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/gaiaonline/monstergalaxy/platform/PlatformHelper;->getExportDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "snap-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    sget-object v3, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->save(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saved as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showMessage(Ljava/lang/String;)V

    .line 224
    sget-object v1, Lcom/gaiaonline/monstergalaxy/app/ScreenCode;->ISLAND:Lcom/gaiaonline/monstergalaxy/app/ScreenCode;

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxy;->showScreen(Lcom/gaiaonline/monstergalaxy/app/ScreenCode;)V

    .line 225
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->hide()V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t save "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static show(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V
    .locals 10
    .param p0, "activity"    # Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;

    .prologue
    .line 37
    const/4 v8, 0x1

    sput-boolean v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->showing:Z

    .line 39
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 38
    check-cast v3, Landroid/view/LayoutInflater;

    .line 41
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcom/gaiaonline/monstergalaxy/R$layout;->tweaks:I

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    sput-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    .line 43
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_save:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 44
    .local v5, "saveButton":Landroid/widget/Button;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$1;

    invoke-direct {v8}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$1;-><init>()V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_cancel:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 52
    .local v1, "cancelButton":Landroid/widget/Button;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$2;

    invoke-direct {v8}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$2;-><init>()V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_autoplay:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, "autoplayButton":Landroid/widget/Button;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$3;

    invoke-direct {v8, p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$3;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_savesnap:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 68
    .local v6, "saveSnapButton":Landroid/widget/Button;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$4;

    invoke-direct {v8, p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$4;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_loadsnap:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 77
    .local v4, "loadSnapButton":Landroid/widget/Button;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$5;

    invoke-direct {v8, p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$5;-><init>(Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_enable:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    .line 85
    .local v7, "tweaksEnabled":Landroid/widget/ToggleButton;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$6;

    invoke-direct {v8}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$6;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    sget-object v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    sget v9, Lcom/gaiaonline/monstergalaxy/R$id;->tweaks_customrivalstartingenergy:I

    invoke-virtual {v8, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 93
    .local v2, "customRivalStartingEnergyEnabled":Landroid/widget/ToggleButton;
    new-instance v8, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$7;

    invoke-direct {v8}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$7;-><init>()V

    invoke-virtual {v2, v8}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyAndroid;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    sget-object v9, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->tweaksView:Landroid/widget/ScrollView;

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 102
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->populateFields()V

    .line 103
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen;->optionsChanged()V

    .line 104
    return-void
.end method

.method private static showMessage(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;->getInstance()Lcom/gaiaonline/monstergalaxy/app/MonsterGalaxyApp;

    move-result-object v0

    .line 213
    const/4 v1, 0x0

    .line 212
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 214
    return-void
.end method

.method public static snapshotPicked(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$8;

    invoke-direct {v0, p0}, Lcom/gaiaonline/monstergalaxy/app/TweaksScreen$8;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gaiaonline/monstergalaxy/app/Game;->runOnGameThread(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method
