.class Lcom/millennialmedia/android/MMDemographic;
.super Ljava/lang/Object;
.source "MMDemographic.java"


# static fields
.field public static final EDUCATION_ASSOCIATE:Ljava/lang/String; = "associate"

.field public static final EDUCATION_BACHELORS:Ljava/lang/String; = "bachelors"

.field public static final EDUCATION_HIGH_SCHOOL:Ljava/lang/String; = "highschool"

.field public static final EDUCATION_IN_COLLEGE:Ljava/lang/String; = "incollege"

.field public static final EDUCATION_MASTERS:Ljava/lang/String; = "masters"

.field public static final EDUCATION_PHD:Ljava/lang/String; = "phd"

.field public static final EDUCATION_PROFESSIONAL:Ljava/lang/String; = "professional"

.field public static final EDUCATION_SOME_COLLEGE:Ljava/lang/String; = "somecollege"

.field public static final ETHNICITY_ASIAN:Ljava/lang/String; = "asian"

.field public static final ETHNICITY_BLACK:Ljava/lang/String; = "black"

.field public static final ETHNICITY_HISPANIC:Ljava/lang/String; = "hispanic"

.field public static final ETHNICITY_INDIAN:Ljava/lang/String; = "indian"

.field public static final ETHNICITY_MIDDLE_EASTERN:Ljava/lang/String; = "middleeastern"

.field public static final ETHNICITY_NATIVE_AMERICAN:Ljava/lang/String; = "nativeamerican"

.field public static final ETHNICITY_OTHER:Ljava/lang/String; = "other"

.field public static final ETHNICITY_PACIFIC_ISLANDER:Ljava/lang/String; = "pacificislander"

.field public static final ETHNICITY_WHITE:Ljava/lang/String; = "white"

.field public static final GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final GENDER_MALE:Ljava/lang/String; = "male"

.field public static final KEY_AGE:Ljava/lang/String; = "age"

.field public static final KEY_CHILDREN:Ljava/lang/String; = "children"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "height"

.field public static final KEY_INCOME:Ljava/lang/String; = "income"

.field public static final KEY_KEYWORDS:Ljava/lang/String; = "keywords"

.field public static final KEY_POLITICS:Ljava/lang/String; = "politics"

.field public static final KEY_VENDOR:Ljava/lang/String; = "vendor"

.field public static final KEY_WIDTH:Ljava/lang/String; = "width"

.field public static final KEY_ZIP:Ljava/lang/String; = "zip"

.field public static final MARITAL_DIVORCED:Ljava/lang/String; = "divorced"

.field public static final MARITAL_ENGAGED:Ljava/lang/String; = "engaged"

.field public static final MARITAL_MARRIED:Ljava/lang/String; = "married"

.field public static final MARITAL_RELATIONSHIP:Ljava/lang/String; = "relationship"

.field public static final MARITAL_SINGLE:Ljava/lang/String; = "single"

.field public static final ORIENTATION_BISEXUAL:Ljava/lang/String; = "bisexual"

.field public static final ORIENTATION_GAY:Ljava/lang/String; = "gay"

.field public static final ORIENTATION_STRAIGHT:Ljava/lang/String; = "straight"


# instance fields
.field public education:Ljava/lang/String;

.field public ethnicity:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public marital:Ljava/lang/String;

.field public orientation:Ljava/lang/String;

.field private values:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/MMDemographic;->values:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method getUrlParams(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->values:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 128
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 131
    const-string v2, "gender"

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v3, "single"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v3, "married"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v3, "divorced"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v3, "engaged"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v3, "relationship"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    :cond_2
    const-string v2, "marital"

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 139
    const-string v2, "ethnicity"

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_4
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 142
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v3, "straight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v3, "gay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v3, "bisexual"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 143
    :cond_5
    const-string v2, "orientation"

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_6
    iget-object v2, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 146
    const-string v2, "edu"

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_7
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string v0, "gender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iput-object p2, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    .line 81
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "ethnicity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iput-object p2, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    goto :goto_0

    .line 71
    :cond_1
    const-string v0, "marital"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    iput-object p2, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_2
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 74
    iput-object p2, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    goto :goto_0

    .line 75
    :cond_3
    const-string v0, "education"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iput-object p2, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    goto :goto_0

    .line 77
    :cond_4
    if-eqz p2, :cond_5

    .line 78
    iget-object v0, p0, Lcom/millennialmedia/android/MMDemographic;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/android/MMDemographic;->values:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method toQueryString()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    const-string v4, "male"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    const-string v4, "female"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&gender="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMDemographic;->gender:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 94
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "white"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "black"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "hispanic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "asian"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "indian"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "middleeastern"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "nativeamerican"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "pacificislander"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v4, "other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 97
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&ethnicity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMDemographic;->ethnicity:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_3
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 101
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v4, "single"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v4, "married"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v4, "divorced"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v4, "engaged"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    const-string v4, "relationship"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 103
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&marital="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMDemographic;->marital:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_5
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 107
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v4, "straight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v4, "gay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    const-string v4, "bisexual"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMDemographic;->orientation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_7
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 113
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "highschool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "incollege"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "somecollege"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "associate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "bachelors"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "masters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "phd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v4, "professional"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 116
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&edu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMDemographic;->education:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_9
    iget-object v3, p0, Lcom/millennialmedia/android/MMDemographic;->values:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "&%s=%s"

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v6, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
