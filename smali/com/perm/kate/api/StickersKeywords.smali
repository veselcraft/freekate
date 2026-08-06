.class public Lcom/perm/kate/api/StickersKeywords;
.super Ljava/lang/Object;
.source "StickersKeywords.java"


# instance fields
.field public map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StickersKeywords;
    .locals 10
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    new-instance v5, Lcom/perm/kate/api/StickersKeywords;

    invoke-direct {v5}, Lcom/perm/kate/api/StickersKeywords;-><init>()V

    .line 14
    .local v5, "res":Lcom/perm/kate/api/StickersKeywords;
    const-string v8, "dictionary"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 15
    .local v0, "dict":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 18
    .local v3, "item":Lorg/json/JSONObject;
    const-string v8, "user_stickers"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 19
    .local v6, "user_stickers":Lorg/json/JSONArray;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 15
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v2, v8, [I

    .line 22
    .local v2, "ids":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 23
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v8

    aput v8, v2, v4

    .line 22
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 25
    :cond_2
    const-string v8, "words"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 26
    .local v7, "words":Lorg/json/JSONArray;
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 27
    iget-object v8, v5, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 29
    .end local v2    # "ids":[I
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "j":I
    .end local v6    # "user_stickers":Lorg/json/JSONArray;
    .end local v7    # "words":Lorg/json/JSONArray;
    :cond_3
    return-object v5
.end method
