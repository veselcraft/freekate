.class public Lcom/perm/kate/api/InterestingPages;
.super Ljava/lang/Object;
.source "InterestingPages.java"


# instance fields
.field public groups:Ljava/util/ArrayList;

.field public users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/InterestingPages;
    .locals 12

    .line 13
    new-instance v0, Lcom/perm/kate/api/InterestingPages;

    invoke-direct {v0}, Lcom/perm/kate/api/InterestingPages;-><init>()V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    const-string v1, "users"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "items"

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 22
    invoke-virtual {v1, v7, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 23
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v11, v9, v4

    if-eqz v11, :cond_0

    .line 24
    iget-object v9, v0, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "groups"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 28
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 30
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_1
    if-ge v3, v1, :cond_3

    .line 32
    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    .line 34
    iget-object v6, v0, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
