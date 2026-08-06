.class public Lcom/perm/kate/api/ExStrPair;
.super Lcom/perm/kate/api/StrPair;
.source "ExStrPair.java"


# instance fields
.field public sublist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/StrPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/perm/kate/api/StrPair;-><init>()V

    return-void
.end method

.method public static parseEx(Lorg/json/JSONObject;)Lcom/perm/kate/api/ExStrPair;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v1, Lcom/perm/kate/api/ExStrPair;

    invoke-direct {v1}, Lcom/perm/kate/api/ExStrPair;-><init>()V

    .line 14
    .local v1, "pair":Lcom/perm/kate/api/ExStrPair;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/ExStrPair;->id:Ljava/lang/String;

    .line 16
    :cond_0
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/ExStrPair;->name:Ljava/lang/String;

    .line 18
    :cond_1
    const-string v2, "subtypes_list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    const-string v2, "subtypes_list"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, "jsubtypes_list":Lorg/json/JSONArray;
    if-eqz v0, :cond_2

    .line 21
    invoke-static {v0}, Lcom/perm/kate/api/ExStrPair;->parsePairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/ExStrPair;->sublist:Ljava/util/ArrayList;

    .line 23
    .end local v0    # "jsubtypes_list":Lorg/json/JSONArray;
    :cond_2
    return-object v1
.end method

.method public static parseExPairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "jpairs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/ExStrPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v3, "pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/ExStrPair;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 28
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 32
    .local v1, "jpair":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/ExStrPair;->parseEx(Lorg/json/JSONObject;)Lcom/perm/kate/api/ExStrPair;

    move-result-object v2

    .line 33
    .local v2, "pair":Lcom/perm/kate/api/ExStrPair;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    .end local v1    # "jpair":Lorg/json/JSONObject;
    .end local v2    # "pair":Lcom/perm/kate/api/ExStrPair;
    :cond_1
    return-object v3
.end method
