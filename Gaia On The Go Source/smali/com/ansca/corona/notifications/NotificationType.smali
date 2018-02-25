.class public Lcom/ansca/corona/notifications/NotificationType;
.super Ljava/lang/Object;
.source "NotificationType.java"


# static fields
.field public static final LOCAL:Lcom/ansca/corona/notifications/NotificationType;

.field public static final REMOTE:Lcom/ansca/corona/notifications/NotificationType;

.field public static final REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;


# instance fields
.field private fInvariantName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "local"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->LOCAL:Lcom/ansca/corona/notifications/NotificationType;

    .line 31
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "remote"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE:Lcom/ansca/corona/notifications/NotificationType;

    .line 34
    new-instance v0, Lcom/ansca/corona/notifications/NotificationType;

    const-string v1, "remoteRegistration"

    invoke-direct {v0, v1}, Lcom/ansca/corona/notifications/NotificationType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ansca/corona/notifications/NotificationType;->REMOTE_REGISTRATION:Lcom/ansca/corona/notifications/NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "invariantName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static fromInvariantString(Ljava/lang/String;)Lcom/ansca/corona/notifications/NotificationType;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 55
    :try_start_0
    const-class v6, Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 56
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/ansca/corona/notifications/NotificationType;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 57
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ansca/corona/notifications/NotificationType;

    .line 58
    .local v4, "notificationType":Lcom/ansca/corona/notifications/NotificationType;
    iget-object v6, v4, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 67
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "notificationType":Lcom/ansca/corona/notifications/NotificationType;
    :goto_1
    return-object v4

    .line 55
    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catch_0
    move-exception v6

    :cond_1
    move-object v4, v5

    .line 67
    goto :goto_1
.end method


# virtual methods
.method public toInvariantString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ansca/corona/notifications/NotificationType;->fInvariantName:Ljava/lang/String;

    return-object v0
.end method
