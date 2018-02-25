.class Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;
.super Ljava/lang/Object;
.source "RatingPrompter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiksu/asotracking/RatingPrompter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RatingClickListener"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult:[I


# instance fields
.field private mPromptResult:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field final synthetic this$0:Lcom/fiksu/asotracking/RatingPrompter;


# direct methods
.method static synthetic $SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult()[I
    .locals 3

    .prologue
    .line 72
    sget-object v0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->$SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->values()[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-virtual {v1}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-virtual {v1}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-virtual {v1}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->$SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/fiksu/asotracking/RatingPrompter;Lcom/fiksu/asotracking/RatingPrompter$PromptResult;Landroid/app/Activity;)V
    .locals 0
    .param p2, "userRated"    # Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->mPromptResult:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x5

    .line 80
    invoke-static {}, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->$SWITCH_TABLE$com$fiksu$asotracking$RatingPrompter$PromptResult()[I

    move-result-object v0

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->mPromptResult:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-virtual {v1}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 97
    :goto_0
    return-void

    .line 82
    :pswitch_0
    new-instance v0, Lcom/fiksu/asotracking/RatingEventTracker;

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v1}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "rated"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/RatingEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RatingEventTracker;->uploadEvent()V

    .line 83
    const-string v0, "FiksuTracking"

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v1}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v0}, Lcom/fiksu/asotracking/RatingPrompter;->access$1(Lcom/fiksu/asotracking/RatingPrompter;)V

    .line 85
    iget-object v0, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v0}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "market://details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v4}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :pswitch_1
    new-instance v0, Lcom/fiksu/asotracking/RatingEventTracker;

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v1}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "did_not_rate"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/RatingEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RatingEventTracker;->uploadEvent()V

    .line 89
    iget-object v0, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v0}, Lcom/fiksu/asotracking/RatingPrompter;->access$1(Lcom/fiksu/asotracking/RatingPrompter;)V

    goto :goto_0

    .line 92
    :pswitch_2
    new-instance v0, Lcom/fiksu/asotracking/RatingEventTracker;

    iget-object v1, p0, Lcom/fiksu/asotracking/RatingPrompter$RatingClickListener;->this$0:Lcom/fiksu/asotracking/RatingPrompter;

    invoke-static {v1}, Lcom/fiksu/asotracking/RatingPrompter;->access$0(Lcom/fiksu/asotracking/RatingPrompter;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "deferred_rating"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/RatingEventTracker;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/fiksu/asotracking/RatingEventTracker;->uploadEvent()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
