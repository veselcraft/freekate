.class public Lcom/perm/kate/api/ExStrPair;
.super Lcom/perm/kate/api/StrPair;
.source "ExStrPair.java"


# instance fields
.field public sublist:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/perm/kate/api/StrPair;-><init>()V

    return-void
.end method

.method public static parseEx(Lorg/json/JSONObject;)Lcom/perm/kate/api/ExStrPair;
    .locals 3

    .line 13
    new-instance v0, Lcom/perm/kate/api/ExStrPair;

    invoke-direct {v0}, Lcom/perm/kate/api/ExStrPair;-><init>()V

    const-string v1, "id"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    :cond_0
    const-string v1, "name"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    :cond_1
    const-string v1, "subtypes_list"

    .line 18
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 21
    invoke-static {p0}, Lcom/perm/kate/api/StrPair;->parsePairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/ExStrPair;->sublist:Ljava/util/ArrayList;

    :cond_2
    return-object v0
.end method

.method public static parseExPairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 28
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 32
    invoke-static {v2}, Lcom/perm/kate/api/ExStrPair;->parseEx(Lorg/json/JSONObject;)Lcom/perm/kate/api/ExStrPair;

    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
