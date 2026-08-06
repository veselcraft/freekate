.class public Lcom/perm/kate/api/Document;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public access_key:Ljava/lang/String;

.field public audio_msg_duration:J

.field public audio_msg_link:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public id:J

.field public owner_id:J

.field public size:J

.field public thumb:Ljava/lang/String;

.field public thumb_s:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;
    .locals 12
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 26
    new-instance v1, Lcom/perm/kate/api/Document;

    invoke-direct {v1}, Lcom/perm/kate/api/Document;-><init>()V

    .line 27
    .local v1, "d":Lcom/perm/kate/api/Document;
    const-string v9, "id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/perm/kate/api/Document;->id:J

    .line 28
    const-string v9, "owner_id"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/perm/kate/api/Document;->owner_id:J

    .line 29
    const-string v9, "title"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    .line 30
    const-string v9, "url"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 31
    const-string v9, "size"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/perm/kate/api/Document;->size:J

    .line 32
    const-string v9, "ext"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->ext:Ljava/lang/String;

    .line 33
    const-string v9, "access_key"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->access_key:Ljava/lang/String;

    .line 35
    const-string v9, "preview"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 36
    .local v4, "preview":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 37
    const-string v9, "video"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 38
    .local v8, "video":Lorg/json/JSONObject;
    if-eqz v8, :cond_0

    .line 39
    const-string v9, "src"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->video:Ljava/lang/String;

    .line 41
    :cond_0
    const-string v9, "photo"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 42
    .local v3, "photo":Lorg/json/JSONObject;
    if-eqz v3, :cond_3

    .line 43
    const-string v9, "sizes"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 44
    .local v6, "sizes":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 45
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 46
    .local v5, "size":Lorg/json/JSONObject;
    const-string v9, "type"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 48
    .local v7, "type":Ljava/lang/String;
    const-string v9, "m"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 49
    const-string v9, "src"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 50
    :cond_1
    const-string v9, "s"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 51
    const-string v9, "src"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->thumb_s:Ljava/lang/String;

    .line 44
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v2    # "i":I
    .end local v5    # "size":Lorg/json/JSONObject;
    .end local v6    # "sizes":Lorg/json/JSONArray;
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    const-string v9, "audio_msg"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    .local v0, "audio_msg":Lorg/json/JSONObject;
    if-eqz v0, :cond_4

    .line 57
    const-string v9, "duration"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v1, Lcom/perm/kate/api/Document;->audio_msg_duration:J

    .line 58
    const-string v9, "link_mp3"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/perm/kate/api/Document;->audio_msg_link:Ljava/lang/String;

    .line 61
    .end local v0    # "audio_msg":Lorg/json/JSONObject;
    .end local v3    # "photo":Lorg/json/JSONObject;
    .end local v8    # "video":Lorg/json/JSONObject;
    :cond_4
    return-object v1
.end method

.method public static parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    if-eqz p0, :cond_1

    .line 67
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 69
    .local v3, "item":Ljava/lang/Object;
    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    .line 67
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 71
    check-cast v4, Lorg/json/JSONObject;

    .line 72
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/Document;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;

    move-result-object v0

    .line 73
    .local v0, "doc":Lcom/perm/kate/api/Document;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v0    # "doc":Lcom/perm/kate/api/Document;
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method
