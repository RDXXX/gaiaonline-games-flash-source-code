.class Lcom/kontagent/KontagentPrefs;
.super Ljava/lang/Object;
.source "KontagentPrefs.java"


# static fields
.field private static final FIRST_RUN_KEY:Ljava/lang/String; = "firstRun"

.field private static final PREFS_NAME:Ljava/lang/String; = "kontagent"

.field private static final REFERRER_SUBTYPE1_KEY:Ljava/lang/String; = "referrer_st1"

.field private static final REFERRER_SUBTYPE2_KEY:Ljava/lang/String; = "referrer_st2"

.field private static final REFERRER_SUBTYPE3_KEY:Ljava/lang/String; = "referrer_st3"

.field private static final REFERRER_TYPE_KEY:Ljava/lang/String; = "referrer_type"

.field private static final SENDER_ID_KEY:Ljava/lang/String; = "senderId"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/kontagent/KontagentPrefs;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kontagent/KontagentPrefs;->mContext:Landroid/content/Context;

    const-string v1, "kontagent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getReferrerEventSubtype1()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "referrer_st1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReferrerEventSubtype2()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "referrer_st2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReferrerEventSubtype3()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "referrer_st3"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReferrerEventType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "referrer_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSenderId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "senderId"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isFirstRun()Z
    .locals 3

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "firstRun"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public resetPrefs()V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public setFirstRun(Z)V
    .locals 3
    .param p1, "firstRun"    # Z

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 38
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "firstRun"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 41
    return-void
.end method

.method public setReferrerEventSubtype1(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "referrer_st1"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    return-void
.end method

.method public setReferrerEventSubtype2(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "referrer_st2"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public setReferrerEventSubtype3(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "referrer_st3"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    return-void
.end method

.method public setReferrerEventType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "referrer_type"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    return-void
.end method

.method public setSenderId(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/kontagent/KontagentPrefs;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "senderId"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    return-void
.end method
