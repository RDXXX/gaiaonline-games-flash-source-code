.class Lcom/fiksu/asotracking/RatingPrompter;
.super Ljava/lang/Object;
.source "RatingPrompter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fiksu/asotracking/RatingPrompter$PromptResult;,
        Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_DAYS_BEFORE_RATING_IN_MILLIS:I = 0x19bfcc00

.field private static final NUMBER_OF_LAUNCHES_BEFORE_RATING:I = 0x5

.field private static final PREFERENCES_ALREADY_RATED_KEY:Ljava/lang/String; = "Fiksu.alreadyRated"

.field private static final PREFERENCES_FIRST_LAUNCHED_KEY:Ljava/lang/String; = "Fiksu.firstLaunchedAt"

.field private static final PREFERENCES_NAME_KEY:Ljava/lang/String; = "Fiksu.ratingsDictionary"

.field private static final PREFERENCES_NUMBER_OF_LAUNCHES_KEY:Ljava/lang/String; = "Fiksu.numberOfLaunches"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAppName:Ljava/lang/String;

.field private final mNoRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

.field private final mPostponeRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

.field private final mRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v4, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    sget-object v5, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-direct {v4, p0, v5, p1}, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;-><init>(Lcom/fiksu/asotracking/RatingPrompter;Lcom/fiksu/asotracking/RatingPrompter$PromptResult;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter;->mRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    .line 42
    new-instance v4, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    sget-object v5, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-direct {v4, p0, v5, p1}, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;-><init>(Lcom/fiksu/asotracking/RatingPrompter;Lcom/fiksu/asotracking/RatingPrompter$PromptResult;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter;->mNoRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    .line 43
    new-instance v4, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    sget-object v5, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-direct {v4, p0, v5, p1}, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;-><init>(Lcom/fiksu/asotracking/RatingPrompter;Lcom/fiksu/asotracking/RatingPrompter$PromptResult;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter;->mPostponeRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    .line 44
    iput-object p1, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    .line 45
    iget-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 46
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 49
    .local v0, "appName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    :goto_0
    iput-object v0, p0, Lcom/fiksu/asotracking/RatingPrompter;->mAppName:Ljava/lang/String;

    .line 54
    return-void

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "pnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FiksuTracking"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not access package: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/fiksu/asotracking/RatingPrompter;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/fiksu/asotracking/RatingPrompter;->setUserRated()V

    return-void
.end method

.method private connectedToNetwork()Z
    .locals 4

    .prologue
    .line 101
    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 103
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private enoughTimeSinceFirstLaunch(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Z
    .locals 8
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 116
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 117
    .local v3, "now":Ljava/util/Date;
    const-string v4, "Fiksu.firstLaunchedAt"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface {p1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 118
    .local v1, "firstLaunchedAtMillis":J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    const-wide/32 v6, 0x19bfcc00

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const/4 v0, 0x1

    .line 120
    .local v0, "enoughTimeHasPassed":Z
    :goto_0
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    .line 121
    const-string v4, "Fiksu.firstLaunchedAt"

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-interface {p2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 124
    :cond_0
    return v0

    .line 118
    .end local v0    # "enoughTimeHasPassed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNumberOfLaunches(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I
    .locals 3
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 107
    const-string v1, "Fiksu.numberOfLaunches"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "numberOfLaunches":I
    add-int/lit8 v0, v0, 0x1

    .line 110
    const-string v1, "Fiksu.numberOfLaunches"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    return v0
.end method

.method private setUserRated()V
    .locals 5

    .prologue
    .line 66
    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    const-string v3, "Fiksu.ratingsDictionary"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Fiksu.alreadyRated"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method private shouldPrompt()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v5, p0, Lcom/fiksu/asotracking/RatingPrompter;->mAppName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v4

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/fiksu/asotracking/RatingPrompter;->connectedToNetwork()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    const-string v6, "Fiksu.ratingsDictionary"

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 138
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "Fiksu.alreadyRated"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 142
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-direct {p0, v3, v0}, Lcom/fiksu/asotracking/RatingPrompter;->getNumberOfLaunches(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)I

    move-result v2

    .line 146
    .local v2, "numberOfLaunches":I
    invoke-direct {p0, v3, v0}, Lcom/fiksu/asotracking/RatingPrompter;->enoughTimeSinceFirstLaunch(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)Z

    move-result v1

    .line 148
    .local v1, "enoughTimeHasPassed":Z
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    const/4 v5, 0x5

    if-lt v2, v5, :cond_0

    if-eqz v1, :cond_0

    .line 154
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public maybeShowPrompt()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/fiksu/asotracking/RatingPrompter;->shouldPrompt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, "ratingDialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Enjoying "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 164
    const-string v1, "If so, please rate it in the Android Marketplace.  It takes less than a minute and we appreciate your support!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Rate "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v1, "No thanks"

    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mNoRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    const-string v1, "Remind me later"

    iget-object v2, p0, Lcom/fiksu/asotracking/RatingPrompter;->mPostponeRatingButtonListener:Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
