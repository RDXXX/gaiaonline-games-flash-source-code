.class public Lcom/ansca/corona/purchasing/StoreServices;
.super Ljava/lang/Object;
.source "StoreServices.java"


# static fields
.field public static final AMAZON_MARKETPLACE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.venezia"

.field public static final GOOGLE_MARKETPLACE_APP_PACKAGE_NAME_1:Ljava/lang/String; = "com.android.vending"

.field public static final GOOGLE_MARKETPLACE_APP_PACKAGE_NAME_2:Ljava/lang/String; = "com.google.android.feedback"

.field public static final SAMSUNG_MARKETPLACE_APP_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.samsungapps"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static getAvailableAppStoreNames()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 130
    .local v1, "availableStores":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "lowerCaseManufacturerName":Ljava/lang/String;
    const-string v4, "com.android.vending"

    invoke-static {v4}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.google.android.feedback"

    invoke-static {v4}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    :cond_0
    const-string v4, "google"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    const-string v4, "com.amazon.venezia"

    invoke-static {v4}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    const-string v4, "amazon"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    const-string v4, "com.sec.android.app.samsungapps"

    invoke-static {v4}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    const-string v4, "samsung"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_3
    const-string v4, "ro.nook.manufacturer"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "nookSystemPropertyValue":Ljava/lang/String;
    const-string v4, "barnes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "noble"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 149
    :cond_5
    const-string v4, "nook"

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_6
    const/4 v0, 0x0

    .line 154
    .local v0, "availableStoreNames":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 155
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "availableStoreNames":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 157
    .restart local v0    # "availableStoreNames":[Ljava/lang/String;
    :cond_7
    return-object v0
.end method

.method public static getAvailableInAppStoreNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "availableStoreNames":[Ljava/lang/String;
    const-string v1, "google"

    invoke-static {v1}, Lcom/ansca/corona/purchasing/StoreServices;->isInAppStoreAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 117
    const/4 v1, 0x0

    const-string v2, "google"

    aput-object v2, v0, v1

    .line 119
    :cond_0
    return-object v0
.end method

.method public static getDefaultInAppStoreName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    const-string v0, "google"

    .line 46
    .local v0, "storeName":Ljava/lang/String;
    invoke-static {v0}, Lcom/ansca/corona/purchasing/StoreServices;->isInAppStoreAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    .end local v0    # "storeName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "storeName":Ljava/lang/String;
    :cond_0
    const-string v0, "none"

    goto :goto_0
.end method

.method public static getStoreApplicationWasPurchasedFrom()Ljava/lang/String;
    .locals 5

    .prologue
    .line 206
    const-string v2, "none"

    .line 209
    .local v2, "storeName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "installerPackageName":Ljava/lang/String;
    invoke-static {v1}, Lcom/ansca/corona/purchasing/StoreName;->fromPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 215
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "installerPackageName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 213
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getTargetedAppStoreName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 176
    .local v3, "storeName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 178
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 180
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "targetedAppStore"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 190
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 191
    :cond_1
    const-string v3, "none"

    .line 195
    :cond_2
    return-object v3

    .line 187
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static isAppStoreAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "storeName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isNotValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    invoke-static {}, Lcom/ansca/corona/purchasing/StoreServices;->getAvailableAppStoreNames()[Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "availableStoreNames":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 99
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isInAppStoreAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "storeName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {p0}, Lcom/ansca/corona/purchasing/StoreName;->isNotValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    const-string v1, "google"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 70
    const-string v1, "com.android.vending"

    invoke-static {v1}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.feedback"

    invoke-static {v1}, Lcom/ansca/corona/purchasing/StoreServices;->isPackageNameInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_3
    const-string v1, "amazon"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static isPackageNameInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 226
    :cond_0
    const/4 v1, 0x0

    .line 239
    :goto_0
    return v1

    .line 230
    :cond_1
    const/4 v1, 0x0

    .line 232
    .local v1, "isInstalled":Z
    :try_start_0
    invoke-static {}, Lcom/ansca/corona/CoronaEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
