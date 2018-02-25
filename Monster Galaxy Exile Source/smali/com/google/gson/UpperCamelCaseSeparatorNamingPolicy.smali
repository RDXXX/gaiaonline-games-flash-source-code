.class final Lcom/google/gson/UpperCamelCaseSeparatorNamingPolicy;
.super Lcom/google/gson/CompositionFieldNamingPolicy;
.source "UpperCamelCaseSeparatorNamingPolicy.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "separatorString"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/gson/RecursiveFieldNamingPolicy;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/gson/CamelCaseSeparatorNamingPolicy;

    invoke-direct {v2, p1}, Lcom/google/gson/CamelCaseSeparatorNamingPolicy;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/gson/ModifyFirstLetterNamingPolicy;

    sget-object v3, Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;->UPPER:Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;

    invoke-direct {v2, v3}, Lcom/google/gson/ModifyFirstLetterNamingPolicy;-><init>(Lcom/google/gson/ModifyFirstLetterNamingPolicy$LetterModifier;)V

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/gson/CompositionFieldNamingPolicy;-><init>([Lcom/google/gson/RecursiveFieldNamingPolicy;)V

    .line 44
    return-void
.end method
