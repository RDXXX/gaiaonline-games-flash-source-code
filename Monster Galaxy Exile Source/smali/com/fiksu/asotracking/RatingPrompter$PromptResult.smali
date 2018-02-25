.class final enum Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
.super Ljava/lang/Enum;
.source "RatingPrompter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fiksu/asotracking/RatingPrompter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PromptResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fiksu/asotracking/RatingPrompter$PromptResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field public static final enum USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field public static final enum USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

.field public static final enum USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 57
    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_RATED"

    invoke-direct {v0, v1, v4, v2}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    .line 58
    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_DID_NOT_RATE"

    invoke-direct {v0, v1, v2, v3}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    .line 59
    new-instance v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    const-string v1, "USER_POSTPONED_RATING"

    invoke-direct {v0, v1, v3, v5}, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    .line 56
    new-array v0, v5, [Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_RATED:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_DID_NOT_RATE:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->USER_POSTPONED_RATING:Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ENUM$VALUES:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    return-object v0
.end method

.method public static values()[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/fiksu/asotracking/RatingPrompter$PromptResult;->ENUM$VALUES:[Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    array-length v1, v0

    new-array v2, v1, [Lcom/fiksu/asotracking/RatingPrompter$PromptResult;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
