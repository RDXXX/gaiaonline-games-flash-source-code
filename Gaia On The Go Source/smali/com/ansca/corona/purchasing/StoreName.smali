.class public Lcom/ansca/corona/purchasing/StoreName;
.super Ljava/lang/Object;
.source "StoreName.java"


# static fields
.field public static final AMAZON:Ljava/lang/String; = "amazon"

.field public static final GOOGLE:Ljava/lang/String; = "google"

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final NOOK:Ljava/lang/String; = "nook"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static fromPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 77
    :cond_0
    const-string v0, "none"

    .line 92
    .local v0, "storeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 79
    .end local v0    # "storeName":Ljava/lang/String;
    :cond_1
    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.feedback"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    :cond_2
    const-string v0, "google"

    .restart local v0    # "storeName":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "storeName":Ljava/lang/String;
    :cond_3
    const-string v1, "com.amazon.venezia"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    const-string v0, "amazon"

    .restart local v0    # "storeName":Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0    # "storeName":Ljava/lang/String;
    :cond_4
    const-string v1, "com.sec.android.app.samsungapps"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    const-string v0, "samsung"

    .restart local v0    # "storeName":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v0    # "storeName":Ljava/lang/String;
    :cond_5
    const-string v0, "unknown"

    .restart local v0    # "storeName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isNotValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "storeName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1
    .param p0, "storeName"    # Ljava/lang/String;

    .prologue
    .line 44
    if-eqz p0, :cond_1

    .line 45
    const-string v0, "google"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "amazon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "nook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "samsung"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
