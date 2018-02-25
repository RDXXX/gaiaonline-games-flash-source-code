.class public Lcom/sessionm/cpi/ODIN;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final CHAR_SET:Ljava/lang/String; = "iso-8859-1"

.field private static final SHA1_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final TAG:Ljava/lang/String; = "ODIN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 78
    const/16 v1, 0x28

    new-array v1, v1, [B

    .line 79
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 80
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 82
    invoke-static {v0}, Lcom/sessionm/cpi/ODIN;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    const-string v1, "ODIN"

    const-string v2, "Error generating generating SHA-1: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    array-length v6, p0

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_1

    aget-byte v7, p0, v4

    .line 62
    ushr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0xf

    move v2, v0

    move v0, v1

    .line 65
    :goto_1
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    :goto_2
    and-int/lit8 v3, v7, 0xf

    .line 69
    add-int/lit8 v2, v0, 0x1

    const/4 v8, 0x1

    if-lt v0, v8, :cond_2

    .line 61
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 67
    :cond_0
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method public static getODIN1(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 56
    :goto_0
    invoke-static {v0}, Lcom/sessionm/cpi/ODIN;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 50
    :catch_1
    move-exception v0

    .line 51
    const-string v1, "ODIN"

    const-string v2, "Error generating ODIN-1: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const/4 v0, 0x0

    goto :goto_1
.end method
