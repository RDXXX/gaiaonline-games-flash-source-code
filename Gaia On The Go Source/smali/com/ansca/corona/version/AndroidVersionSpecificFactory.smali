.class public Lcom/ansca/corona/version/AndroidVersionSpecificFactory;
.super Ljava/lang/Object;
.source "AndroidVersionSpecificFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ansca/corona/version/IAndroidVersionSpecific;
    .locals 9

    .prologue
    .line 41
    invoke-static {}, Lcom/ansca/corona/version/AndroidVersionSpecificFactory;->getAndroidVersion()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "version":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.ansca.corona.version.android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".AndroidVersionSpecific"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "className":Ljava/lang/String;
    const/4 v5, 0x0

    .line 45
    .local v5, "result":Lcom/ansca/corona/version/IAndroidVersionSpecific;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "c":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 49
    .local v3, "created":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Lcom/ansca/corona/version/IAndroidVersionSpecific;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 66
    .end local v1    # "c":Ljava/lang/Class;
    .end local v3    # "created":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 50
    :catch_0
    move-exception v4

    .line 52
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v4}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v4}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getAndroidVersion()Ljava/lang/String;
    .locals 7

    .prologue
    .line 9
    const-string v2, "com.ansca.corona.version.AndroidVersion"

    .line 10
    .local v2, "className":Ljava/lang/String;
    const-string v5, ""

    .line 12
    .local v5, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 13
    .local v1, "c":Ljava/lang/Class;
    const-string v6, "apiVersion"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 14
    .local v4, "f":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    .line 31
    .end local v1    # "c":Ljava/lang/Class;
    .end local v4    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v5

    .line 15
    :catch_0
    move-exception v3

    .line 17
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 18
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 20
    .local v3, "e":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 21
    .end local v3    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v3

    .line 23
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 24
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_3
    move-exception v3

    .line 26
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 27
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 29
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
