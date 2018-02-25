.class synthetic Lcom/kontagent/Stateful$1;
.super Ljava/lang/Object;
.source "Stateful.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kontagent/Stateful;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$kontagent$Stateful$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/kontagent/Stateful$State;->values()[Lcom/kontagent/Stateful$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    :try_start_0
    sget-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    sget-object v1, Lcom/kontagent/Stateful$State;->RUNNING:Lcom/kontagent/Stateful$State;

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    sget-object v1, Lcom/kontagent/Stateful$State;->PAUSED:Lcom/kontagent/Stateful$State;

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/kontagent/Stateful$1;->$SwitchMap$com$kontagent$Stateful$State:[I

    sget-object v1, Lcom/kontagent/Stateful$State;->STOPPED:Lcom/kontagent/Stateful$State;

    invoke-virtual {v1}, Lcom/kontagent/Stateful$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
