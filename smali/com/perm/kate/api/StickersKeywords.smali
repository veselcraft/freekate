.class public Lcom/perm/kate/api/StickersKeywords;
.super Ljava/lang/Object;
.source "StickersKeywords.java"


# instance fields
.field chunks_count:I

.field chunks_hash:Ljava/lang/String;

.field public map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    return-void
.end method

.method static addToMap(Lcom/perm/kate/api/StickersKeywords;[ILjava/lang/String;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-static {v0, p1}, Lcom/perm/kate/api/StickersKeywords;->mergeArrays([I[I)[I

    move-result-object p1

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static mergeArrays([I[I)[I
    .locals 3

    .line 49
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 50
    array-length p0, p0

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StickersKeywords;
    .locals 10

    .line 16
    new-instance v0, Lcom/perm/kate/api/StickersKeywords;

    invoke-direct {v0}, Lcom/perm/kate/api/StickersKeywords;-><init>()V

    const-string v1, "dictionary"

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 18
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 19
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "user_stickers"

    .line 21
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 22
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_3

    .line 24
    :cond_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v6, v6, [I

    const/4 v7, 0x0

    .line 25
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 26
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "sticker_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "words"

    .line 28
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    .line 29
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 30
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    .line 31
    invoke-static {v0, v6, v7}, Lcom/perm/kate/api/StickersKeywords;->addToMap(Lcom/perm/kate/api/StickersKeywords;[ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "chunks_count"

    .line 34
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/perm/kate/api/StickersKeywords;->chunks_count:I

    const-string v1, "chunks_hash"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/StickersKeywords;->chunks_hash:Ljava/lang/String;

    return-object v0
.end method
