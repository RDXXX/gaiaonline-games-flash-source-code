.class public final enum Lcom/inmobi/androidsdk/EducationType;
.super Ljava/lang/Enum;
.source "EducationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/androidsdk/EducationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_BachelorsDegree:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_DoctoralDegree:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_HighSchool:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_InCollege:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_MastersDegree:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_None:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_Other:Lcom/inmobi/androidsdk/EducationType;

.field public static final enum Edu_SomeCollege:Lcom/inmobi/androidsdk/EducationType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_None"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_None:Lcom/inmobi/androidsdk/EducationType;

    .line 13
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_HighSchool"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_HighSchool:Lcom/inmobi/androidsdk/EducationType;

    .line 14
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_SomeCollege"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_SomeCollege:Lcom/inmobi/androidsdk/EducationType;

    .line 15
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_InCollege"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_InCollege:Lcom/inmobi/androidsdk/EducationType;

    .line 16
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_BachelorsDegree"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_BachelorsDegree:Lcom/inmobi/androidsdk/EducationType;

    .line 17
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_MastersDegree"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_MastersDegree:Lcom/inmobi/androidsdk/EducationType;

    .line 18
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_DoctoralDegree"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_DoctoralDegree:Lcom/inmobi/androidsdk/EducationType;

    .line 19
    new-instance v0, Lcom/inmobi/androidsdk/EducationType;

    const-string v1, "Edu_Other"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/EducationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->Edu_Other:Lcom/inmobi/androidsdk/EducationType;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/inmobi/androidsdk/EducationType;

    sget-object v1, Lcom/inmobi/androidsdk/EducationType;->Edu_None:Lcom/inmobi/androidsdk/EducationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/androidsdk/EducationType;->Edu_HighSchool:Lcom/inmobi/androidsdk/EducationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/androidsdk/EducationType;->Edu_SomeCollege:Lcom/inmobi/androidsdk/EducationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/androidsdk/EducationType;->Edu_InCollege:Lcom/inmobi/androidsdk/EducationType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/androidsdk/EducationType;->Edu_BachelorsDegree:Lcom/inmobi/androidsdk/EducationType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/androidsdk/EducationType;->Edu_MastersDegree:Lcom/inmobi/androidsdk/EducationType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/androidsdk/EducationType;->Edu_DoctoralDegree:Lcom/inmobi/androidsdk/EducationType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/androidsdk/EducationType;->Edu_Other:Lcom/inmobi/androidsdk/EducationType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/androidsdk/EducationType;->ENUM$VALUES:[Lcom/inmobi/androidsdk/EducationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/androidsdk/EducationType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/inmobi/androidsdk/EducationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/EducationType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/androidsdk/EducationType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inmobi/androidsdk/EducationType;->ENUM$VALUES:[Lcom/inmobi/androidsdk/EducationType;

    array-length v1, v0

    new-array v2, v1, [Lcom/inmobi/androidsdk/EducationType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
