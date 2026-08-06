.class public Lcom/perm/kate/api/Product;
.super Ljava/lang/Object;
.source "Product.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public id:I

.field public purchased:Z

.field public sticker_ids:[I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Product;
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 37
    new-instance v2, Lcom/perm/kate/api/Product;

    invoke-direct {v2}, Lcom/perm/kate/api/Product;-><init>()V

    .line 38
    .local v2, "p":Lcom/perm/kate/api/Product;
    const-string v6, "id"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Lcom/perm/kate/api/Product;->id:I

    .line 39
    const-string v6, "purchased"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v5, :cond_0

    :goto_0
    iput-boolean v5, v2, Lcom/perm/kate/api/Product;->purchased:Z

    .line 41
    const-string v5, "title"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 43
    const-string v5, "stickers"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 44
    .local v4, "stickers_json_object":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 45
    const-string v5, "sticker_ids"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 46
    .local v3, "stickers_json_array":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 47
    .local v0, "count":I
    new-array v5, v0, [I

    iput-object v5, v2, Lcom/perm/kate/api/Product;->sticker_ids:[I

    .line 48
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 49
    iget-object v5, v2, Lcom/perm/kate/api/Product;->sticker_ids:[I

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v1

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "stickers_json_array":Lorg/json/JSONArray;
    .end local v4    # "stickers_json_object":Lorg/json/JSONObject;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 51
    .restart local v4    # "stickers_json_object":Lorg/json/JSONObject;
    :cond_1
    return-object v2
.end method

.method public static parseProducts(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    const-string v3, "items"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 31
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Product;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Product;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 33
    :cond_0
    return-object v2
.end method

.method public static parseStockItems(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .local v3, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    const-string v5, "items"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 20
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 22
    .local v4, "stock_item_json":Lorg/json/JSONObject;
    const-string v5, "product"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 23
    .local v2, "product_json":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Product;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Product;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    .end local v2    # "product_json":Lorg/json/JSONObject;
    .end local v4    # "stock_item_json":Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method
