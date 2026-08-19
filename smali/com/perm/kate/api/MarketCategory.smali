.class public Lcom/perm/kate/api/MarketCategory;
.super Ljava/lang/Object;
.source "MarketCategory.java"


# instance fields
.field public id:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketCategory;
    .locals 3

    .line 13
    new-instance v0, Lcom/perm/kate/api/MarketCategory;

    invoke-direct {v0}, Lcom/perm/kate/api/MarketCategory;-><init>()V

    const-string v1, "name"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/MarketCategory;->name:Ljava/lang/String;

    const-string v1, "id"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/MarketCategory;->id:J

    return-object v0
.end method

.method public static parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 26
    invoke-static {v3}, Lcom/perm/kate/api/MarketCategory;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/MarketCategory;

    move-result-object v3

    .line 27
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
