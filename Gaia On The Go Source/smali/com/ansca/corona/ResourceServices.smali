.class public Lcom/ansca/corona/ResourceServices;
.super Ljava/lang/Object;
.source "ResourceServices.java"


# static fields
.field public static final INVALID_RESOURCE_ID:I

.field private static sPackageName:Ljava/lang/String;

.field private static sRClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    sput-object v0, Lcom/ansca/corona/ResourceServices;->sPackageName:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getDrawableResourceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "drawable"

    invoke-static {p0, v0}, Lcom/ansca/corona/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutResourceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "layout"

    invoke-static {p0, v0}, Lcom/ansca/corona/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    sget-object v2, Lcom/ansca/corona/ResourceServices;->sPackageName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 40
    const-string v2, ""

    sput-object v2, Lcom/ansca/corona/ResourceServices;->sPackageName:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/ansca/corona/ResourceServices;->getRClass()Ljava/lang/Class;

    move-result-object v1

    .line 42
    .local v1, "rClass":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 44
    .local v0, "packageInfo":Ljava/lang/Package;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/ansca/corona/ResourceServices;->sPackageName:Ljava/lang/String;

    .line 51
    .end local v0    # "packageInfo":Ljava/lang/Package;
    :cond_0
    sget-object v2, Lcom/ansca/corona/ResourceServices;->sPackageName:Ljava/lang/String;

    return-object v2
.end method

.method public static getRClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    sget-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 71
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ansca/corona/ResourceServices;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".R"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_0
    :goto_1
    sget-object v0, Lcom/ansca/corona/ResourceServices;->sRClass:Ljava/lang/Class;

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    goto :goto_1

    .line 64
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static getRawResourceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 147
    const-string v0, "raw"

    invoke-static {p0, v0}, Lcom/ansca/corona/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "resourceName"    # Ljava/lang/String;
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    invoke-static {}, Lcom/ansca/corona/ResourceServices;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "resources":Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/ansca/corona/ResourceServices;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 88
    const/4 v1, 0x0

    .line 90
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    goto :goto_0
.end method

.method public static getStringResourceId(Ljava/lang/String;)I
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "string"

    invoke-static {p0, v0}, Lcom/ansca/corona/ResourceServices;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
