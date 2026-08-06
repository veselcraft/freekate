.class public Lcom/perm/kate/api/InterestingPages;
.super Ljava/lang/Object;
.source "InterestingPages.java"


# instance fields
.field public groups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/InterestingPages;
    .locals 12
    .param p0, "response"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v10, -0x1

    .line 13
    new-instance v5, Lcom/perm/kate/api/InterestingPages;

    invoke-direct {v5}, Lcom/perm/kate/api/InterestingPages;-><init>()V

    .line 14
    .local v5, "ip":Lcom/perm/kate/api/InterestingPages;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    .line 17
    const-string v8, "users"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 18
    .local v7, "jusers":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 19
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 21
    .local v2, "category_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 22
    invoke-virtual {v0, v3, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 23
    .local v4, "id":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 24
    iget-object v8, v5, Lcom/perm/kate/api/InterestingPages;->users:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    .end local v2    # "category_count":I
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/Long;
    :cond_1
    const-string v8, "groups"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 28
    .local v6, "jgroups":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 29
    .local v1, "array2":Lorg/json/JSONArray;
    if-eqz v1, :cond_3

    .line 30
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 31
    .restart local v2    # "category_count":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 32
    invoke-virtual {v1, v3, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 33
    .restart local v4    # "id":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-eqz v8, :cond_2

    .line 34
    iget-object v8, v5, Lcom/perm/kate/api/InterestingPages;->groups:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    .end local v2    # "category_count":I
    .end local v3    # "i":I
    .end local v4    # "id":Ljava/lang/Long;
    :cond_3
    return-object v5
.end method
