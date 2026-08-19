.class public Lcom/perm/kate/api/PeriodStats;
.super Ljava/lang/Object;
.source "PeriodStats.java"


# instance fields
.field public age:Ljava/util/ArrayList;

.field public day:J

.field public sex:Ljava/util/ArrayList;

.field public views:I

.field public visitors:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PeriodStats;
    .locals 6

    .line 24
    new-instance v0, Lcom/perm/kate/api/PeriodStats;

    invoke-direct {v0}, Lcom/perm/kate/api/PeriodStats;-><init>()V

    const-string v1, "period_from"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/PeriodStats;->day:J

    const-string v1, "visitors"

    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v2, "views"

    .line 27
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/PeriodStats;->views:I

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/PeriodStats;->visitors:I

    const-string v1, "sex"

    .line 33
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 37
    iget-object v4, v0, Lcom/perm/kate/api/PeriodStats;->sex:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/perm/kate/api/StatsValue;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StatsValue;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "age"

    .line 40
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    .line 43
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 44
    iget-object v1, v0, Lcom/perm/kate/api/PeriodStats;->age:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/perm/kate/api/StatsValue;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StatsValue;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static parsePeriods(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 75
    invoke-static {v2}, Lcom/perm/kate/api/PeriodStats;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PeriodStats;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
