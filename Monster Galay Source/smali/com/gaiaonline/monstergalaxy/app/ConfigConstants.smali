.class public Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;
.super Ljava/lang/Object;
.source "ConfigConstants.java"


# static fields
.field public static final ASSETS_DOWNLOAD_URL:Ljava/lang/String;

.field public static final WEBSERVICE_INSTALL_URL:Ljava/lang/String;

.field public static final WEBSERVICE_PURCHASE:Ljava/lang/String;

.field public static final WEBSERVICE_REIMBURSEMENT_PHASE1:Ljava/lang/String;

.field public static final WEBSERVICE_REIMBURSEMENT_PHASE2:Ljava/lang/String;

.field public static final WEBSERVICE_REIMBURSEMENT_PHASE3:Ljava/lang/String;

.field public static final WEBSERVICE_SESSION:Ljava/lang/String;

.field public static final WEBSERVICE_TIME_URL:Ljava/lang/String;

.field public static final WEBSERVICE_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 22
    .local v1, "props":Ljava/util/Properties;
    :try_start_0
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "config.properties"

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    const-string v2, "assets_download_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->ASSETS_DOWNLOAD_URL:Ljava/lang/String;

    .line 27
    const-string v2, "time_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_TIME_URL:Ljava/lang/String;

    .line 28
    const-string v2, "install_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_INSTALL_URL:Ljava/lang/String;

    .line 29
    const-string v2, "reimbursement_p1"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE1:Ljava/lang/String;

    .line 30
    const-string v2, "reimbursement_p2"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE2:Ljava/lang/String;

    .line 31
    const-string v2, "reimbursement_p3"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_REIMBURSEMENT_PHASE3:Ljava/lang/String;

    .line 32
    const-string v2, "purchase_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_PURCHASE:Ljava/lang/String;

    .line 33
    const-string v2, "session_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_SESSION:Ljava/lang/String;

    .line 34
    const-string v2, "version_url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gaiaonline/monstergalaxy/app/ConfigConstants;->WEBSERVICE_VERSION:Ljava/lang/String;

    .line 8
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
