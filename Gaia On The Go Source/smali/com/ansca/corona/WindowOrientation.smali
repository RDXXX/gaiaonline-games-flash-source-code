.class public final Lcom/ansca/corona/WindowOrientation;
.super Ljava/lang/Object;
.source "WindowOrientation.java"


# static fields
.field public static final LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

.field public static final LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

.field public static final PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

.field public static final PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

.field public static final UNKNOWN:Lcom/ansca/corona/WindowOrientation;


# instance fields
.field private fCoronaIntegerId:I

.field private fCoronaStringId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x0

    const-string v2, "unknown"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->UNKNOWN:Lcom/ansca/corona/WindowOrientation;

    .line 41
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x1

    const-string v2, "portrait"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 44
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x2

    const-string v2, "landscapeRight"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 47
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x3

    const-string v2, "portraitUpsideDown"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    .line 50
    new-instance v0, Lcom/ansca/corona/WindowOrientation;

    const/4 v1, 0x4

    const-string v2, "landscapeLeft"

    invoke-direct {v0, v1, v2}, Lcom/ansca/corona/WindowOrientation;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "coronaIntegerId"    # I
    .param p2, "coronaStringId"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p2, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 32
    :cond_0
    iput p1, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaIntegerId:I

    .line 33
    iput-object p2, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static fromCurrentWindowUsing(Landroid/content/Context;)Lcom/ansca/corona/WindowOrientation;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 150
    :cond_0
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 152
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 163
    const/4 v0, 0x0

    .line 168
    .local v0, "displayAngle":I
    :goto_0
    invoke-static {p0, v0}, Lcom/ansca/corona/WindowOrientation;->fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;

    move-result-object v2

    return-object v2

    .line 154
    .end local v0    # "displayAngle":I
    :pswitch_0
    const/16 v0, 0xb4

    .line 155
    .restart local v0    # "displayAngle":I
    goto :goto_0

    .line 157
    .end local v0    # "displayAngle":I
    :pswitch_1
    const/16 v0, 0x10e

    .line 158
    .restart local v0    # "displayAngle":I
    goto :goto_0

    .line 160
    .end local v0    # "displayAngle":I
    :pswitch_2
    const/16 v0, 0x5a

    .line 161
    .restart local v0    # "displayAngle":I
    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static fromDegrees(Landroid/content/Context;I)Lcom/ansca/corona/WindowOrientation;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "degrees"    # I

    .prologue
    const/16 v9, 0xe1

    const/16 v8, 0x87

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 183
    if-nez p0, :cond_0

    .line 184
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 190
    :cond_0
    const/4 v1, 0x1

    .line 191
    .local v1, "isNaturalOrientationPortrait":Z
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 193
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 194
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 206
    :goto_0
    if-nez v1, :cond_1

    .line 207
    add-int/lit8 v4, p1, 0x5a

    rem-int/lit16 p1, v4, 0x168

    .line 212
    :cond_1
    const/16 v4, 0x2d

    if-lt p1, v4, :cond_4

    if-ge p1, v8, :cond_4

    .line 213
    sget-object v2, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    .line 224
    .local v2, "orientation":Lcom/ansca/corona/WindowOrientation;
    :goto_1
    return-object v2

    .line 197
    .end local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    move v1, v4

    .line 198
    :goto_2
    goto :goto_0

    :cond_2
    move v1, v5

    .line 197
    goto :goto_2

    .line 201
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_3

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_3

    .line 215
    :cond_4
    if-lt p1, v8, :cond_5

    if-ge p1, v9, :cond_5

    .line 216
    sget-object v2, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    .restart local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    goto :goto_1

    .line 218
    .end local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    :cond_5
    if-lt p1, v9, :cond_6

    const/16 v4, 0x13b

    if-ge p1, v4, :cond_6

    .line 219
    sget-object v2, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    .restart local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    goto :goto_1

    .line 222
    .end local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    :cond_6
    sget-object v2, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    .restart local v2    # "orientation":Lcom/ansca/corona/WindowOrientation;
    goto :goto_1

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isLandscape()Z
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_RIGHT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ansca/corona/WindowOrientation;->LANDSCAPE_LEFT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPRIGHT:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ansca/corona/WindowOrientation;->PORTRAIT_UPSIDE_DOWN:Lcom/ansca/corona/WindowOrientation;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

.method public isSupportedBy(Landroid/app/Activity;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    :pswitch_0
    const/4 v0, 0x0

    .line 109
    .local v0, "isSupported":Z
    :goto_0
    return v0

    .line 93
    .end local v0    # "isSupported":Z
    :pswitch_1
    const/4 v0, 0x1

    .line 94
    .restart local v0    # "isSupported":Z
    goto :goto_0

    .line 98
    .end local v0    # "isSupported":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/ansca/corona/WindowOrientation;->isPortrait()Z

    move-result v0

    .line 99
    .restart local v0    # "isSupported":Z
    goto :goto_0

    .line 103
    .end local v0    # "isSupported":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/ansca/corona/WindowOrientation;->isLandscape()Z

    move-result v0

    .line 104
    .restart local v0    # "isSupported":Z
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public toCoronaIntegerId()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaIntegerId:I

    return v0
.end method

.method public toCoronaStringId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ansca/corona/WindowOrientation;->fCoronaStringId:Ljava/lang/String;

    return-object v0
.end method
