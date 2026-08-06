.class public Lcom/perm/kate/api/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field static enable_compression:Z

.field public static is_dev:Z

.field public static user_agent:Ljava/lang/String;


# instance fields
.field access_token:Ljava/lang/String;

.field api_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/api/Api;->is_dev:Z

    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Lcom/perm/kate/api/Api;->enable_compression:Z

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;
    .param p2, "api_id"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/perm/kate/api/Api;->api_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V
    .locals 1
    .param p1, "captcha_key"    # Ljava/lang/String;
    .param p2, "captcha_sid"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/perm/kate/api/Params;

    .prologue
    .line 762
    const-string v0, "captcha_sid"

    invoke-virtual {p3, v0, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v0, "captcha_key"

    invoke-virtual {p3, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void
.end method

.method private addHttps(Lcom/perm/kate/api/Params;Z)V
    .locals 2
    .param p1, "params"    # Lcom/perm/kate/api/Params;
    .param p2, "force_http"    # Z

    .prologue
    .line 1027
    if-eqz p2, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1034
    const-string v0, "https"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private answersToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1948
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1949
    const/4 v2, 0x0

    .line 1956
    :goto_0
    return-object v2

    .line 1950
    :cond_0
    const-string v1, "["

    .line 1951
    .local v1, "str_answers":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1952
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1953
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1954
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1955
    goto :goto_1

    .line 1956
    .end local v0    # "item":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private checkError(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 8
    .param p1, "root"    # Lorg/json/JSONObject;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x11

    const/16 v6, 0xe

    .line 46
    const-string v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 47
    const-string v5, "error"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 48
    .local v2, "error":Lorg/json/JSONObject;
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 49
    .local v0, "code":I
    const-string v5, "error_msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "message":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/KException;

    invoke-direct {v1, v0, v4, p2}, Lcom/perm/kate/api/KException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .local v1, "e":Lcom/perm/kate/api/KException;
    if-ne v0, v6, :cond_0

    .line 52
    const-string v5, "captcha_img"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    .line 53
    const-string v5, "captcha_sid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    .line 55
    :cond_0
    if-ne v0, v7, :cond_1

    .line 56
    const-string v5, "redirect_uri"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    .line 57
    :cond_1
    throw v1

    .line 59
    .end local v0    # "code":I
    .end local v1    # "e":Lcom/perm/kate/api/KException;
    .end local v2    # "error":Lorg/json/JSONObject;
    .end local v4    # "message":Ljava/lang/String;
    :cond_2
    const-string v5, "execute_errors"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    const-string v5, "execute_errors"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 61
    .local v3, "errors":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 76
    .end local v3    # "errors":Lorg/json/JSONArray;
    :cond_3
    return-void

    .line 64
    .restart local v3    # "errors":Lorg/json/JSONArray;
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    .restart local v2    # "error":Lorg/json/JSONObject;
    const-string v5, "error_code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    .restart local v0    # "code":I
    const-string v5, "error_msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .restart local v4    # "message":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/KException;

    invoke-direct {v1, v0, v4, p2}, Lcom/perm/kate/api/KException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .restart local v1    # "e":Lcom/perm/kate/api/KException;
    if-ne v0, v6, :cond_5

    .line 69
    const-string v5, "captcha_img"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    .line 70
    const-string v5, "captcha_sid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    .line 72
    :cond_5
    if-ne v0, v7, :cond_6

    .line 73
    const-string v5, "redirect_uri"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    .line 74
    :cond_6
    throw v1
.end method

.method private getSignedUrl(Lcom/perm/kate/api/Params;Z)Ljava/lang/String;
    .locals 3
    .param p1, "params"    # Lcom/perm/kate/api/Params;
    .param p2, "is_post"    # Z

    .prologue
    .line 160
    iget-object v1, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    const-string v1, "v"

    invoke-virtual {p1, v1}, Lcom/perm/kate/api/Params;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "v"

    const-string v2, "5.63"

    invoke-virtual {p1, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    const-string v0, ""

    .line 165
    .local v0, "args":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/perm/kate/api/Params;->getParamsString()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.vk.com/method/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/Params;->method_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "friend_likes"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/high16 v8, -0x8000000000000000L

    .line 461
    const-string v5, "items"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 462
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 465
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 466
    invoke-virtual {v0, v2, v8, v9}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 467
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 468
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/Long;
    :cond_1
    return-object v4
.end method

.method private parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v0, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    if-eqz p1, :cond_0

    .line 1421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1422
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1423
    .local v2, "o":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1426
    .end local v1    # "i":I
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method

.method private parseDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 836
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    if-eqz p1, :cond_0

    .line 838
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 839
    .local v7, "category_count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 840
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 841
    .local v11, "o":Lorg/json/JSONObject;
    const-string v4, "message"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .local v0, "m_json":Lorg/json/JSONObject;
    move v4, v1

    move-wide v5, v2

    .line 842
    invoke-static/range {v0 .. v6}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;ZJZJ)Lcom/perm/kate/api/Message;

    move-result-object v9

    .line 843
    .local v9, "m":Lcom/perm/kate/api/Message;
    const-string v4, "unread"

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v9, Lcom/perm/kate/api/Message;->unread_count:I

    .line 844
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 847
    .end local v0    # "m_json":Lorg/json/JSONObject;
    .end local v7    # "category_count":I
    .end local v8    # "i":I
    .end local v9    # "m":Lcom/perm/kate/api/Message;
    .end local v11    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v10
.end method

.method private parseMessages(Lorg/json/JSONArray;ZJZJ)Ljava/util/ArrayList;
    .locals 11
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "from_history"    # Z
    .param p3, "history_uid"    # J
    .param p5, "from_chat"    # Z
    .param p6, "me"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "ZJZJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 823
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    if-eqz p1, :cond_0

    .line 825
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 826
    .local v7, "category_count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 827
    invoke-virtual {p1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .local v0, "o":Lorg/json/JSONObject;
    move v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-wide/from16 v5, p6

    .line 828
    invoke-static/range {v0 .. v6}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;ZJZJ)Lcom/perm/kate/api/Message;

    move-result-object v9

    .line 829
    .local v9, "m":Lcom/perm/kate/api/Message;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 832
    .end local v0    # "o":Lorg/json/JSONObject;
    .end local v7    # "category_count":I
    .end local v8    # "i":I
    .end local v9    # "m":Lcom/perm/kate/api/Message;
    :cond_0
    return-object v10
.end method

.method private parsePhotoTags(Lorg/json/JSONArray;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "array"    # Lorg/json/JSONArray;
    .param p2, "pid"    # Ljava/lang/Long;
    .param p3, "owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PhotoTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2021
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    .local v4, "photo_tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PhotoTag;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 2023
    .local v0, "category_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2024
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 2025
    .local v2, "o":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/PhotoTag;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PhotoTag;

    move-result-object v3

    .line 2026
    .local v3, "p":Lcom/perm/kate/api/PhotoTag;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2027
    if-eqz p2, :cond_0

    .line 2028
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/perm/kate/api/PhotoTag;->pid:J

    .line 2029
    :cond_0
    if-eqz p3, :cond_1

    .line 2030
    iput-object p3, v3, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    .line 2023
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2032
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/perm/kate/api/PhotoTag;
    :cond_2
    return-object v4
.end method

.method private parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1285
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1286
    .local v4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 1287
    .local v0, "category_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1288
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1289
    .local v2, "o":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v3

    .line 1290
    .local v3, "p":Lcom/perm/kate/api/Photo;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1292
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/perm/kate/api/Photo;
    :cond_0
    return-object v4
.end method

.method private processNetworkException(ILjava/io/IOException;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "ex"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 120
    throw p2

    .line 121
    :cond_0
    return-void
.end method

.method private sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "params"    # Lcom/perm/kate/api/Params;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;
    .locals 9
    .param p1, "params"    # Lcom/perm/kate/api/Params;
    .param p2, "is_post"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->getSignedUrl(Lcom/perm/kate/api/Params;Z)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "url":Ljava/lang/String;
    const-string v0, ""

    .line 86
    .local v0, "body":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/perm/kate/api/Params;->getParamsString()Ljava/lang/String;

    move-result-object v0

    .line 89
    :cond_0
    const-string v6, "Kate.Api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    sget-boolean v6, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v6, :cond_1

    .line 93
    const-string v6, "Kate.Api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "body="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1
    const-string v3, ""

    .line 95
    .local v3, "response":Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x3

    if-gt v2, v6, :cond_3

    .line 97
    const/4 v6, 0x1

    if-eq v2, v6, :cond_2

    .line 98
    :try_start_0
    const-string v6, "Kate.Api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "try "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    invoke-direct {p0, v5, v0, p2}, Lcom/perm/kate/api/Api;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 110
    :cond_3
    sget-boolean v6, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v6, :cond_4

    .line 111
    const-string v6, "Kate.Api"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v4, "root":Lorg/json/JSONObject;
    invoke-direct {p0, v4, v5}, Lcom/perm/kate/api/Api;->checkError(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 114
    return-object v4

    .line 101
    .end local v4    # "root":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "ex":Ljavax/net/ssl/SSLException;
    invoke-direct {p0, v2, v1}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    .line 95
    .end local v1    # "ex":Ljavax/net/ssl/SSLException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/net/SocketException;
    invoke-direct {p0, v2, v1}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    goto :goto_1

    .line 105
    .end local v1    # "ex":Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 106
    .local v1, "ex":Ljava/net/SocketTimeoutException;
    invoke-direct {p0, v2, v1}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    goto :goto_1
.end method

.method private sendRequestInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "is_post"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v2, 0x0

    .line 126
    .local v2, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 127
    const/16 v7, 0x7530

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 128
    const/16 v7, 0x7530

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 129
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 130
    invoke-virtual {v2, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 131
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 132
    if-eqz p3, :cond_4

    const-string v7, "POST"

    :goto_0
    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 133
    sget-object v7, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 134
    const-string v7, "User-Agent"

    sget-object v8, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    sget-boolean v7, Lcom/perm/kate/api/Api;->enable_compression:Z

    if-eqz v7, :cond_1

    .line 136
    const-string v7, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    if-eqz p3, :cond_2

    .line 138
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 139
    :cond_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 140
    .local v1, "code":I
    const-string v7, "Kate.Api"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "code="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v7, -0x1

    if-ne v1, v7, :cond_5

    .line 143
    new-instance v7, Lcom/perm/utils/WrongResponseCodeException;

    const-string v8, "Network error"

    invoke-direct {v7, v8}, Lcom/perm/utils/WrongResponseCodeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    .end local v1    # "code":I
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v7

    .line 132
    :cond_4
    :try_start_1
    const-string v7, "GET"

    goto :goto_0

    .line 146
    .restart local v1    # "code":I
    :cond_5
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x2000

    invoke-direct {v4, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 147
    .local v4, "is":Ljava/io/InputStream;
    const-string v7, "Content-Encoding"

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "enc":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v7, "gzip"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 149
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v5

    .line 150
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_6
    invoke-static {v4}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 154
    .local v6, "response":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 155
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 151
    :cond_7
    return-object v6
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 173
    return-object p0
.end method

.method public static unescapeForLongPoll(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&quot;"

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<br>"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&gt;"

    const-string v2, ">"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeForPush(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 193
    if-nez p0, :cond_0

    .line 194
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "<br>"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeForTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&lt;"

    const-string v2, "<"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static unescapeWithSmiles(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1431
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "audio.add"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1432
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "audio_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1433
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1434
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1435
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1436
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1437
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1438
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1439
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1440
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addAudioAlbum(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2761
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "audio.addAlbum"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2762
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "title"

    invoke-virtual {v1, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    const-string v3, "group_id"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2764
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2765
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2766
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v3, "album_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public addBan(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "gids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 2715
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "newsfeed.addBan"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2716
    .local v0, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2717
    const-string v4, "user_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2718
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2719
    const-string v4, "group_ids"

    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2721
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2722
    .local v1, "response":I
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addFriend(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "captcha_key"    # Ljava/lang/String;
    .param p4, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1754
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "friends.add"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1755
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1756
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    invoke-direct {p0, p3, p4, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1758
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1759
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public addGroupBanUser(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "end_date"    # Ljava/lang/Long;
    .param p6, "reason"    # Ljava/lang/Integer;
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "comment_visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2907
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "groups.banUser"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2908
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2909
    const-string v4, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2910
    const-string v4, "end_date"

    invoke-virtual {v0, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2911
    const-string v4, "reason"

    invoke-virtual {v0, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2912
    const-string v4, "comment"

    invoke-virtual {v0, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    if-eqz p8, :cond_0

    .line 2914
    const-string v4, "comment_visible"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2916
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2917
    .local v1, "response":I
    if-ne v1, v3, :cond_1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addGroupLink(JLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Link;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "link"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3626
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.addLink"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3627
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3628
    const-string v2, "link"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3629
    const-string v2, "text"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3630
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3631
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Link;->parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v2

    return-object v2
.end method

.method public addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "item_id"    # Ljava/lang/Long;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "access_key"    # Ljava/lang/String;
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1457
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "likes.add"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1458
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-virtual {v2, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1459
    const-string v5, "item_id"

    invoke-virtual {v2, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1460
    const-string v5, "type"

    invoke-virtual {v2, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    const-string v5, "access_key"

    invoke-virtual {v2, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-direct {p0, p5, p6, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1463
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1464
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1465
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "likes"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1466
    .local v0, "likes":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5
.end method

.method public addPollVote(JJJJLjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "poll_id"    # J
    .param p3, "answer_id"    # J
    .param p5, "owner_id"    # J
    .param p7, "topic_id"    # J
    .param p9, "captcha_key"    # Ljava/lang/String;
    .param p10, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1892
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "polls.addVote"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1893
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1894
    const-string v2, "poll_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1895
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_0

    .line 1896
    const-string v2, "board"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1897
    :cond_0
    const-string v2, "answer_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1898
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1899
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1900
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public addToBlackList(J)Ljava/lang/Boolean;
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2841
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "account.banUser"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2842
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2843
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2844
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2845
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addUserToChat(JJ)Ljava/lang/Integer;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2456
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.addChatUser"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2457
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2458
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2459
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2460
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "target_id"    # Ljava/lang/Long;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1708
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "video.add"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1709
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "target_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1710
    const-string v3, "video_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1711
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1712
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1713
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1714
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1715
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1716
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1717
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "privacy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3525
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "video.addAlbum"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3526
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-virtual {v1, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3527
    const-string v3, "title"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    const-string v3, "privacy"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3530
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3531
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v3, "album_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public allowMessagesFromGroup(J)I
    .locals 5
    .param p1, "group_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4027
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.allowMessagesFromGroup"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4028
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4029
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4030
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method arrayToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p1, :cond_1

    .line 282
    const/4 v1, 0x0

    .line 289
    :cond_0
    return-object v1

    .line 283
    :cond_1
    const-string v1, ""

    .line 284
    .local v1, "str_cids":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, "item":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    goto :goto_0
.end method

.method public audioReorder(JJLjava/lang/Long;Ljava/lang/Long;)Z
    .locals 7
    .param p1, "audio_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "before"    # Ljava/lang/Long;
    .param p6, "after"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3998
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "audio.reorder"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3999
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4000
    const-string v4, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4001
    const-string v4, "before"

    invoke-virtual {v0, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4002
    const-string v4, "after"

    invoke-virtual {v0, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4003
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 4004
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 4005
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "audio"    # Ljava/lang/String;
    .param p2, "target_ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2749
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.setBroadcast"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2750
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v1, "audio"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    const-string v1, "target_ids"

    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    .line 2756
    const/4 v1, 0x1

    return v1
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "new_password"    # Ljava/lang/String;
    .param p2, "old_password"    # Ljava/lang/String;
    .param p3, "restore_sid"    # Ljava/lang/String;
    .param p4, "change_password_hash"    # Ljava/lang/String;
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3567
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "account.changePassword"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3568
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "new_password"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3569
    const-string v4, "old_password"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3570
    const-string v4, "restore_sid"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3571
    const-string v4, "change_password_hash"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3573
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3574
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3575
    .local v1, "response":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 3576
    .local v3, "token":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3577
    const-string v4, "token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3578
    :cond_0
    return-object v3
.end method

.method public chatCreate(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p2, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Long;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2423
    .local p1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 2424
    :cond_0
    const/4 v4, 0x0

    .line 2432
    :goto_0
    return-object v4

    .line 2425
    :cond_1
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "messages.createChat"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2426
    .local v1, "params":Lcom/perm/kate/api/Params;
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2427
    .local v3, "str_uids":Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 2428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2429
    :cond_2
    const-string v4, "user_ids"

    invoke-virtual {v1, v4, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v4, "title"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2432
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_0
.end method

.method public chatEdit(JLjava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2437
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.editChat"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2438
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2439
    const-string v2, "title"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2441
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public confirmPhotoTag(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # J
    .param p4, "tag_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3666
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.confirmTag"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3667
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3668
    const-string v2, "photo_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3669
    const-string v2, "tag_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3670
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3671
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Album;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "privacy_view"    # Ljava/lang/String;
    .param p4, "privacy_comment"    # Ljava/lang/String;
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1107
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "photos.createAlbum"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "title"

    invoke-virtual {v1, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const-string v3, "group_id"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1110
    const-string v3, "privacy_view"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v3, "privacy_comment"

    invoke-virtual {v1, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v3, "description"

    invoke-virtual {v1, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1114
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1115
    .local v0, "o":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1116
    const/4 v3, 0x0

    .line 1117
    :goto_0
    return-object v3

    :cond_0
    invoke-static {v0}, Lcom/perm/kate/api/Album;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object v3

    goto :goto_0
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Group;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "subtype"    # Ljava/lang/Integer;
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3247
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.create"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3248
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3249
    const-string v2, "description"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    const-string v2, "subtype"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3252
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3253
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3254
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v2

    return-object v2
.end method

.method public createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)J
    .locals 7
    .param p1, "gid"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "from_group"    # Z
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2182
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "board.addTopic"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2183
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2184
    const-string v4, "title"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2185
    const-string v4, "text"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    if-eqz p5, :cond_0

    .line 2187
    const-string v4, "from_group"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_0
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2189
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 2190
    .local v1, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2191
    .local v2, "topic_id":J
    return-wide v2
.end method

.method public createGroupTopicComment(JJLjava/lang/String;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "from_group"    # Z
    .param p8, "sticker_id"    # Ljava/lang/Integer;
    .param p9, "captcha_key"    # Ljava/lang/String;
    .param p10, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2141
    .local p6, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v6, "board.createComment"

    invoke-direct {v4, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2142
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v6, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2143
    const-string v6, "topic_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2144
    const-string v6, "message"

    invoke-virtual {v4, v6, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const-string v6, "attachments"

    invoke-virtual {p0, p6}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2146
    if-eqz p7, :cond_0

    .line 2147
    const-string v6, "from_group"

    const-string v7, "1"

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    :cond_0
    const-string v6, "sticker_id"

    move-object/from16 v0, p8

    invoke-virtual {v4, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2149
    move-object/from16 v0, p9

    move-object/from16 v1, p10

    invoke-direct {p0, v0, v1, v4}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2150
    const/4 v6, 0x1

    invoke-direct {p0, v4, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v5

    .line 2151
    .local v5, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2152
    .local v2, "message_id":J
    return-wide v2
.end method

.method public createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3809
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "market.createComment"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3810
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3811
    const-string v4, "item_id"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3812
    const-string v4, "message"

    invoke-virtual {v2, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    const-string v4, "reply_to_comment"

    invoke-virtual {v2, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3814
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    if-eqz p6, :cond_0

    .line 3816
    const-string v4, "from_group"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3817
    :cond_0
    const-string v4, "sticker_id"

    invoke-virtual {v2, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3818
    invoke-direct {p0, p8, p9, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3819
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 3820
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3821
    .local v0, "cid":J
    return-wide v0
.end method

.method public createNote(Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1722
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "notes.add"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1723
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "title"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    const-string v4, "text"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1725
    const-string v4, "privacy_view"

    const-string v5, "all"

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    const-string v4, "privacy_comment"

    const-string v5, "all"

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 1728
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1729
    .local v0, "note_id":J
    return-wide v0
.end method

.method public createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p1, "nid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 707
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "notes.createComment"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 708
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "note_id"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 709
    const-string v4, "owner_id"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 710
    invoke-direct {p0, p4, p5, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 711
    const-string v4, "message"

    invoke-virtual {v2, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 715
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 716
    .local v0, "message_id":J
    return-wide v0
.end method

.method public createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 676
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "photos.createComment"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 677
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "photo_id"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 678
    const-string v4, "owner_id"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    invoke-direct {p0, p8, p9, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 680
    const-string v4, "message"

    invoke-virtual {v2, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string v4, "reply_to_comment"

    invoke-virtual {v2, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 682
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    if-eqz p6, :cond_0

    .line 684
    const-string v4, "from_group"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :cond_0
    const-string v4, "sticker_id"

    invoke-virtual {v2, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 686
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 687
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 688
    .local v0, "message_id":J
    return-wide v0
.end method

.method public createPoll(Ljava/lang/String;ZLjava/lang/Long;Ljava/util/Collection;)Lcom/perm/kate/api/VkPoll;
    .locals 5
    .param p1, "question"    # Ljava/lang/String;
    .param p2, "is_anonymous"    # Z
    .param p3, "owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/perm/kate/api/VkPoll;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1937
    .local p4, "answers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "polls.create"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1938
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1939
    const-string v3, "question"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    const-string v4, "is_anonymous"

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1941
    const-string v3, "add_answers"

    invoke-direct {p0, p4}, Lcom/perm/kate/api/Api;->answersToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1943
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1944
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object v3

    return-object v3

    .line 1940
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "root":Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .param p1, "video_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "reply_to_comment"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 733
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "video.createComment"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 734
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "video_id"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 735
    const-string v4, "owner_id"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 736
    invoke-direct {p0, p8, p9, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 737
    const-string v4, "message"

    invoke-virtual {v2, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v4, "reply_to_comment"

    invoke-virtual {v2, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 739
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    if-eqz p6, :cond_0

    .line 741
    const-string v4, "from_group"

    const-string v5, "1"

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :cond_0
    const-string v4, "sticker_id"

    invoke-virtual {v2, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 744
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 745
    .local v0, "message_id":J
    return-wide v0
.end method

.method public createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p6, "from_group"    # Z
    .param p7, "sticker_id"    # Ljava/lang/Integer;
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1297
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v7, "wall.createComment"

    invoke-direct {v4, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v7, "owner_id"

    invoke-virtual {v4, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1299
    const-string v7, "post_id"

    invoke-virtual {v4, v7, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1300
    const-string v7, "message"

    invoke-virtual {v4, v7, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v7, "reply_to_comment"

    invoke-virtual {v4, v7, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1302
    const-string v7, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    if-eqz p6, :cond_0

    .line 1304
    const-string v7, "from_group"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    :cond_0
    const-string v7, "sticker_id"

    move-object/from16 v0, p7

    invoke-virtual {v4, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v0, v1, v4}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1307
    const/4 v7, 0x1

    invoke-direct {p0, v4, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 1308
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1309
    .local v5, "response":Lorg/json/JSONObject;
    const-string v7, "comment_id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1310
    .local v2, "cid":J
    return-wide v2
.end method

.method public createWallPost(JLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)J
    .locals 13
    .param p1, "owner_id"    # J
    .param p3, "text"    # Ljava/lang/String;
    .param p5, "export"    # Ljava/lang/String;
    .param p6, "only_friends"    # Z
    .param p7, "from_group"    # Z
    .param p8, "signed"    # Z
    .param p9, "lat"    # Ljava/lang/String;
    .param p10, "lon"    # Ljava/lang/String;
    .param p11, "publish_date"    # Ljava/lang/Long;
    .param p12, "post_id"    # Ljava/lang/Long;
    .param p13, "captcha_key"    # Ljava/lang/String;
    .param p14, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1328
    .local p4, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v7, "wall.post"

    invoke-direct {v2, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1329
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v7, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1330
    const-string v7, "attachments"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    const-string v7, "lat"

    move-object/from16 v0, p9

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string v7, "long"

    move-object/from16 v0, p10

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string v7, "message"

    move-object/from16 v0, p3

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    if-eqz p5, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1335
    const-string v7, "services"

    move-object/from16 v0, p5

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    :cond_0
    if-eqz p7, :cond_1

    .line 1337
    const-string v7, "from_group"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    :cond_1
    if-eqz p6, :cond_2

    .line 1339
    const-string v7, "friends_only"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :cond_2
    if-eqz p8, :cond_3

    .line 1341
    const-string v7, "signed"

    const-string v8, "1"

    invoke-virtual {v2, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :cond_3
    const-string v7, "publish_date"

    move-object/from16 v0, p11

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1343
    if-eqz p12, :cond_4

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 1344
    const-string v7, "post_id"

    move-object/from16 v0, p12

    invoke-virtual {v2, v7, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1345
    :cond_4
    move-object/from16 v0, p13

    move-object/from16 v1, p14

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1346
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 1347
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1348
    .local v3, "response":Lorg/json/JSONObject;
    const-string v7, "post_id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1349
    .local v4, "res_post_id":J
    return-wide v4
.end method

.method public deleteAlbum(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1997
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.deleteAlbum"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1998
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "album_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1999
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2000
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2001
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2002
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2003
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2004
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteAudioAlbum(JLjava/lang/Long;)Ljava/lang/Integer;
    .locals 5
    .param p1, "album_id"    # J
    .param p3, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2781
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "audio.deleteAlbum"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2782
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2783
    const-string v2, "group_id"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2784
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2785
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public deleteAudios(Ljava/util/ArrayList;J)I
    .locals 6
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4086
    .local p1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, ""

    .line 4087
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4088
    .local v0, "audio_id":Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "API.audio.delete({audio_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",owner_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "});"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4089
    .end local v0    # "audio_id":Ljava/lang/Long;
    :cond_0
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v2, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4090
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v2, v3, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    .line 4092
    const/4 v3, 0x0

    return v3
.end method

.method public deleteBan(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "gids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 2727
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "newsfeed.deleteBan"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2728
    .local v0, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2729
    const-string v4, "uids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2730
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 2731
    const-string v4, "gids"

    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2732
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2733
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2734
    .local v1, "response":I
    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteChatPhoto(J)Ljava/lang/Long;
    .locals 7
    .param p1, "chat_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3282
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "messages.deleteChatPhoto"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3283
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3284
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3285
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3286
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "message_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3288
    .local v0, "message_id":Ljava/lang/Long;
    return-object v0
.end method

.method public deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4036
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, ""

    .line 4037
    .local v1, "code":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4038
    .local v0, "chat_id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "API.messages.deleteDialog({chat_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4039
    .end local v0    # "chat_id":Ljava/lang/Long;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 4040
    .local v3, "user_id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "API.messages.deleteDialog({user_id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 4041
    .end local v3    # "user_id":Ljava/lang/Long;
    :cond_1
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "execute"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4042
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "code"

    invoke-virtual {v2, v4, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    .line 4044
    const/4 v4, 0x0

    return v4
.end method

.method public deleteDoc(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "doc_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2686
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "docs.delete"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2687
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2688
    const-string v4, "doc_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2689
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2690
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2691
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteFriend(Ljava/lang/Long;)J
    .locals 12
    .param p1, "uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    .line 1764
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v8, "friends.delete"

    invoke-direct {v2, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1765
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v8, "user_id"

    invoke-virtual {v2, v8, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1766
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1767
    .local v6, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1768
    .local v3, "response":Lorg/json/JSONObject;
    const-string v8, "success"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1769
    .local v7, "success":Ljava/lang/Long;
    const-wide/16 v4, 0x0

    .line 1770
    .local v4, "result":J
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1771
    const-string v8, "friend_deleted"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1772
    .local v0, "friend_deleted":Ljava/lang/Long;
    const-string v8, "out_request_deleted"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1773
    .local v1, "out_request_deleted":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1774
    const-wide/16 v4, 0x1

    .line 1779
    .end local v0    # "friend_deleted":Ljava/lang/Long;
    .end local v1    # "out_request_deleted":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-wide v4

    .line 1775
    .restart local v0    # "friend_deleted":Ljava/lang/Long;
    .restart local v1    # "out_request_deleted":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1776
    const-wide/16 v4, 0x2

    goto :goto_0
.end method

.method public deleteFromBlackList(J)Ljava/lang/Boolean;
    .locals 7
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2850
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "account.unbanUser"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2851
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2852
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2853
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2854
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteGroupBanUser(JJ)Ljava/lang/Boolean;
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2922
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "groups.unbanUser"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2923
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2924
    const-string v4, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2925
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2926
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2927
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteGroupLink(JJ)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "link_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3617
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.deleteLink"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3618
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3619
    const-string v2, "link_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3620
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3621
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public deleteGroupTopic(JJ)Ljava/lang/Boolean;
    .locals 7
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2196
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "board.deleteTopic"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2197
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2198
    const-string v4, "topic_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2199
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2200
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2201
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteGroupTopicComment(JJJ)Ljava/lang/Boolean;
    .locals 7
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "cid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2171
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "board.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2172
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2173
    const-string v4, "topic_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2174
    const-string v4, "comment_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2175
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2176
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2177
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteGroups(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4074
    .local p1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v0, ""

    .line 4075
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 4076
    .local v1, "group_id":Ljava/lang/Long;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "API.groups.leave({group_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "});"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4077
    .end local v1    # "group_id":Ljava/lang/Long;
    :cond_0
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v2, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4078
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4079
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    .line 4080
    const/4 v3, 0x0

    return v3
.end method

.method public deleteLastWallPosts(JILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "count"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var posts = API.wall.get({owner_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",filter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "});var i=0;var count=posts.items.length;while(i<count){API.wall.delete({owner_id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",post_id:posts.items[i].id});i=i+1;};"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3642
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3643
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v2, "code"

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "item_id"    # Ljava/lang/Long;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1471
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "likes.delete"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1473
    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    const-string v3, "item_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1475
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1476
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1477
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1478
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "likes"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public deleteMarketComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "wall_owner_id"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3826
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "market.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3827
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3828
    const-string v4, "comment_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3829
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3830
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3831
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteMessage(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 901
    .local p1, "message_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 902
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v1, "message_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    .line 905
    const/4 v1, 0x0

    return-object v1
.end method

.method public deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 3
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chatId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1854
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.deleteDialog"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1855
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1856
    const-string v2, "chat_id"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1857
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1858
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteNote(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "nid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1161
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "notes.delete"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "note_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1163
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1164
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1165
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1166
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1167
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteNoteComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "note_owner_id"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1549
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "notes.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1550
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    const-string v4, "comment_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1552
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1553
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1554
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deletePhoto(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 8
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1870
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "photos.delete"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1871
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1872
    const-string v4, "photo_id"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1873
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1874
    .local v1, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1875
    .local v2, "response":J
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public deletePhotoComment(JLjava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "photo_id"    # J
    .param p3, "photo_owner_id"    # Ljava/lang/Long;
    .param p4, "comment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1569
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "photos.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1570
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1571
    const-string v4, "comment_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1572
    const-string v4, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1573
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1574
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1575
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deletePhotos(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4050
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    const-string v0, ""

    .line 4051
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .line 4052
    .local v1, "pair":Lcom/perm/kate/api/IdsPair;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "API.photos.delete({owner_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",photo_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "});"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4053
    .end local v1    # "pair":Lcom/perm/kate/api/IdsPair;
    :cond_0
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v2, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4054
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4055
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    .line 4056
    const/4 v3, 0x0

    return v3
.end method

.method public deletePollVote(JJJJ)I
    .locals 5
    .param p1, "poll_id"    # J
    .param p3, "answer_id"    # J
    .param p5, "owner_id"    # J
    .param p7, "topic_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1905
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "polls.deleteVote"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1906
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1907
    const-string v2, "poll_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1908
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-eqz v2, :cond_0

    .line 1909
    const-string v2, "board"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1910
    :cond_0
    const-string v2, "answer_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1911
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1912
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public deleteRecentTopicComments(JJ)Ljava/lang/Object;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "spammer_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3725
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "var api_call_count=0;var deleted_count=0;var topics=API.board.getTopics({\"group_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"count\": 10, \"order\": 1});api_call_count=api_call_count+1;var i=0;while(i<topics.items.length){    var topic_id=topics.items[i].id;    var comments=API.board.getComments({\"group_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"topic_id\": topic_id, \"count\": 45, \"sort\": \"desc\"});    api_call_count=api_call_count+1;    if(api_call_count>=25){        return deleted_count;    }    var j=0;    while(j<comments.items.length){        if(comments.items[j].from_id=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "){            API.board.deleteComment({\"group_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"topic_id\": topic_id, \"comment_id\": comments.items[j].id});            api_call_count=api_call_count+1;            deleted_count=deleted_count+1;            if(api_call_count>=25){                return deleted_count;            }        }        j=j+1;    }    i=i+1;}return deleted_count;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3752
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3753
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v1, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3754
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 3755
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public deleteRecentWallComments(JJ)Ljava/lang/Object;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "spammer_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "var api_call_count=0;var deleted_count=0;var posts=API.wall.get({\"owner_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"count\": 10});api_call_count=api_call_count+1;var i=0;while(i<posts.items.length){    var post_id=posts.items[i].id;    var comments=API.wall.getComments({\"owner_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"post_id\": post_id, \"count\": 45, \"sort\": \"desc\"});    api_call_count=api_call_count+1;    if(api_call_count>=25){        return deleted_count;    }    var j=0;    while(j<comments.items.length){        if(comments.items[j].from_id=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "){            API.wall.deleteComment({\"owner_id\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", \"comment_id\": comments.items[j].id});            api_call_count=api_call_count+1;            deleted_count=deleted_count+1;            if(api_call_count>=25){                return deleted_count;            }        }        j=j+1;    }    i=i+1;}return deleted_count;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3715
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3716
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v1, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3717
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 3718
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3
.end method

.method public deleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)Ljava/lang/String;
    .locals 5
    .param p1, "vid"    # Ljava/lang/Long;
    .param p2, "oid"    # Ljava/lang/Long;
    .param p3, "target_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1695
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "video.delete"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1696
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "video_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1697
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1698
    const-string v3, "target_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1699
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1700
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1701
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1702
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1703
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteVideoComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "video_owner_id"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1559
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "video.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1560
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1561
    const-string v4, "comment_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1562
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1563
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1564
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteWallComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "wall_owner_id"    # Ljava/lang/Long;
    .param p2, "comment_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1539
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "wall.deleteComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1540
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1541
    const-string v4, "comment_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1542
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1543
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1544
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public denyMessagesFromGroup(J)I
    .locals 5
    .param p1, "group_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4019
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.denyMessagesFromGroup"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4020
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4021
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4022
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public docsAdd(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "document_id"    # J
    .param p5, "access_key"    # Ljava/lang/String;
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2859
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "docs.add"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2860
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "doc_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2861
    const-string v2, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2862
    const-string v2, "access_key"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2864
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2866
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public docsGetUploadServer(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2665
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "docs.getUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2666
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2667
    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2668
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2669
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2670
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # J
    .param p3, "oid"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "privacy_view"    # Ljava/lang/String;
    .param p6, "privacy_comment"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1122
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.editAlbum"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1123
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "album_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1125
    const-string v3, "title"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v3, "privacy_view"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    const-string v3, "privacy_comment"

    invoke-virtual {v0, v3, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v3, "description"

    invoke-virtual {v0, v3, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1130
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1131
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 1132
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .param p1, "owner_id"    # J
    .param p3, "audio_id"    # J
    .param p5, "artist"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "genre_id"    # Ljava/lang/Integer;
    .param p9, "no_search"    # Ljava/lang/Integer;
    .param p10, "captcha_key"    # Ljava/lang/String;
    .param p11, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2967
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v5, "audio.edit"

    invoke-direct {v3, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2968
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2969
    const-string v5, "audio_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2970
    const-string v5, "artist"

    invoke-virtual {v3, v5, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    const-string v5, "title"

    invoke-virtual {v3, v5, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2972
    const-string v5, "text"

    move-object/from16 v0, p7

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2973
    const-string v5, "genre_id"

    move-object/from16 v0, p8

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2974
    const-string v5, "no_search"

    move-object/from16 v0, p9

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2975
    move-object/from16 v0, p10

    move-object/from16 v1, p11

    invoke-direct {p0, v0, v1, v3}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2976
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 2977
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2978
    .local v2, "lyrics_id":Ljava/lang/Long;
    return-object v2
.end method

.method public editAudioAlbum(Ljava/lang/String;JLjava/lang/Long;)Ljava/lang/Integer;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "album_id"    # J
    .param p4, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2771
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "audio.editAlbum"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2772
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "title"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    const-string v2, "album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2774
    const-string v2, "group_id"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2775
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2776
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public editDoc(JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "doc_id"    # J
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "tags"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3913
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "docs.edit"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3914
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3915
    const-string v4, "doc_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3916
    const-string v4, "title"

    invoke-virtual {v0, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    const-string v4, "tags"

    invoke-virtual {v0, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3918
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3919
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3920
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editGroupLink(JJLjava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "link_id"    # J
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3607
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.editLink"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3608
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3609
    const-string v2, "link_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3610
    const-string v2, "text"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3612
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public editGroupSettings(JLcom/perm/kate/api/GroupSettings;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "gs"    # Lcom/perm/kate/api/GroupSettings;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3336
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.edit"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3337
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3338
    if-eqz p3, :cond_0

    .line 3339
    const-string v2, "title"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3340
    const-string v2, "description"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3341
    const-string v2, "address"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    const-string v2, "access"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3343
    const-string v2, "website"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3344
    const-string v2, "subject"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    const-string v2, "email"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->email:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    const-string v2, "phone"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->phone:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3347
    const-string v2, "wall"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3348
    const-string v2, "photos"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3349
    const-string v2, "video"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3350
    const-string v2, "audio"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3351
    const-string v2, "topics"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3352
    const-string v2, "docs"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3353
    const-string v2, "wiki"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3354
    const-string v2, "links"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3355
    const-string v2, "events"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3356
    const-string v2, "places"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3357
    const-string v2, "contacts"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3358
    const-string v2, "public_date"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3359
    const-string v2, "public_category"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3360
    const-string v2, "public_subcategory"

    iget-object v3, p3, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3363
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 3364
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public editGroupTopicComment(JJJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "cid"    # J
    .param p3, "gid"    # J
    .param p5, "tid"    # J
    .param p7, "text"    # Ljava/lang/String;
    .param p9, "captcha_key"    # Ljava/lang/String;
    .param p10, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2157
    .local p8, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "board.editComment"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2159
    const-string v3, "group_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2160
    const-string v3, "topic_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2161
    const-string v3, "text"

    invoke-virtual {v0, v3, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    const-string v3, "attachments"

    invoke-virtual {p0, p8}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2164
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 2165
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2166
    .local v1, "response":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "text"    # Ljava/lang/String;
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 3846
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "market.editComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3847
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3848
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3849
    const-string v4, "message"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3850
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3852
    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 3853
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3854
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editNoteComment(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 721
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "notes.editComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 722
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 723
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 724
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 725
    const-string v4, "message"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 727
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 728
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "cid"    # J
    .param p3, "pid"    # J
    .param p5, "owner_id"    # Ljava/lang/Long;
    .param p6, "message"    # Ljava/lang/String;
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p7, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 693
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v6, "photos.editComment"

    invoke-direct {v2, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 694
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v6, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 695
    const-string v6, "photo_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 696
    const-string v6, "owner_id"

    invoke-virtual {v2, v6, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 697
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 698
    const-string v6, "message"

    invoke-virtual {v2, v6, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v6, "attachments"

    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-direct {p0, v2, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 701
    .local v4, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 702
    .local v3, "response":I
    if-ne v3, v5, :cond_0

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "desc"    # Ljava/lang/String;
    .param p6, "privacy_view"    # Ljava/lang/String;
    .param p7, "privacy_comment"    # Ljava/lang/String;
    .param p8, "repeat"    # Ljava/lang/Integer;
    .param p9, "captcha_key"    # Ljava/lang/String;
    .param p10, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3061
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "video.edit"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3062
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3063
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3064
    const-string v3, "name"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    const-string v3, "desc"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3066
    const-string v3, "privacy_view"

    invoke-virtual {v0, v3, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    const-string v3, "privacy_comment"

    invoke-virtual {v0, v3, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const-string v3, "repeat"

    invoke-virtual {v0, v3, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3069
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3070
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 3071
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3072
    .local v1, "response":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "message"    # Ljava/lang/String;
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 750
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "video.editComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 751
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 752
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 753
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 754
    const-string v4, "message"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 757
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 758
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cid"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "text"    # Ljava/lang/String;
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p5, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 1315
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "wall.editComment"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1317
    const-string v4, "owner_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1318
    const-string v4, "message"

    invoke-virtual {v0, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v4, "attachments"

    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1321
    invoke-direct {p0, v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 1322
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1323
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public editWallPost(JJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p7, "lat"    # Ljava/lang/String;
    .param p8, "lon"    # Ljava/lang/String;
    .param p9, "place_id"    # J
    .param p11, "publish_date"    # Ljava/lang/Long;
    .param p12, "signed"    # Z
    .param p13, "captcha_key"    # Ljava/lang/String;
    .param p14, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2626
    .local p6, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "wall.edit"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2627
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2628
    const-string v4, "post_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2629
    const-string v4, "message"

    invoke-virtual {v2, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    const-string v4, "attachments"

    invoke-virtual {p0, p6}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    const-string v4, "lat"

    invoke-virtual {v2, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    const-string v4, "long"

    invoke-virtual {v2, v4, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    const-string v4, "place_id"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2634
    const-string v4, "publish_date"

    move-object/from16 v0, p11

    invoke-virtual {v2, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2635
    const-string v5, "signed"

    if-eqz p12, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2636
    move-object/from16 v0, p13

    move-object/from16 v1, p14

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2637
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 2638
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 2635
    .end local v3    # "root":Lorg/json/JSONObject;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public faveAddGroup(J)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3481
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.addGroup"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3482
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3483
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3484
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public faveAddLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3497
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.addLink"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3498
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "link"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3499
    const-string v2, "text"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3501
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public faveAddUser(J)Ljava/lang/Integer;
    .locals 5
    .param p1, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3465
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.addUser"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3466
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3467
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3468
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public faveRemoveGroup(J)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3489
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.removeGroup"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3490
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3491
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3492
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public faveRemoveLink(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "link_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3506
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.removeLink"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3507
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "link_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3508
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3509
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public faveRemoveUser(J)Ljava/lang/Integer;
    .locals 5
    .param p1, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3473
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "fave.removeUser"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3474
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3475
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3476
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public friendsEdit(JLjava/util/Collection;)Ljava/lang/Integer;
    .locals 5
    .param p1, "user_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3439
    .local p3, "list_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "friends.edit"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3440
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3441
    const-string v2, "list_ids"

    invoke-virtual {p0, p3}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3442
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3443
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public friendsLists(Ljava/lang/Long;Z)Ljava/util/ArrayList;
    .locals 10
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "return_system"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/FriendsList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1961
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v8, "friends.getLists"

    invoke-direct {v4, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1962
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v8, "user_id"

    invoke-virtual {v4, v8, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1963
    if-eqz p2, :cond_0

    .line 1964
    const-string v8, "return_system"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1965
    :cond_0
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1966
    .local v7, "root":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1967
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/FriendsList;>;"
    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1968
    .local v5, "response":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1969
    .local v2, "list":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 1970
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 1971
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1972
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/FriendsList;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/FriendsList;

    move-result-object v0

    .line 1973
    .local v0, "fl":Lcom/perm/kate/api/FriendsList;
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1970
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1976
    .end local v0    # "fl":Lcom/perm/kate/api/FriendsList;
    .end local v1    # "i":I
    .end local v3    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v6
.end method

.method public getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;II)Ljava/util/ArrayList;
    .locals 11
    .param p1, "album_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3890
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v9, "photos.getAllComments"

    invoke-direct {v6, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3891
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-string v9, "album_id"

    invoke-virtual {v6, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3892
    const-string v9, "owner_id"

    invoke-virtual {v6, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3893
    if-lez p4, :cond_0

    .line 3894
    const-string v9, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3895
    :cond_0
    if-lez p3, :cond_1

    .line 3896
    const-string v9, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3897
    :cond_1
    const-string v9, "need_likes"

    const-string v10, "1"

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3898
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 3899
    .local v8, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 3900
    .local v7, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3901
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3902
    .local v3, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 3903
    .local v1, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 3904
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 3905
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/Comment;->parseForAlbum(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v2

    .line 3906
    .local v2, "comment":Lcom/perm/kate/api/Comment;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3903
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3908
    .end local v2    # "comment":Lcom/perm/kate/api/Comment;
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_2
    return-object v3
.end method

.method public getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "oid"    # Ljava/lang/Long;
    .param p3, "need_system"    # Ljava/lang/Integer;
    .param p4, "need_covers"    # Ljava/lang/Integer;
    .param p5, "photo_sizes"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Album;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v7, Lcom/perm/kate/api/Params;

    const-string v10, "photos.getAlbums"

    invoke-direct {v7, v10}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 497
    .local v7, "params":Lcom/perm/kate/api/Params;
    const-string v10, "owner_id"

    invoke-virtual {v7, v10, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 498
    const-string v10, "album_ids"

    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v10, "need_system"

    invoke-virtual {v7, v10, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    const-string v10, "need_covers"

    move-object/from16 v0, p4

    invoke-virtual {v7, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 501
    const-string v10, "photo_sizes"

    move-object/from16 v0, p5

    invoke-virtual {v7, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 502
    invoke-direct {p0, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v9

    .line 503
    .local v9, "root":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v2, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Album;>;"
    const-string v10, "response"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 505
    .local v8, "response":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 506
    .local v3, "array":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 516
    :cond_0
    return-object v2

    .line 508
    :cond_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 509
    .local v4, "category_count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 510
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 511
    .local v6, "o":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/perm/kate/api/Album;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object v1

    .line 512
    .local v1, "a":Lcom/perm/kate/api/Album;
    iget-object v10, v1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v11, "DELETED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 509
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "target_id"    # J
    .param p3, "vid"    # Ljava/lang/Long;
    .param p4, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3414
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v5, "video.getAlbumsByVideo"

    invoke-direct {v3, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3415
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v5, "target_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3416
    const-string v5, "owner_id"

    invoke-virtual {v3, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3417
    const-string v5, "video_id"

    invoke-virtual {v3, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3418
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3419
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3420
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3421
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 3422
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3423
    :cond_0
    return-object v2
.end method

.method public getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "extended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 557
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "photos.getAll"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 558
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 559
    const-string v5, "offset"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string v5, "count"

    invoke-virtual {v1, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    const-string v6, "extended"

    if-eqz p4, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 562
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 563
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 564
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 565
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 566
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 568
    :goto_1
    return-object v2

    .line 561
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "root":Lorg/json/JSONObject;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 567
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "response":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 568
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_1
.end method

.method public getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p5, "force_http"    # Z
    .param p6, "captcha_key"    # Ljava/lang/String;
    .param p7, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1010
    .local p4, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "audio.get"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v1, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_0

    .line 1012
    const-string v4, "owner_id"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1013
    :cond_0
    if-eqz p2, :cond_1

    .line 1014
    const-string v4, "owner_id"

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1015
    :cond_1
    const-string v4, "audio_ids"

    invoke-virtual {p0, p4}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const-string v4, "album_id"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1017
    invoke-direct {p0, v1, p5}, Lcom/perm/kate/api/Api;->addHttps(Lcom/perm/kate/api/Params;Z)V

    .line 1018
    invoke-direct {p0, p6, p7, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1019
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1020
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1021
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1022
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2563
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "audio.getAlbums"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2564
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-virtual {v2, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2565
    const-string v5, "count"

    invoke-virtual {v2, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2566
    const-string v5, "offset"

    invoke-virtual {v2, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2567
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2568
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2569
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2570
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/AudioAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2571
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    return-object v0
.end method

.method public getAudioById(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "audios"    # Ljava/lang/String;
    .param p2, "force_http"    # Z
    .param p3, "captcha_key"    # Ljava/lang/String;
    .param p4, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1039
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "audio.getById"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "audios"

    invoke-virtual {v1, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-direct {p0, v1, p2}, Lcom/perm/kate/api/Api;->addHttps(Lcom/perm/kate/api/Params;Z)V

    .line 1042
    invoke-direct {p0, p3, p4, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1044
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 1045
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1046
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getAudioPopular(ZLjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "force_http"    # Z
    .param p2, "genre_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2587
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "audio.getPopular"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2588
    .local v1, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v1, p1}, Lcom/perm/kate/api/Api;->addHttps(Lcom/perm/kate/api/Params;Z)V

    .line 2590
    const-string v3, "genre_id"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2593
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2594
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2595
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getAudioRecommendations(ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "force_http"    # Z
    .param p2, "target_audio"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2576
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "audio.getRecommendations"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2577
    .local v1, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v1, p1}, Lcom/perm/kate/api/Api;->addHttps(Lcom/perm/kate/api/Params;Z)V

    .line 2578
    const-string v4, "target_audio"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2580
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2581
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2582
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getAudioUploadServer()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1192
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "audio.getUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1194
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1195
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getBanned(ZLjava/lang/String;)Lcom/perm/kate/api/BannArg;
    .locals 5
    .param p1, "is_extended"    # Z
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2704
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "newsfeed.getBanned"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2705
    .local v1, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_0

    .line 2706
    const-string v3, "extended"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_0
    const-string v3, "fields"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2709
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2710
    .local v0, "object":Lorg/json/JSONObject;
    invoke-static {v0, p1}, Lcom/perm/kate/api/BannArg;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/BannArg;

    move-result-object v3

    return-object v3
.end method

.method public getBlackList(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "offset"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2828
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "account.getBanned"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2829
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v1, "first_name,last_name,photo_100,online"

    .line 2830
    .local v1, "fields":Ljava/lang/String;
    const-string v5, "fields"

    invoke-virtual {v2, v5, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    const-string v5, "offset"

    invoke-virtual {v2, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2832
    const-string v5, "count"

    invoke-virtual {v2, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2833
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2834
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2835
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2836
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    return-object v5
.end method

.method public getChat(JLjava/lang/String;)Lcom/perm/kate/api/Chat;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3293
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "messages.getChat"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3294
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3295
    const-string v3, "fields"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3296
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3297
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3298
    .local v0, "o":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/perm/kate/api/Chat;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Chat;

    move-result-object v3

    return-object v3
.end method

.method public getChatUsers(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2446
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "messages.getChatUsers"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2447
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2448
    const-string v3, "fields"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2449
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2450
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2451
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getCities(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "cids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 264
    :cond_0
    const/4 v2, 0x0

    .line 277
    :cond_1
    return-object v2

    .line 265
    :cond_2
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v7, "database.getCitiesById"

    invoke-direct {v5, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 266
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v7, "city_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 268
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 269
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v2, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    if-eqz v0, :cond_1

    .line 271
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 272
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 273
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/City;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;

    move-result-object v1

    .line 274
    .local v1, "c":Lcom/perm/kate/api/City;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getCitiesByCountry(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "country"    # I
    .param p2, "q"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v8, "database.getCities"

    invoke-direct {v5, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 245
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v8, "country_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v8, "q"

    invoke-virtual {v5, v8, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 248
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 249
    .local v6, "response":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 250
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v2, "cities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    if-eqz v0, :cond_0

    .line 252
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_0

    .line 253
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 254
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/City;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;

    move-result-object v1

    .line 255
    .local v1, "c":Lcom/perm/kate/api/City;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "c":Lcom/perm/kate/api/City;
    .end local v3    # "i":I
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v2
.end method

.method public getCounters(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Counters;
    .locals 4
    .param p1, "captcha_key"    # Ljava/lang/String;
    .param p2, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2313
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "account.getCounters"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2314
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2315
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2316
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2317
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/Counters;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Counters;

    move-result-object v3

    return-object v3
.end method

.method public getCountries(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Country;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "cids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_2

    .line 315
    :cond_0
    const/4 v3, 0x0

    .line 328
    :cond_1
    return-object v3

    .line 316
    :cond_2
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v9, "database.getCountriesById"

    invoke-direct {v6, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 317
    .local v6, "params":Lcom/perm/kate/api/Params;
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "str_cids":Ljava/lang/String;
    const-string v9, "country_ids"

    invoke-virtual {v6, v9, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 320
    .local v7, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 321
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v3, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Country;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 323
    .local v2, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 324
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 325
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/Country;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Country;

    move-result-object v1

    .line 326
    .local v1, "c":Lcom/perm/kate/api/Country;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCountriesByCode(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "need_full"    # Ljava/lang/Integer;
    .param p2, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Country;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v9, "database.getCountries"

    invoke-direct {v6, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 295
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-string v9, "need_all"

    invoke-virtual {v6, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    const-string v9, "code"

    invoke-virtual {v6, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 298
    const-string v9, "count"

    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    :cond_0
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 300
    .local v8, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 301
    .local v7, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 302
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v3, "countries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Country;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 304
    .local v2, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 305
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 306
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/Country;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Country;

    move-result-object v1

    .line 307
    .local v1, "c":Lcom/perm/kate/api/Country;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "c":Lcom/perm/kate/api/Country;
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_1
    return-object v3
.end method

.method public getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2653
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "docs.get"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2654
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2655
    const-string v4, "count"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2656
    const-string v4, "offset"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2657
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2658
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2659
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2660
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getDocsById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "docs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3957
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "docs.getById"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3958
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "docs"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3960
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3961
    .local v1, "response":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public getFaveLinks(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Link;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2402
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v8, "fave.getLinks"

    invoke-direct {v5, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2403
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v8, "count"

    invoke-virtual {v5, v8, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2404
    const-string v8, "offset"

    invoke-virtual {v5, v8, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2405
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 2406
    .local v7, "root":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2407
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Link;>;"
    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2408
    .local v6, "response":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2409
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 2416
    :cond_0
    return-object v1

    .line 2411
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 2412
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2413
    .local v3, "jlink":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/Link;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v4

    .line 2414
    .local v4, "link":Lcom/perm/kate/api/Link;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2411
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2344
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "fave.getPhotos"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2345
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "count"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2346
    const-string v5, "offset"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2347
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2348
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2349
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2350
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 2351
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2353
    :goto_0
    return-object v2

    .line 2352
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2353
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_0
.end method

.method public getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2377
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v9, "fave.getPosts"

    invoke-direct {v4, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2379
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v9, "count"

    invoke-virtual {v4, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2380
    const-string v9, "offset"

    invoke-virtual {v4, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2381
    const-string v9, "photo_sizes"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2382
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2383
    .local v6, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2384
    .local v5, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2388
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    .local v8, "wmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    if-nez v0, :cond_1

    .line 2397
    :cond_0
    return-object v8

    .line 2391
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2392
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2393
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2394
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v7

    .line 2395
    .local v7, "wm":Lcom/perm/kate/api/WallMessage;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "fields"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2323
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v9, "fave.getUsers"

    invoke-direct {v4, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2324
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v9, "fields"

    invoke-virtual {v4, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    const-string v9, "count"

    invoke-virtual {v4, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2326
    const-string v9, "offset"

    invoke-virtual {v4, v9, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2327
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2328
    .local v6, "root":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2329
    .local v8, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    const-string v9, "response"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2330
    .local v5, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2331
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 2339
    :cond_0
    return-object v8

    .line 2333
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2334
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2335
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2336
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/User;->parseFromFave(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v7

    .line 2337
    .local v7, "u":Lcom/perm/kate/api/User;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2358
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v8, "fave.getVideos"

    invoke-direct {v3, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2359
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v8, "count"

    invoke-virtual {v3, v8, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2360
    const-string v8, "offset"

    invoke-virtual {v3, v8, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2361
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2362
    .local v5, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2363
    .local v4, "response":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2364
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2365
    .local v7, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v0, :cond_0

    .line 2366
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 2367
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 2368
    .local v2, "o":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v6

    .line 2369
    .local v6, "video":Lcom/perm/kate/api/Video;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2366
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2372
    .end local v1    # "i":I
    .end local v2    # "o":Lorg/json/JSONObject;
    .end local v6    # "video":Lcom/perm/kate/api/Video;
    :cond_0
    return-object v7
.end method

.method public getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "fields"    # Ljava/lang/String;
    .param p5, "name_case"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1835
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "users.getFollowers"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "user_id"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1837
    if-lez p2, :cond_0

    .line 1838
    const-string v4, "offset"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1839
    :cond_0
    if-lez p3, :cond_1

    .line 1840
    const-string v4, "count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1842
    :cond_1
    if-nez p4, :cond_2

    .line 1843
    const-string p4, "first_name,last_name,photo_100,online"

    .line 1844
    :cond_2
    const-string v4, "fields"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    const-string v4, "name_case"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1847
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1848
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1849
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "lid"    # Ljava/lang/Integer;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v11, "friends.get"

    invoke-direct {v6, v11}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 355
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-string v11, "fields"

    invoke-virtual {v6, v11, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v11, "user_id"

    invoke-virtual {v6, v11, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    const-string v11, "list_id"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 360
    if-nez p3, :cond_0

    .line 361
    const-string v11, "order"

    const-string v12, "hints"

    invoke-virtual {v6, v11, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v1, v6}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 364
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 365
    .local v8, "root":Lorg/json/JSONObject;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v10, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    const-string v11, "response"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 367
    .local v7, "response":Lorg/json/JSONObject;
    const-string v11, "items"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 369
    .local v2, "array":Lorg/json/JSONArray;
    if-nez v2, :cond_2

    .line 377
    :cond_1
    return-object v10

    .line 371
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 372
    .local v3, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 373
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 374
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v9

    .line 375
    .local v9, "u":Lcom/perm/kate/api/User;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getGames()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Game;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3129
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v9, "apps.getCatalog"

    invoke-direct {v6, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3130
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-string v9, "platform"

    const-string v10, "android"

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    const-string v9, "return_friends"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3132
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 3133
    .local v8, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 3134
    .local v7, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3135
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3136
    .local v3, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Game;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 3137
    .local v1, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 3138
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 3139
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/Game;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Game;

    move-result-object v2

    .line 3140
    .local v2, "g":Lcom/perm/kate/api/Game;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3137
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3142
    .end local v2    # "g":Lcom/perm/kate/api/Game;
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method

.method public getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Long;
    .param p3, "count"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GiftItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3448
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v6, "gifts.get"

    invoke-direct {v3, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3449
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v6, "user_id"

    invoke-virtual {v3, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3450
    const-string v6, "offset"

    invoke-virtual {v3, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3451
    const-string v6, "count"

    invoke-virtual {v3, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3452
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 3453
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3454
    .local v1, "gifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3455
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3457
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 3460
    .end local v1    # "gifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    .local v2, "gifts":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    :goto_0
    return-object v2

    .line 3459
    .end local v2    # "gifts":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    .restart local v1    # "gifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/api/GiftItem;->parseGifts(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 3460
    .restart local v2    # "gifts":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GiftItem;>;"
    goto :goto_0
.end method

.method public getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "offset"    # Ljava/lang/Long;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "user_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupBanItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2891
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "groups.getBanned"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2892
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2893
    const-string v4, "offset"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2894
    const-string v4, "count"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2895
    const-string v4, "user_id"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2897
    const-string v4, "fields"

    const-string v5, "photo_100"

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2900
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2901
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2902
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/GroupBanItem;->parseAll(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getGroupSettings(J)Lcom/perm/kate/api/GroupSettings;
    .locals 5
    .param p1, "group_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3327
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "groups.getSettings"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3328
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3329
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3330
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3331
    .local v0, "o":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/perm/kate/api/GroupSettings;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupSettings;

    move-result-object v3

    return-object v3
.end method

.method public getGroupTopicComments(JJIIIIZLjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 17
    .param p1, "gid"    # J
    .param p3, "tid"    # J
    .param p5, "photo_sizes"    # I
    .param p6, "extended"    # I
    .param p7, "count"    # I
    .param p8, "offset"    # I
    .param p9, "reverse_order"    # Z
    .param p10, "start_comment_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2089
    new-instance v7, Lcom/perm/kate/api/Params;

    const-string v14, "board.getComments"

    invoke-direct {v7, v14}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v7, "params":Lcom/perm/kate/api/Params;
    const-string v14, "group_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2091
    const-string v14, "topic_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2092
    const/4 v14, 0x1

    move/from16 v0, p5

    if-ne v0, v14, :cond_0

    .line 2093
    const-string v14, "photo_sizes"

    const-string v15, "1"

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    :cond_0
    const/4 v14, 0x1

    move/from16 v0, p6

    if-ne v0, v14, :cond_1

    .line 2095
    const-string v14, "extended"

    const-string v15, "1"

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    :cond_1
    if-lez p7, :cond_2

    .line 2097
    const-string v14, "count"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2098
    :cond_2
    if-lez p8, :cond_3

    .line 2099
    const-string v14, "offset"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2100
    :cond_3
    if-eqz p9, :cond_4

    .line 2101
    const-string v14, "sort"

    const-string v15, "desc"

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    :cond_4
    const-string v14, "start_comment_id"

    move-object/from16 v0, p10

    invoke-virtual {v7, v14, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2103
    const-string v14, "need_likes"

    const-string v15, "1"

    invoke-virtual {v7, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v12

    .line 2105
    .local v12, "root":Lorg/json/JSONObject;
    const-string v14, "response"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 2106
    .local v10, "response":Lorg/json/JSONObject;
    new-instance v11, Lcom/perm/kate/api/CommentList;

    invoke-direct {v11}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 2107
    .local v11, "result":Lcom/perm/kate/api/CommentList;
    if-eqz v10, :cond_6

    .line 2108
    const-string v14, "items"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 2109
    .local v4, "comments":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 2110
    .local v3, "category_count":I
    const-string v14, "count"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v11, Lcom/perm/kate/api/CommentList;->count:I

    .line 2111
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 2112
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 2113
    .local v6, "o":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/perm/kate/api/Comment;->parseTopicComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v2

    .line 2114
    .local v2, "c":Lcom/perm/kate/api/Comment;
    iget-object v14, v11, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2111
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2119
    .end local v2    # "c":Lcom/perm/kate/api/Comment;
    .end local v6    # "o":Lorg/json/JSONObject;
    :cond_5
    if-nez p8, :cond_6

    .line 2120
    :try_start_0
    const-string v14, "poll"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 2121
    .local v9, "poll_json":Lorg/json/JSONObject;
    if-eqz v9, :cond_6

    .line 2122
    invoke-static {v9}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object v8

    .line 2123
    .local v8, "poll":Lcom/perm/kate/api/VkPoll;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iput-object v14, v8, Lcom/perm/kate/api/VkPoll;->topic_id:Ljava/lang/Long;

    .line 2124
    new-instance v1, Lcom/perm/kate/api/Attachment;

    invoke-direct {v1}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 2125
    .local v1, "attachment":Lcom/perm/kate/api/Attachment;
    iput-object v8, v1, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 2126
    const-string v14, "poll"

    iput-object v14, v1, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 2127
    iget-object v14, v11, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 2128
    iget-object v14, v11, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/api/Comment;

    iget-object v14, v14, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2136
    .end local v1    # "attachment":Lcom/perm/kate/api/Attachment;
    .end local v3    # "category_count":I
    .end local v4    # "comments":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v8    # "poll":Lcom/perm/kate/api/VkPoll;
    .end local v9    # "poll_json":Lorg/json/JSONObject;
    :cond_6
    :goto_1
    return-object v11

    .line 2131
    .restart local v3    # "category_count":I
    .restart local v4    # "comments":Lorg/json/JSONArray;
    .restart local v5    # "i":I
    :catch_0
    move-exception v13

    .line 2133
    .local v13, "th":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getGroupTopics(JLjava/lang/Integer;III)Ljava/util/ArrayList;
    .locals 15
    .param p1, "gid"    # J
    .param p3, "order"    # Ljava/lang/Integer;
    .param p4, "extended"    # I
    .param p5, "count"    # I
    .param p6, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupTopic;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2058
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v10, "board.getTopics"

    invoke-direct {v5, v10}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2059
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v10, "group_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2060
    const-string v10, "order"

    move-object/from16 v0, p3

    invoke-virtual {v5, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2061
    const/4 v10, 0x1

    move/from16 v0, p4

    if-ne v0, v10, :cond_0

    .line 2062
    const-string v10, "extended"

    const-string v11, "1"

    invoke-virtual {v5, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    :cond_0
    if-lez p5, :cond_1

    .line 2064
    const-string v10, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2065
    :cond_1
    if-lez p6, :cond_2

    .line 2066
    const-string v10, "offset"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2067
    :cond_2
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 2068
    .local v8, "root":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    const-string v10, "response"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 2070
    .local v6, "response":Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    .line 2071
    const-string v10, "items"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 2072
    .local v9, "topics":Lorg/json/JSONArray;
    if-eqz v9, :cond_4

    .line 2073
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_4

    .line 2074
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 2075
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/GroupTopic;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;

    move-result-object v2

    .line 2077
    .local v2, "gt":Lcom/perm/kate/api/GroupTopic;
    iget-wide v10, v2, Lcom/perm/kate/api/GroupTopic;->tid:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 2073
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2079
    :cond_3
    move-wide/from16 v0, p1

    iput-wide v0, v2, Lcom/perm/kate/api/GroupTopic;->gid:J

    .line 2080
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2084
    .end local v2    # "gt":Lcom/perm/kate/api/GroupTopic;
    .end local v3    # "i":I
    .end local v4    # "o":Lorg/json/JSONObject;
    .end local v9    # "topics":Lorg/json/JSONArray;
    :cond_4
    return-object v7
.end method

.method public getGroups(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p2, "domain"    # Ljava/lang/String;
    .param p3, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 2207
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2221
    :cond_0
    :goto_0
    return-object v4

    .line 2209
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    if-nez v5, :cond_2

    if-eqz p2, :cond_0

    .line 2211
    :cond_2
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "groups.getById"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2213
    .local v1, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2214
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    .line 2217
    .local v3, "str_uids":Ljava/lang/String;
    :goto_1
    const-string v4, "group_ids"

    invoke-virtual {v1, v4, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v4, "fields"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    const/4 v4, 0x1

    invoke-direct {p0, v1, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 2220
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2221
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 2216
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "root":Lorg/json/JSONObject;
    .end local v3    # "str_uids":Ljava/lang/String;
    :cond_3
    move-object v3, p2

    .restart local v3    # "str_uids":Ljava/lang/String;
    goto :goto_1
.end method

.method public getGroupsInvites(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "offset"    # Ljava/lang/Long;
    .param p2, "count"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2951
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v6, "groups.getInvites"

    invoke-direct {v3, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2952
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v6, "offset"

    invoke-virtual {v3, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2953
    const-string v6, "count"

    invoke-virtual {v3, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2954
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2955
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2956
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2957
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2959
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 2962
    .end local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .local v2, "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :goto_0
    return-object v2

    .line 2961
    .end local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .restart local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 2962
    .restart local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    goto :goto_0
.end method

.method public getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "sort"    # Ljava/lang/String;
    .param p6, "filter"    # Ljava/lang/String;
    .param p7, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2541
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "groups.getMembers"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2542
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2543
    const-string v4, "count"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2544
    const-string v4, "offset"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2545
    const-string v4, "sort"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    const-string v4, "filter"

    invoke-virtual {v1, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    const-string v4, "fields"

    invoke-virtual {v1, v4, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2549
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2550
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2551
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "item_type"    # Ljava/lang/String;
    .param p2, "item_id"    # J
    .param p4, "owner_id"    # J
    .param p6, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 423
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v9, "execute"

    invoke-direct {v5, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 424
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v2, "return([API.likes.getList({\"item_id\":%1$d,\"owner_id\":%2$d,\"type\":\"%3$s\",\"v\":\"%4$s\",\"filter\":\"%5$s\",\"friends_only\":1}),API.likes.getList({\"item_id\":%1$d,\"owner_id\":%2$d,\"type\":\"%3$s\",\"v\":\"%4$s\",\"filter\":\"%5$s\"})]);"

    .line 430
    .local v2, "code":Ljava/lang/String;
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    const-string v11, "5.63"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object p6, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 431
    const-string v9, "code"

    invoke-virtual {v5, v9, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 446
    .local v8, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 447
    .local v7, "response":Lorg/json/JSONArray;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 448
    .local v4, "friend_likes_json":Lorg/json/JSONObject;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 450
    .local v1, "all_likes_json":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v3

    .line 451
    .local v3, "friend_likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    .local v0, "all_likes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    return-object v6
.end method

.method public getLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "captcha_key"    # Ljava/lang/String;
    .param p2, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/NewsList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3051
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "newsfeed.getLists"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3052
    .local v1, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, p1, p2, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3053
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 3054
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3055
    .local v2, "response":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/NewsList;->parseLists(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3056
    .local v0, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/NewsList;>;"
    return-object v0
.end method

.method public getLongPollServer(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 9
    .param p1, "captcha_key"    # Ljava/lang/String;
    .param p2, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1734
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v6, "messages.getLongPollServer"

    invoke-direct {v1, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v6, "use_ssl"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    invoke-direct {p0, p1, p2, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1737
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1738
    .local v3, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1739
    .local v2, "response":Lorg/json/JSONObject;
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1740
    .local v0, "key":Ljava/lang/String;
    const-string v6, "server"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1741
    .local v4, "server":Ljava/lang/String;
    const-string v6, "ts"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1742
    .local v5, "ts":Ljava/lang/Long;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    aput-object v4, v6, v8

    const/4 v7, 0x2

    aput-object v5, v6, v7

    return-object v6
.end method

.method public getLyrics(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "audio.getLyrics"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1052
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "lyrics_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1053
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1054
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1055
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3760
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "market.getAlbums"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3761
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3762
    const-string v5, "count"

    invoke-virtual {v2, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3763
    const-string v5, "offset"

    invoke-virtual {v2, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3764
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3765
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3766
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3767
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/MarketAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3768
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketAlbum;>;"
    return-object v0
.end method

.method public getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 9
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "item_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "start_comment_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3788
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v7, "market.getComments"

    invoke-direct {v4, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3789
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v7, "item_id"

    invoke-virtual {v4, v7, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3790
    const-string v7, "owner_id"

    invoke-virtual {v4, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3791
    if-lez p3, :cond_0

    .line 3792
    const-string v7, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3793
    :cond_0
    if-lez p4, :cond_1

    .line 3794
    const-string v7, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3795
    :cond_1
    const-string v7, "start_comment_id"

    invoke-virtual {v4, v7, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3796
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 3797
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 3798
    .local v5, "response":Lorg/json/JSONObject;
    const-string v7, "items"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3799
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Lcom/perm/kate/api/CommentList;

    invoke-direct {v2}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 3800
    .local v2, "commnets":Lcom/perm/kate/api/CommentList;
    const-string v7, "count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/perm/kate/api/CommentList;->count:I

    .line 3801
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 3802
    .local v1, "category_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3803
    iget-object v8, v2, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3802
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3804
    :cond_2
    return-object v2
.end method

.method public getMarketItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "item_ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3859
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "market.getById"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3860
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "item_ids"

    invoke-virtual {v2, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3861
    const-string v5, "extended"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3862
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3863
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3864
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3865
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/MarketItem;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3866
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    return-object v0
.end method

.method public getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/MarketItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3773
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "market.get"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3774
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3775
    const-string v5, "album_id"

    invoke-virtual {v2, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3776
    const-string v5, "count"

    invoke-virtual {v2, v5, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3777
    const-string v5, "offset"

    invoke-virtual {v2, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3778
    const-string v5, "extended"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3779
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3780
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3781
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3782
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/MarketItem;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3783
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/MarketItem;>;"
    return-object v0
.end method

.method public getMessages(JZILjava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "time_offset"    # J
    .param p3, "is_out"    # Z
    .param p4, "count"    # I
    .param p5, "filters"    # Ljava/lang/String;
    .param p6, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZI",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v11, Lcom/perm/kate/api/Params;

    const-string v2, "messages.get"

    invoke-direct {v11, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 771
    .local v11, "params":Lcom/perm/kate/api/Params;
    if-eqz p3, :cond_0

    .line 772
    const-string v2, "out"

    const-string v4, "1"

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-eqz v2, :cond_1

    .line 774
    const-string v2, "time_offset"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 775
    :cond_1
    if-eqz p4, :cond_2

    .line 776
    const-string v2, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 777
    :cond_2
    const-string v2, "preview_length"

    const-string v4, "0"

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v2, "filters"

    move-object/from16 v0, p5

    invoke-virtual {v11, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string v2, "offset"

    move-object/from16 v0, p6

    invoke-virtual {v11, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    invoke-direct {p0, v11}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v13

    .line 781
    .local v13, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 782
    .local v12, "response":Lorg/json/JSONObject;
    const-string v2, "items"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 783
    .local v3, "array":Lorg/json/JSONArray;
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;ZJZJ)Ljava/util/ArrayList;

    move-result-object v10

    .line 784
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    return-object v10
.end method

.method public getMessagesById(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 2302
    new-instance v10, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getById"

    invoke-direct {v10, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2303
    .local v10, "params":Lcom/perm/kate/api/Params;
    const-string v1, "message_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v1, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    invoke-direct {p0, v10}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v12

    .line 2305
    .local v12, "root":Lorg/json/JSONObject;
    const-string v1, "response"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2306
    .local v11, "response":Lorg/json/JSONObject;
    const-string v1, "items"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .local v2, "array":Lorg/json/JSONArray;
    move-object v1, p0

    move v6, v3

    move-wide v7, v4

    .line 2307
    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;ZJZJ)Ljava/util/ArrayList;

    move-result-object v9

    .line 2308
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    return-object v9
.end method

.method public getMessagesDialogs(JILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "offset"    # J
    .param p3, "count"    # I
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 808
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "messages.getDialogs"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 809
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-eqz v5, :cond_0

    .line 810
    const-string v5, "offset"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 811
    :cond_0
    if-eqz p3, :cond_1

    .line 812
    const-string v5, "count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 813
    :cond_1
    const-string v5, "preview_length"

    const-string v6, "0"

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-direct {p0, p4, p5, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 815
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 816
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 817
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 818
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 819
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    return-object v1
.end method

.method public getMessagesHistory(JJJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "me"    # J
    .param p7, "offset"    # Ljava/lang/Long;
    .param p8, "count"    # I
    .param p9, "start_message_id"    # Ljava/lang/Long;
    .param p10, "rev"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 789
    new-instance v11, Lcom/perm/kate/api/Params;

    const-string v2, "messages.getHistory"

    invoke-direct {v11, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 790
    .local v11, "params":Lcom/perm/kate/api/Params;
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_1

    .line 791
    const-string v2, "user_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 794
    :goto_0
    const-string v2, "offset"

    move-object/from16 v0, p7

    invoke-virtual {v11, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 795
    if-eqz p8, :cond_0

    .line 796
    const-string v2, "count"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    :cond_0
    const-string v2, "start_message_id"

    move-object/from16 v0, p9

    invoke-virtual {v11, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 798
    const-string v2, "rev"

    move-object/from16 v0, p10

    invoke-virtual {v11, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 799
    invoke-direct {p0, v11}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v13

    .line 800
    .local v13, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 801
    .local v12, "response":Lorg/json/JSONObject;
    const-string v2, "items"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 802
    .local v3, "array":Lorg/json/JSONArray;
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    const/4 v4, 0x1

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v2, p3, v6

    if-lez v2, :cond_3

    const/4 v7, 0x1

    :goto_2
    move-object v2, p0

    move-wide/from16 v5, p1

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;ZJZJ)Ljava/util/ArrayList;

    move-result-object v10

    .line 803
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    return-object v10

    .line 793
    .end local v3    # "array":Lorg/json/JSONArray;
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    .end local v12    # "response":Lorg/json/JSONObject;
    .end local v13    # "root":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "chat_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v11, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 802
    .restart local v3    # "array":Lorg/json/JSONArray;
    .restart local v12    # "response":Lorg/json/JSONObject;
    .restart local v13    # "root":Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getMutual(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "target_uid"    # Ljava/lang/Long;
    .param p2, "source_uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 476
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v7, "friends.getMutual"

    invoke-direct {v4, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 477
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v7, "target_uid"

    invoke-virtual {v4, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 478
    const-string v7, "source_uid"

    invoke-virtual {v4, v7, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 479
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 480
    .local v5, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 481
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 483
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 484
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 485
    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 486
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 487
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/Long;
    :cond_1
    return-object v6
.end method

.method public getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "offset"    # Ljava/lang/Integer;
    .param p2, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3652
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "photos.getNewTags"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3653
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "count"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3654
    const-string v5, "offset"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3655
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3656
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3657
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3658
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 3659
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3661
    :goto_0
    return-object v2

    .line 3660
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3661
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_0
.end method

.method public getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 4
    .param p1, "start_time"    # Ljava/lang/Long;
    .param p2, "count"    # J
    .param p4, "end_time"    # Ljava/lang/Long;
    .param p5, "from"    # Ljava/lang/String;
    .param p6, "source_ids"    # Ljava/lang/String;
    .param p7, "filters"    # Ljava/lang/String;
    .param p8, "max_photos"    # Ljava/lang/Integer;
    .param p9, "captcha_key"    # Ljava/lang/String;
    .param p10, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 969
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "newsfeed.get"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 970
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "filters"

    invoke-virtual {v0, v2, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    const-string v2, "start_time"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 972
    const-string v2, "end_time"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 973
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 974
    const-string v2, "count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 975
    :cond_0
    const-string v2, "start_from"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string v2, "source_ids"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string v2, "max_photos"

    invoke-virtual {v0, v2, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 978
    const-string v2, "photo_sizes"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 980
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 981
    .local v1, "root":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object v2

    return-object v2
.end method

.method public getNewsComments()Lcom/perm/kate/api/Newsfeed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1000
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "newsfeed.getComments"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "last_comments_count"

    const-string v3, "3"

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string v2, "count"

    const-string v3, "50"

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1004
    .local v1, "root":Lorg/json/JSONObject;
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object v2

    return-object v2
.end method

.method public getNoteComments(Ljava/lang/Long;Ljava/lang/Long;II)Lcom/perm/kate/api/CommentList;
    .locals 11
    .param p1, "nid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 599
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v9, "notes.getComments"

    invoke-direct {v6, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 600
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-string v9, "note_id"

    invoke-virtual {v6, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 601
    const-string v9, "owner_id"

    invoke-virtual {v6, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 602
    if-lez p4, :cond_0

    .line 603
    const-string v9, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 604
    :cond_0
    if-lez p3, :cond_1

    .line 605
    const-string v9, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 606
    :cond_1
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 607
    .local v8, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 608
    .local v7, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 609
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Lcom/perm/kate/api/CommentList;

    invoke-direct {v3}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 610
    .local v3, "commnets":Lcom/perm/kate/api/CommentList;
    const-string v9, "count"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v3, Lcom/perm/kate/api/CommentList;->count:I

    .line 611
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 612
    .local v1, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 613
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 614
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/Comment;->parseNoteComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v2

    .line 615
    .local v2, "comment":Lcom/perm/kate/api/Comment;
    iget-object v9, v3, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v2    # "comment":Lcom/perm/kate/api/Comment;
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_2
    return-object v3
.end method

.method public getNotes(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "uid"    # Ljava/lang/Long;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "offset"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Note;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1139
    .local p2, "nids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v8, "notes.get"

    invoke-direct {v5, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v8, "user_id"

    invoke-virtual {v5, v8, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1141
    const-string v8, "note_ids"

    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v8, "sort"

    invoke-virtual {v5, v8, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v8, "count"

    invoke-virtual {v5, v8, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1144
    const-string v8, "offset"

    invoke-virtual {v5, v8, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1145
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1146
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1147
    .local v6, "response":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1148
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    .local v3, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Note;>;"
    if-eqz v0, :cond_0

    .line 1150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1151
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1152
    .local v4, "o":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/perm/kate/api/Note;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;

    move-result-object v2

    .line 1153
    .local v2, "note":Lcom/perm/kate/api/Note;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1156
    .end local v1    # "i":I
    .end local v2    # "note":Lcom/perm/kate/api/Note;
    .end local v4    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v3
.end method

.method public getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/perm/kate/api/Notifications;
    .locals 4
    .param p1, "filters"    # Ljava/lang/String;
    .param p2, "start_time"    # Ljava/lang/Long;
    .param p3, "end_time"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2289
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "notifications.get"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2290
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "filters"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v3, "start_time"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2292
    const-string v3, "end_time"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2293
    const-string v3, "offset"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2294
    const-string v3, "count"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2295
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2296
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2297
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/Notifications;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notifications;

    move-result-object v3

    return-object v3
.end method

.method public getOnlineFriends(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "uid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 382
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v7, "friends.getOnline"

    invoke-direct {v4, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 383
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v7, "user_id"

    invoke-virtual {v4, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 384
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 385
    .local v5, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 386
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v6, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 389
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 390
    invoke-virtual {v0, v2, v10, v11}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 391
    .local v3, "id":Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 392
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "category_count":I
    .end local v2    # "i":I
    .end local v3    # "id":Ljava/lang/Long;
    :cond_1
    return-object v6
.end method

.method public getPageUrl(JLjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "owner_id"    # J
    .param p3, "page_id"    # Ljava/lang/Long;
    .param p4, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3925
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "pages.get"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3926
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3927
    const-string v3, "page_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3928
    const-string v3, "title"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3929
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3930
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3931
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "view_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 12
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "start_comment_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v7, Lcom/perm/kate/api/Params;

    const-string v10, "photos.getComments"

    invoke-direct {v7, v10}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 574
    .local v7, "params":Lcom/perm/kate/api/Params;
    const-string v10, "photo_id"

    invoke-virtual {v7, v10, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    const-string v10, "owner_id"

    invoke-virtual {v7, v10, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 576
    if-lez p4, :cond_0

    .line 577
    const-string v10, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    :cond_0
    if-lez p3, :cond_1

    .line 579
    const-string v10, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 580
    :cond_1
    const-string v10, "sort"

    const-string v11, "asc"

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v10, "need_likes"

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v10, "start_comment_id"

    move-object/from16 v0, p5

    invoke-virtual {v7, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 583
    invoke-direct {p0, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v9

    .line 584
    .local v9, "root":Lorg/json/JSONObject;
    new-instance v4, Lcom/perm/kate/api/CommentList;

    invoke-direct {v4}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 585
    .local v4, "commnets":Lcom/perm/kate/api/CommentList;
    const-string v10, "response"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 586
    .local v8, "response":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 587
    .local v1, "array":Lorg/json/JSONArray;
    const-string v10, "count"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/perm/kate/api/CommentList;->count:I

    .line 588
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 589
    .local v2, "category_count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 590
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 591
    .local v6, "o":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v3

    .line 592
    .local v3, "comment":Lcom/perm/kate/api/Comment;
    iget-object v10, v4, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 594
    .end local v3    # "comment":Lcom/perm/kate/api/Comment;
    .end local v6    # "o":Lorg/json/JSONObject;
    :cond_2
    return-object v4
.end method

.method public getPhotoCountsByIdWithExecute(Ljava/lang/String;Z)Lcom/perm/kate/api/Photo;
    .locals 7
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "get_user_id"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1497
    if-eqz p2, :cond_0

    const-string v1, ",\"user_id\":p@.user_id"

    .line 1498
    .local v1, "b":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var p=API.photos.getById({\"photos\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"extended\":1}); return {\"pid\":p@.id,\"likes\":p@.likes,\"comments\":p@.comments,\"can_comment\":p@.can_comment,\"tags\":p@.tags"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "};"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1499
    .local v2, "code":Ljava/lang/String;
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v5, "execute"

    invoke-direct {v3, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1500
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v5, "code"

    invoke-virtual {v3, v5, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1502
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1503
    .local v0, "array":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 1504
    const/4 v5, 0x0

    .line 1505
    :goto_1
    return-object v5

    .line 1497
    .end local v0    # "array":Lorg/json/JSONObject;
    .end local v1    # "b":Ljava/lang/String;
    .end local v2    # "code":Ljava/lang/String;
    .end local v3    # "params":Lcom/perm/kate/api/Params;
    .end local v4    # "root":Lorg/json/JSONObject;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 1505
    .restart local v0    # "array":Lorg/json/JSONObject;
    .restart local v1    # "b":Ljava/lang/String;
    .restart local v2    # "code":Ljava/lang/String;
    .restart local v3    # "params":Lcom/perm/kate/api/Params;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/api/Photo;->parseCounts(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v5

    goto :goto_1
.end method

.method public getPhotoTagsById(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "pid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PhotoTag;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2009
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "photos.getTags"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2010
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2011
    const-string v4, "photo_id"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2012
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2013
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2014
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 2015
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2017
    :goto_0
    return-object v2

    .line 2016
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/perm/kate/api/Api;->parsePhotoTags(Lorg/json/JSONArray;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2017
    .local v2, "photo_tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PhotoTag;>;"
    goto :goto_0
.end method

.method public getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "aid"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "rev"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 521
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "photos.get"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 523
    const-string v5, "album_id"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 524
    const-string v5, "extended"

    const-string v6, "1"

    invoke-virtual {v1, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v5, "offset"

    invoke-virtual {v1, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v5, "limit"

    invoke-virtual {v1, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    if-eqz p5, :cond_0

    .line 528
    const-string v5, "rev"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    :cond_0
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 530
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 531
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 532
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 533
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 535
    :goto_0
    return-object v2

    .line 534
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 535
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_0
.end method

.method public getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "photos"    # Ljava/lang/String;
    .param p2, "extended"    # Ljava/lang/Integer;
    .param p3, "photo_sizes"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1483
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "photos.getById"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "photos"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const-string v4, "extended"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1486
    const-string v4, "photo_sizes"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1488
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1489
    .local v2, "response":Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 1490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    :goto_0
    return-object v1

    .line 1491
    :cond_0
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1492
    .local v1, "photos1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_0
.end method

.method public getPoll(JJJ)Lcom/perm/kate/api/VkPoll;
    .locals 7
    .param p1, "poll_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "topic_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "polls.getById"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1882
    const-string v3, "poll_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1883
    const-wide/16 v4, 0x0

    cmp-long v3, p5, v4

    if-eqz v3, :cond_0

    .line 1884
    const-string v3, "board"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1885
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1886
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1887
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object v3

    return-object v3
.end method

.method public getPollVoters(JJLjava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 11
    .param p1, "poll_id"    # J
    .param p3, "owner_id"    # J
    .param p6, "count"    # Ljava/lang/Long;
    .param p7, "offset"    # Ljava/lang/Long;
    .param p8, "fields"    # Ljava/lang/String;
    .param p9, "topic_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1917
    .local p5, "answer_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v5, Lcom/perm/kate/api/Params;

    const-string v8, "polls.getVoters"

    invoke-direct {v5, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v5, "params":Lcom/perm/kate/api/Params;
    const-string v8, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1919
    const-string v8, "poll_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1920
    const-wide/16 v8, 0x0

    cmp-long v8, p9, v8

    if-eqz v8, :cond_0

    .line 1921
    const-string v8, "board"

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1922
    :cond_0
    const-string v8, "answer_ids"

    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v8, "count"

    move-object/from16 v0, p6

    invoke-virtual {v5, v8, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1924
    const-string v8, "offset"

    move-object/from16 v0, p7

    invoke-virtual {v5, v8, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1925
    const-string v8, "fields"

    move-object/from16 v0, p8

    invoke-virtual {v5, v8, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-direct {p0, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1927
    .local v7, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1928
    .local v6, "response":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1929
    .local v4, "object":Lorg/json/JSONObject;
    const-string v8, "users"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1930
    .local v3, "array2":Lorg/json/JSONObject;
    const-string v8, "items"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1932
    .local v2, "array":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    return-object v8
.end method

.method public getPrivacySettings()Lcom/perm/kate/api/PrivacySettings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3583
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "account.getPrivacySettings"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3584
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3585
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3586
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/PrivacySettings;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySettings;

    move-result-object v3

    return-object v3
.end method

.method public getProducts(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "filters"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "extended"    # Z
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3023
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "store.getProducts"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3024
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "filters"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    const-string v4, "type"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3026
    if-eqz p3, :cond_0

    .line 3027
    const-string v4, "extended"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3028
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3029
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 3030
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3031
    .local v2, "response":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Product;->parseProducts(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3032
    .local v1, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    return-object v1
.end method

.method public getProfileInfo()Lcom/perm/kate/api/ProfileInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2992
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "account.getProfileInfo"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2993
    .local v0, "params":Lcom/perm/kate/api/Params;
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 2994
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2995
    .local v2, "response":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/ProfileInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ProfileInfo;

    move-result-object v1

    .line 2996
    .local v1, "profile":Lcom/perm/kate/api/ProfileInfo;
    return-object v1
.end method

.method public getProfiles(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "name_case"    # Ljava/lang/String;
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "uids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    .local p2, "domains":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 334
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v3

    .line 336
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    :cond_3
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "users.get"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 339
    .local v1, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 340
    const-string v3, "user_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 342
    const-string v3, "user_ids"

    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_5
    const-string v3, "fields"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v3, "name_case"

    invoke-virtual {v1, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-direct {p0, p5, p6, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 346
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 347
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 348
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method public getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 4
    .param p1, "start_time"    # Ljava/lang/Long;
    .param p2, "count"    # J
    .param p4, "end_time"    # Ljava/lang/Long;
    .param p5, "from"    # Ljava/lang/String;
    .param p6, "max_photos"    # Ljava/lang/Integer;
    .param p7, "captcha_key"    # Ljava/lang/String;
    .param p8, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 986
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "newsfeed.getRecommended"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "start_time"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 988
    const-string v2, "end_time"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 989
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 990
    const-string v2, "count"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 991
    :cond_0
    const-string v2, "start_from"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string v2, "max_photos"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    invoke-direct {p0, p7, p8, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 994
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 995
    .local v1, "root":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object v2

    return-object v2
.end method

.method public getRequestsFriends(Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 18
    .param p1, "out"    # Ljava/lang/Integer;
    .param p2, "is_suggested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1784
    new-instance v9, Lcom/perm/kate/api/Params;

    const-string v14, "friends.getRequests"

    invoke-direct {v9, v14}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1785
    .local v9, "params":Lcom/perm/kate/api/Params;
    const-string v14, "extended"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1786
    const-string v14, "out"

    move-object/from16 v0, p1

    invoke-virtual {v9, v14, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1787
    if-eqz p2, :cond_0

    .line 1788
    const-string v14, "suggested"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1789
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v11

    .line 1790
    .local v11, "root":Lorg/json/JSONObject;
    const-string v14, "response"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 1791
    .local v10, "response":Lorg/json/JSONObject;
    const-string v14, "items"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1792
    .local v2, "array":Lorg/json/JSONArray;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    .local v13, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    if-eqz v2, :cond_3

    .line 1794
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1795
    .local v3, "category_count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_3

    .line 1796
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 1797
    .local v8, "item":Lorg/json/JSONObject;
    if-eqz v8, :cond_2

    .line 1798
    const-string v14, "user_id"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1799
    .local v7, "id":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2

    .line 1800
    const/4 v14, 0x3

    new-array v12, v14, [Ljava/lang/Object;

    .line 1801
    .local v12, "u":[Ljava/lang/Object;
    const/4 v14, 0x0

    aput-object v7, v12, v14

    .line 1802
    const/4 v14, 0x1

    const-string v15, "message"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v14

    .line 1803
    const-string v14, "from"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1804
    .local v5, "from":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 1806
    const/4 v14, 0x2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v12, v14
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :cond_1
    :goto_1
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    .end local v5    # "from":Ljava/lang/String;
    .end local v7    # "id":Ljava/lang/Long;
    .end local v12    # "u":[Ljava/lang/Object;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1807
    .restart local v5    # "from":Ljava/lang/String;
    .restart local v7    # "id":Ljava/lang/Long;
    .restart local v12    # "u":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 1808
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 1816
    .end local v3    # "category_count":I
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "from":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "id":Ljava/lang/Long;
    .end local v8    # "item":Lorg/json/JSONObject;
    .end local v12    # "u":[Ljava/lang/Object;
    :cond_3
    return-object v13
.end method

.method public getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "fields"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3369
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "groups.getRequests"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3370
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3371
    const-string v4, "fields"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    const-string v4, "offset"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3373
    const-string v4, "count"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3374
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3375
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3376
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3377
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getServerTime()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2556
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "utils.getServerTime"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2558
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "group_id"    # Ljava/lang/Long;
    .param p2, "app_id"    # Ljava/lang/Long;
    .param p3, "date_from"    # Ljava/lang/String;
    .param p4, "date_to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PeriodStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3313
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "stats.get"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3314
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3315
    const-string v3, "app_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3316
    const-string v3, "date_from"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3317
    const-string v3, "date_to"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3318
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3319
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 3320
    .local v1, "response":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 3321
    invoke-static {v1}, Lcom/perm/kate/api/PeriodStats;->parsePeriods(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3322
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getStatus(Ljava/lang/Long;Ljava/lang/Long;)Lcom/perm/kate/api/VkStatus;
    .locals 6
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "group_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 911
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "status.get"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 912
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "user_id"

    invoke-virtual {v2, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 913
    const-string v5, "group_id"

    invoke-virtual {v2, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 915
    .local v3, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 916
    .local v1, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/perm/kate/api/VkStatus;

    invoke-direct {v4}, Lcom/perm/kate/api/VkStatus;-><init>()V

    .line 917
    .local v4, "status":Lcom/perm/kate/api/VkStatus;
    if-eqz v1, :cond_0

    .line 918
    const-string v5, "text"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    .line 919
    const-string v5, "audio"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 920
    .local v0, "jaudio":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 921
    invoke-static {v0}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/VkStatus;->audio:Lcom/perm/kate/api/Audio;

    .line 923
    .end local v0    # "jaudio":Lorg/json/JSONObject;
    :cond_0
    return-object v4
.end method

.method public getStickersKeywords()Lcom/perm/kate/api/StickersKeywords;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 4010
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "store.getStickersKeywords"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4011
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "aliases"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4012
    const-string v2, "all_products"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4013
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 4014
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/StickersKeywords;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StickersKeywords;

    move-result-object v2

    return-object v2
.end method

.method public getStockItems(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "extended"    # Z
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3037
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "store.getStockItems"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3038
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "section"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3039
    const-string v4, "type"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    if-eqz p3, :cond_0

    .line 3041
    const-string v4, "extended"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3042
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3043
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v3

    .line 3044
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3045
    .local v2, "response":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Product;->parseStockItems(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3046
    .local v1, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    return-object v1
.end method

.method public getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;)Lcom/perm/kate/api/InterestingPages;
    .locals 5
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "extended"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1821
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "users.getSubscriptions"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "user_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1824
    if-lez p2, :cond_0

    .line 1825
    const-string v3, "offset"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1826
    :cond_0
    if-lez p3, :cond_1

    .line 1827
    const-string v3, "count"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1828
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1829
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1830
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/InterestingPages;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/InterestingPages;

    move-result-object v3

    return-object v3
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2475
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "friends.getSuggestions"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2476
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "filter"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    const-string v4, "fields"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2479
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2480
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2481
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public getUnreadDialogsCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3937
    const-string v0, "return API.messages.getDialogs({\"count\": 0}).unread_dialogs;"

    .line 3938
    .local v0, "code":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3939
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v1, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3940
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3941
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1510
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v6, "groups.get"

    invoke-direct {v3, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1511
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v6, "extended"

    const-string v7, "1"

    invoke-virtual {v3, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    const-string v6, "fields"

    invoke-virtual {v3, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const-string v6, "user_id"

    invoke-virtual {v3, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1514
    const-string v6, "count"

    invoke-virtual {v3, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1515
    const-string v6, "offset"

    invoke-virtual {v3, v6, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1516
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1517
    .local v5, "root":Lorg/json/JSONObject;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1518
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1519
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1521
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    move-object v2, v1

    .line 1524
    .end local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .local v2, "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :goto_0
    return-object v2

    .line 1523
    .end local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .restart local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 1524
    .restart local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    goto :goto_0
.end method

.method public getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "offset"    # Ljava/lang/Integer;
    .param p3, "count"    # Ljava/lang/Integer;
    .param p4, "reverse"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 540
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "photos.getUserPhotos"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 541
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "user_id"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 542
    const-string v7, "sort"

    if-eqz p4, :cond_0

    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    const-string v5, "count"

    invoke-virtual {v1, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 544
    const-string v5, "offset"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 545
    const-string v5, "extended"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 546
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 547
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 548
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 549
    .local v0, "array":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    .line 550
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 552
    :goto_1
    return-object v2

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "root":Lorg/json/JSONObject;
    :cond_0
    move v5, v6

    .line 542
    goto :goto_0

    .line 551
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "response":Lorg/json/JSONObject;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 552
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    goto :goto_1
.end method

.method public getUserVideo(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "user_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v7, "video.getUserVideos"

    invoke-direct {v3, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1089
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v7, "user_id"

    invoke-virtual {v3, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1090
    const-string v7, "count"

    const-string v8, "50"

    invoke-virtual {v3, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1092
    .local v5, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1093
    .local v4, "response":Lorg/json/JSONObject;
    const-string v7, "items"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1094
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v6, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v0, :cond_0

    .line 1096
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1097
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1098
    .local v2, "o":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    .end local v1    # "i":I
    .end local v2    # "o":Lorg/json/JSONObject;
    :cond_0
    return-object v6
.end method

.method public getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;
    .locals 11
    .param p1, "videos"    # Ljava/lang/String;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "album_id"    # Ljava/lang/Long;
    .param p4, "width"    # Ljava/lang/String;
    .param p5, "count"    # Ljava/lang/Long;
    .param p6, "offset"    # Ljava/lang/Long;
    .param p7, "extended"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1061
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v9, "video.get"

    invoke-direct {v4, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v9, "videos"

    invoke-virtual {v4, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string v9, "owner_id"

    invoke-virtual {v4, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    const-string v9, "width"

    invoke-virtual {v4, v9, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string v9, "count"

    move-object/from16 v0, p5

    invoke-virtual {v4, v9, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1066
    const-string v9, "offset"

    move-object/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1067
    const-string v9, "album_id"

    invoke-virtual {v4, v9, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1068
    if-eqz p7, :cond_0

    .line 1069
    const-string v9, "extended"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1070
    :cond_0
    const/4 v9, 0x1

    invoke-direct {p0, v4, v9}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v6

    .line 1071
    .local v6, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1072
    .local v5, "response":Lorg/json/JSONObject;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .local v8, "videoss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-nez v5, :cond_2

    .line 1083
    :cond_1
    return-object v8

    .line 1075
    :cond_2
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1076
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 1077
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 1078
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1079
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    .line 1080
    .local v7, "video":Lcom/perm/kate/api/Video;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "offset"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Integer;
    .param p5, "is_need_system"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/AudioAlbum;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2600
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "video.getAlbums"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2602
    const-string v5, "count"

    invoke-virtual {v2, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2603
    const-string v5, "offset"

    invoke-virtual {v2, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2604
    if-eqz p5, :cond_0

    .line 2605
    const-string v5, "need_system"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2606
    :cond_0
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2607
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2608
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "items"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 2609
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/perm/kate/api/AudioAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2610
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    return-object v0
.end method

.method public getVideoComments(JLjava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 13
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # Ljava/lang/Long;
    .param p4, "offset"    # I
    .param p5, "count"    # I
    .param p6, "start_comment_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v7, Lcom/perm/kate/api/Params;

    const-string v10, "video.getComments"

    invoke-direct {v7, v10}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 623
    .local v7, "params":Lcom/perm/kate/api/Params;
    const-string v10, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    const-string v10, "owner_id"

    move-object/from16 v0, p3

    invoke-virtual {v7, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 625
    if-lez p5, :cond_0

    .line 626
    const-string v10, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :cond_0
    if-lez p4, :cond_1

    .line 628
    const-string v10, "offset"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    :cond_1
    const-string v10, "need_likes"

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string v10, "start_comment_id"

    move-object/from16 v0, p6

    invoke-virtual {v7, v10, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    invoke-direct {p0, v7}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v9

    .line 632
    .local v9, "root":Lorg/json/JSONObject;
    new-instance v4, Lcom/perm/kate/api/CommentList;

    invoke-direct {v4}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 633
    .local v4, "commnets":Lcom/perm/kate/api/CommentList;
    const-string v10, "response"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 634
    .local v8, "response":Lorg/json/JSONObject;
    const-string v10, "items"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 635
    .local v1, "array":Lorg/json/JSONArray;
    const-string v10, "count"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v4, Lcom/perm/kate/api/CommentList;->count:I

    .line 636
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 637
    .local v2, "category_count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_2

    .line 638
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 639
    .local v6, "o":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v3

    .line 640
    .local v3, "comment":Lcom/perm/kate/api/Comment;
    iget-object v10, v4, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 642
    .end local v3    # "comment":Lcom/perm/kate/api/Comment;
    .end local v6    # "o":Lorg/json/JSONObject;
    :cond_2
    return-object v4
.end method

.method public getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 9
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "reverse_order"    # Z
    .param p6, "start_comment_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v7, "wall.getComments"

    invoke-direct {v4, v7}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v7, "post_id"

    invoke-virtual {v4, v7, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1372
    const-string v7, "owner_id"

    invoke-virtual {v4, v7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1379
    if-lez p3, :cond_0

    .line 1380
    const-string v7, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    :cond_0
    if-lez p4, :cond_1

    .line 1382
    const-string v7, "count"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1383
    :cond_1
    const-string v7, "preview_length"

    const-string v8, "0"

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v7, "need_likes"

    const-string v8, "1"

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    if-eqz p5, :cond_2

    .line 1386
    const-string v7, "sort"

    const-string v8, "desc"

    invoke-virtual {v4, v7, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    :cond_2
    const-string v7, "start_comment_id"

    invoke-virtual {v4, v7, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1388
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1389
    .local v6, "root":Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1390
    .local v5, "response":Lorg/json/JSONObject;
    const-string v7, "items"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1391
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v2, Lcom/perm/kate/api/CommentList;

    invoke-direct {v2}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 1392
    .local v2, "commnets":Lcom/perm/kate/api/CommentList;
    const-string v7, "count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v2, Lcom/perm/kate/api/CommentList;->count:I

    .line 1393
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 1394
    .local v1, "category_count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1395
    iget-object v8, v2, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    invoke-static {v7}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1396
    :cond_3
    return-object v2
.end method

.method public getWallCount(J)Ljava/lang/Integer;
    .locals 7
    .param p1, "owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3552
    const-string v0, "var posts = API.wall.get({owner_id: %d});return posts.count;"

    .line 3557
    .local v0, "code":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3558
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "execute"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3559
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "code"

    invoke-virtual {v1, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3560
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3561
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3562
    .local v2, "response":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method public getWallMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2801
    .local p1, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v8, "wall.getById"

    invoke-direct {v4, v8}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2802
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v8, "posts"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    const-string v8, "photo_sizes"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2804
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2805
    .local v5, "root":Lorg/json/JSONObject;
    const-string v8, "response"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2806
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2807
    .local v7, "wmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2808
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2809
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2810
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v6

    .line 2811
    .local v6, "wm":Lcom/perm/kate/api/WallMessage;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2808
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2813
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v6    # "wm":Lcom/perm/kate/api/WallMessage;
    :cond_0
    return-object v7
.end method

.method public getWallMessages(Ljava/lang/Long;IILjava/lang/String;)Lcom/perm/kate/api/WallResponse;
    .locals 11
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "count"    # I
    .param p3, "offset"    # I
    .param p4, "filter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 942
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v9, "wall.get"

    invoke-direct {v4, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 943
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v9, "owner_id"

    invoke-virtual {v4, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 944
    if-lez p2, :cond_0

    .line 945
    const-string v9, "count"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 946
    :cond_0
    const-string v9, "offset"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 947
    const-string v9, "filter"

    invoke-virtual {v4, v9, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    const-string v9, "photo_sizes"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v7

    .line 950
    .local v7, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 951
    .local v6, "response":Lorg/json/JSONObject;
    new-instance v5, Lcom/perm/kate/api/WallResponse;

    invoke-direct {v5}, Lcom/perm/kate/api/WallResponse;-><init>()V

    .line 952
    .local v5, "res":Lcom/perm/kate/api/WallResponse;
    const-string v9, "count"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, v5, Lcom/perm/kate/api/WallResponse;->total_count:Ljava/lang/Integer;

    .line 953
    const-string v9, "items"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 954
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v5, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 955
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 956
    .local v1, "category_count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 957
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 958
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v8

    .line 959
    .local v8, "wm":Lcom/perm/kate/api/WallMessage;
    iget-object v9, v5, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 961
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v8    # "wm":Lcom/perm/kate/api/WallMessage;
    :cond_1
    return-object v5
.end method

.method public getWallOffsetByDate(JJI)Ljava/lang/Integer;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "date"    # J
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3975
    const-string v0, "var o1=0;var o2=%3$d;while(o2-o1>1){var o_new=(o1+o2)/2;var post=API.wall.get({\"offset\":o_new, \"owner_id\":%1$d}).items[0];if(post.date<%2$d)    o2=o_new;else    o1=o_new;}return o1;"

    .line 3988
    .local v0, "code":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3989
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "execute"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3990
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "code"

    invoke-virtual {v1, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3991
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3992
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3993
    .local v2, "response":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method public groupsApproveRequest(JJ)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3382
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.approveRequest"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3383
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3384
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3385
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3386
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "role"    # Ljava/lang/String;
    .param p6, "is_contact"    # Ljava/lang/Integer;
    .param p7, "contact_position"    # Ljava/lang/String;
    .param p8, "contact_phone"    # Ljava/lang/String;
    .param p9, "contact_email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3400
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.editManager"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3401
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3402
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3403
    const-string v2, "role"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3404
    const-string v2, "is_contact"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3405
    const-string v2, "contact_position"

    invoke-virtual {v0, v2, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    const-string v2, "contact_phone"

    invoke-virtual {v0, v2, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    const-string v2, "contact_email"

    invoke-virtual {v0, v2, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3408
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3409
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public groupsInvite(JJLjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .param p5, "captcha_key"    # Ljava/lang/String;
    .param p6, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3303
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.invite"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3304
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3305
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3306
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3307
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3308
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public groupsRemoveUser(JJ)Ljava/lang/Integer;
    .locals 5
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3391
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "groups.removeUser"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3392
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3393
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3394
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3395
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public ignoreItem(Ljava/lang/String;JJ)Z
    .locals 6
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "owner_id"    # J
    .param p4, "item_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3946
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "newsfeed.ignoreItem"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3947
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "type"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    const-string v4, "owner_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3949
    const-string v4, "item_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3950
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3951
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3952
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isFriend(JLjava/lang/Integer;)I
    .locals 9
    .param p1, "user_id"    # J
    .param p3, "need_sign"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3077
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v6, "friends.areFriends"

    invoke-direct {v1, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3078
    .local v1, "params":Lcom/perm/kate/api/Params;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3079
    .local v5, "user_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3080
    const-string v6, "user_ids"

    invoke-virtual {p0, v5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    const-string v6, "need_sign"

    invoke-virtual {v1, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3082
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3083
    .local v4, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3084
    .local v2, "response_array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 3085
    .local v3, "result":I
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 3086
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 3087
    .local v0, "el":Lorg/json/JSONObject;
    const-string v6, "friend_status"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 3089
    .end local v0    # "el":Lorg/json/JSONObject;
    :cond_0
    return v3
.end method

.method public joinGroup(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "gid"    # J
    .param p3, "captcha_key"    # Ljava/lang/String;
    .param p4, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2226
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "groups.join"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2227
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2228
    invoke-direct {p0, p3, p4, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2229
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2230
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2231
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2232
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2233
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public leaveGroup(J)Ljava/lang/String;
    .locals 5
    .param p1, "gid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2238
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "groups.leave"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2239
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2240
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2241
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2242
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2243
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2244
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public makeMainProfilePhoto(J)Ljava/lang/Integer;
    .locals 7
    .param p1, "photo_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3535
    const-string v0, "return API.photos.reorderPhotos({photo_id: %d,after:API.photos.get({album_id: \"profile\", rev: 1, count: 1}).items[0].id});"

    .line 3542
    .local v0, "code":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3543
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "execute"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3544
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "code"

    invoke-virtual {v1, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3546
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 3547
    .local v2, "response":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    return-object v4
.end method

.method public markAsRead(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .local p1, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    .line 888
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-object v3

    .line 890
    :cond_1
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "messages.markAsRead"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 891
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "message_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 893
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 894
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 895
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public markNotificationsAsViewed()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2696
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "notifications.markAsViewed"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2697
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2698
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 2699
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public messageMarkAsImportant(Ljava/util/Collection;Z)V
    .locals 3
    .param p2, "important"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3094
    .local p1, "message_ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.markAsImportant"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v1, "message_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    const-string v2, "important"

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3097
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    .line 3099
    return-void

    .line 3096
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public movePhoto(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "target_album_id"    # J
    .param p4, "photo_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3219
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.move"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3220
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3221
    const-string v2, "target_album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3222
    const-string v2, "photo_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3223
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3224
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public movePhotos(Ljava/util/ArrayList;J)I
    .locals 8
    .param p2, "target_album_id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/IdsPair;",
            ">;J)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 4062
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/IdsPair;>;"
    const-string v0, ""

    .line 4063
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .line 4064
    .local v1, "pair":Lcom/perm/kate/api/IdsPair;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "API.photos.move({owner_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",photo_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",target_album_id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "});"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4065
    .end local v1    # "pair":Lcom/perm/kate/api/IdsPair;
    :cond_0
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v3, "execute"

    invoke-direct {v2, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4066
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v3, "code"

    invoke-virtual {v2, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4067
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    .line 4068
    const/4 v3, 0x0

    return v3
.end method

.method public moveToAudioAlbum(Ljava/util/Collection;JLjava/lang/Long;)Ljava/lang/Integer;
    .locals 4
    .param p2, "album_id"    # J
    .param p4, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;J",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2790
    .local p1, "aids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "audio.moveToAlbum"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2791
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "audio_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v2, "album_ids"

    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v2, "album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2794
    const-string v2, "group_id"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2795
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2796
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "item_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2818
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "newsfeed.unsubscribe"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2819
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2821
    const-string v2, "item_id"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2822
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2823
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public photoCopy(JJLjava/lang/String;)Ljava/lang/Long;
    .locals 7
    .param p1, "owner_id"    # J
    .param p3, "photo_id"    # J
    .param p5, "access_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2932
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.copy"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2933
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2934
    const-string v3, "photo_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2935
    const-string v3, "access_key"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2937
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2938
    .local v1, "response":Ljava/lang/Long;
    return-object v1
.end method

.method public photoEdit(Ljava/lang/Long;JLjava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "pid"    # J
    .param p4, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2643
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.edit"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2644
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2645
    const-string v2, "photo_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2646
    const-string v2, "caption"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2647
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2648
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "crop_x"    # Ljava/lang/Integer;
    .param p4, "crop_y"    # Ljava/lang/Integer;
    .param p5, "crop_width"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3259
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.getChatUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3260
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3261
    const-string v3, "crop_x"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3262
    const-string v3, "crop_y"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3263
    const-string v3, "crop_width"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3264
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3265
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3266
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public photosGetMessagesUploadServer()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1200
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.getMessagesUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1201
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1202
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1203
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public photosGetOwnerPhotoUploadServer(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1208
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.getOwnerPhotoUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v0, "params":Lcom/perm/kate/api/Params;
    if-eqz p1, :cond_0

    .line 1210
    const-string v3, "owner_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1211
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1212
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1213
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public photosGetUploadServer(JLjava/lang/Long;)Ljava/lang/String;
    .locals 5
    .param p1, "album_id"    # J
    .param p3, "group_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.getUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "album_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1174
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1175
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1176
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1177
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public photosGetWallUploadServer(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "user_id"    # Ljava/lang/Long;
    .param p2, "group_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1182
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "photos.getWallUploadServer"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "user_id"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1184
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1185
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1186
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1187
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "upload_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photos_list"    # Ljava/lang/String;
    .param p3, "aid"    # Ljava/lang/Long;
    .param p4, "group_id"    # Ljava/lang/Long;
    .param p5, "hash"    # Ljava/lang/String;
    .param p6, "caption"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1218
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "photos.save"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "server"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const-string v4, "photos_list"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const-string v4, "album_id"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1222
    const-string v4, "group_id"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1223
    const-string v4, "hash"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const-string v4, "caption"

    invoke-virtual {v1, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1226
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1227
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1228
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    return-object v2
.end method

.method public pinPost(Ljava/lang/Long;J)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3229
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "wall.pin"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3230
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3231
    const-string v2, "post_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3232
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3233
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public putPhotoTag(Lcom/perm/kate/api/PhotoTag;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "ptag"    # Lcom/perm/kate/api/PhotoTag;
    .param p2, "captcha_key"    # Ljava/lang/String;
    .param p3, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2037
    if-nez p1, :cond_1

    .line 2052
    :cond_0
    :goto_0
    return-object v3

    .line 2039
    :cond_1
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "photos.putTag"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2040
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    iget-object v5, p1, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2041
    const-string v4, "photo_id"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2042
    const-string v4, "user_id"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2043
    const-string v4, "x"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->x:D

    invoke-virtual {v0, v4, v6, v7}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2044
    const-string v4, "x2"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->x2:D

    invoke-virtual {v0, v4, v6, v7}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2045
    const-string v4, "y"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->y:D

    invoke-virtual {v0, v4, v6, v7}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2046
    const-string v4, "y2"

    iget-wide v6, p1, Lcom/perm/kate/api/PhotoTag;->y2:D

    invoke-virtual {v0, v4, v6, v7}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2047
    invoke-direct {p0, p2, p3, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2048
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2049
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2050
    .local v1, "response_code":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2051
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "device_model"    # Ljava/lang/String;
    .param p3, "system_version"    # Ljava/lang/String;
    .param p4, "no_text"    # Ljava/lang/Integer;
    .param p5, "subscribe"    # Ljava/lang/String;
    .param p6, "device_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2268
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "account.registerDevice"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2269
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "token"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v2, "device_id"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const-string v2, "device_model"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    const-string v2, "system_version"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    const-string v2, "settings"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2276
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public removePhotoTag(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "photo_id"    # J
    .param p4, "tag_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3676
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.removeTag"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3677
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3678
    const-string v2, "photo_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3679
    const-string v2, "tag_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3680
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3681
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public removeUserFromChat(JJ)Ljava/lang/Integer;
    .locals 5
    .param p1, "chat_id"    # J
    .param p3, "uid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2465
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.removeChatUser"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2466
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "chat_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2467
    const-string v2, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2468
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2469
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public removeUserFromGroup(JJ)Z
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3966
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "groups.removeUser"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3967
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3968
    const-string v4, "user_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3969
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3970
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 3971
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;)I
    .locals 5
    .param p1, "target_id"    # J
    .param p3, "album_id"    # J
    .param p5, "vid"    # Ljava/lang/Long;
    .param p6, "oid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3428
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "video.removeFromAlbum"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3429
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "target_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3430
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3431
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3432
    const-string v2, "video_id"

    invoke-virtual {v0, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3433
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3434
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public removeWallPost(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 6
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "wall_owner_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1529
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "wall.delete"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "owner_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1531
    const-string v4, "post_id"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1532
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1533
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 1534
    .local v1, "response":I
    if-ne v1, v3, :cond_0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public reportMarketComment(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3836
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "market.reportComment"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3837
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3838
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3839
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3840
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3841
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportPhoto(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "photo_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3189
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.report"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3190
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "photo_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3191
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3192
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3193
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3194
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportPhotoComment(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3199
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "photos.reportComment"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3200
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3201
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3202
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3203
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3204
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportPost(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3147
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "wall.reportPost"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3148
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "post_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3149
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3150
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3151
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3152
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportPostComment(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3157
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "wall.reportComment"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3158
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3159
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3160
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3161
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3162
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportUser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "user_id"    # J
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "comment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3209
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "users.report"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3210
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3211
    const-string v2, "type"

    invoke-virtual {v0, v2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3212
    const-string v2, "comment"

    invoke-virtual {v0, v2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3214
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportVideo(JJILjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .param p6, "comment"    # Ljava/lang/String;
    .param p7, "search_query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3167
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "video.report"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3168
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "video_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3169
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3170
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3171
    const-string v2, "comment"

    invoke-virtual {v0, v2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    const-string v2, "search_query"

    invoke-virtual {v0, v2, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3174
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public reportVideoComment(JJI)Ljava/lang/Integer;
    .locals 5
    .param p1, "comment_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3179
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "video.reportComment"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3180
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "comment_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3181
    const-string v2, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3182
    const-string v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3183
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3184
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/WallMessage;
    .locals 6
    .param p1, "object"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "captcha_key"    # Ljava/lang/String;
    .param p5, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1354
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v4, "wall.repost"

    invoke-direct {v0, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v4, "group_id"

    invoke-virtual {v0, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1356
    const-string v4, "message"

    invoke-virtual {v0, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v4, "object"

    invoke-virtual {v0, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1359
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1360
    .local v2, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1361
    .local v1, "response":Lorg/json/JSONObject;
    new-instance v3, Lcom/perm/kate/api/WallMessage;

    invoke-direct {v3}, Lcom/perm/kate/api/WallMessage;-><init>()V

    .line 1362
    .local v3, "wall":Lcom/perm/kate/api/WallMessage;
    const-string v4, "post_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/WallMessage;->id:J

    .line 1363
    const-string v4, "likes_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 1364
    const-string v4, "reposts_count"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    .line 1365
    return-object v3
.end method

.method public resolveScreenName(Ljava/lang/String;)Lcom/perm/kate/api/ScreenNameInfo;
    .locals 4
    .param p1, "screen_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2983
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "utils.resolveScreenName"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2984
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "screen_name"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2986
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2987
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/ScreenNameInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ScreenNameInfo;

    move-result-object v3

    return-object v3
.end method

.method public saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Audio;
    .locals 4
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "audio"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1247
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "audio.save"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1248
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "server"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v3, "audio"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v3, "hash"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v3, "artist"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    const-string v3, "title"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1254
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1255
    .local v1, "response":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v3

    return-object v3
.end method

.method public saveDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Document;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "captcha_key"    # Ljava/lang/String;
    .param p3, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2675
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "docs.save"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2676
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "file"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-direct {p0, p2, p3, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2678
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2679
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2680
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2681
    .local v1, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Document;

    return-object v4
.end method

.method public saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1260
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "photos.saveMessagesPhoto"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "server"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v4, "photo"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    const-string v4, "hash"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1265
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1266
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1267
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    return-object v2
.end method

.method public saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1272
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v6, "photos.saveOwnerPhoto"

    invoke-direct {v1, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1273
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v6, "server"

    invoke-virtual {v1, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string v6, "photo"

    invoke-virtual {v1, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-string v6, "hash"

    invoke-virtual {v1, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1277
    .local v4, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1278
    .local v3, "response":Lorg/json/JSONObject;
    const-string v6, "photo_src"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1279
    .local v5, "src":Ljava/lang/String;
    const-string v6, "photo_hash"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    .local v0, "hash1":Ljava/lang/String;
    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const/4 v6, 0x1

    aput-object v0, v2, v6

    .line 1281
    .local v2, "res":[Ljava/lang/String;
    return-object v2
.end method

.method public saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/perm/kate/api/SaveProdfileInfoResult;
    .locals 6
    .param p1, "first_name"    # Ljava/lang/String;
    .param p2, "last_name"    # Ljava/lang/String;
    .param p3, "maiden_name"    # Ljava/lang/String;
    .param p4, "cancel_request_id"    # Ljava/lang/Long;
    .param p5, "sex"    # Ljava/lang/Integer;
    .param p6, "relation"    # Ljava/lang/Integer;
    .param p7, "relation_partner_id"    # Ljava/lang/Long;
    .param p8, "bdate"    # Ljava/lang/String;
    .param p9, "bdate_visibility"    # Ljava/lang/Integer;
    .param p10, "home_town"    # Ljava/lang/String;
    .param p11, "country_id"    # Ljava/lang/Integer;
    .param p12, "city_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3002
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "account.saveProfileInfo"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3003
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "first_name"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3004
    const-string v5, "last_name"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3005
    const-string v5, "maiden_name"

    invoke-virtual {v1, v5, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    const-string v5, "cancel_request_id"

    invoke-virtual {v1, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3007
    const-string v5, "sex"

    invoke-virtual {v1, v5, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3008
    const-string v5, "relation"

    invoke-virtual {v1, v5, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3009
    const-string v5, "relation_partner_id"

    invoke-virtual {v1, v5, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3010
    const-string v5, "bdate"

    invoke-virtual {v1, v5, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3011
    const-string v5, "bdate_visibility"

    invoke-virtual {v1, v5, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3012
    const-string v5, "home_town"

    move-object/from16 v0, p10

    invoke-virtual {v1, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3013
    const-string v5, "country_id"

    move-object/from16 v0, p11

    invoke-virtual {v1, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3014
    const-string v5, "city_id"

    move-object/from16 v0, p12

    invoke-virtual {v1, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3015
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 3016
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3017
    .local v2, "response":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/perm/kate/api/SaveProdfileInfoResult;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/SaveProdfileInfoResult;

    move-result-object v3

    .line 3018
    .local v3, "result":Lcom/perm/kate/api/SaveProdfileInfoResult;
    return-object v3
.end method

.method public saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "gid"    # Ljava/lang/Long;
    .param p4, "privacy_view"    # Ljava/lang/String;
    .param p5, "privacy_comment"    # Ljava/lang/String;
    .param p6, "is_private"    # Z
    .param p7, "link"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1981
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "video.save"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1982
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    const-string v3, "description"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1984
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1985
    const-string v3, "privacy_view"

    invoke-virtual {v0, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1986
    const-string v3, "privacy_comment"

    invoke-virtual {v0, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    if-eqz p6, :cond_0

    .line 1988
    const-string v3, "is_private"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    :cond_0
    const-string v3, "link"

    invoke-virtual {v0, v3, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1991
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1992
    .local v1, "response":Lorg/json/JSONObject;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "upload_url"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "video_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    return-object v3
.end method

.method public saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;
    .param p4, "user_id"    # Ljava/lang/Long;
    .param p5, "group_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1233
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "photos.saveWallPhoto"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1234
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "server"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v4, "photo"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v4, "hash"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    const-string v4, "user_id"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1238
    const-string v4, "group_id"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1239
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1240
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1241
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1242
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    return-object v2
.end method

.method public searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "lyrics"    # Ljava/lang/String;
    .param p4, "performer_only"    # Ljava/lang/Integer;
    .param p5, "count"    # Ljava/lang/Long;
    .param p6, "offset"    # Ljava/lang/Long;
    .param p7, "force_http"    # Z
    .param p8, "captcha_key"    # Ljava/lang/String;
    .param p9, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1401
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "audio.search"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "q"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v4, "sort"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v4, "lyrics"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v4, "performer_only"

    invoke-virtual {v1, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    const-string v4, "count"

    invoke-virtual {v1, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1407
    const-string v4, "offset"

    invoke-virtual {v1, v4, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1408
    invoke-direct {p0, v1, p7}, Lcom/perm/kate/api/Api;->addHttps(Lcom/perm/kate/api/Params;Z)V

    .line 1410
    invoke-direct {p0, p8, p9, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1411
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1412
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1413
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1414
    .local v0, "array":Lorg/json/JSONArray;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public searchDialogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/SearchDialogItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2521
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v3, "messages.searchDialogs"

    invoke-direct {v1, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2522
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v3, "q"

    invoke-virtual {v1, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    const-string v3, "fields"

    invoke-virtual {v1, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2524
    const-string v3, "limit"

    invoke-virtual {v1, v3, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2525
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2526
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2527
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/Message;->parseSearchedDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method public searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "offset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3871
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "docs.search"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3872
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "q"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    const-string v4, "count"

    invoke-virtual {v1, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3874
    const-string v4, "offset"

    invoke-virtual {v1, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3875
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3876
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3877
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "items"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3878
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4
.end method

.method public searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Long;
    .param p3, "offset"    # Ljava/lang/Long;
    .param p4, "fields"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2249
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v6, "groups.search"

    invoke-direct {v3, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v6, "q"

    invoke-virtual {v3, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    const-string v6, "count"

    invoke-virtual {v3, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2252
    const-string v6, "offset"

    invoke-virtual {v3, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2253
    const-string v6, "fields"

    invoke-virtual {v3, v6, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 2255
    .local v5, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 2256
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2257
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    if-nez v0, :cond_0

    move-object v2, v1

    .line 2262
    .end local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .local v2, "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :goto_0
    return-object v2

    .line 2261
    .end local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    .restart local v1    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    .line 2262
    .restart local v2    # "groups":Ljava/lang/Object;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    goto :goto_0
.end method

.method public searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "peer_id"    # Ljava/lang/Long;
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .param p5, "preview_length"    # Ljava/lang/Integer;
    .param p6, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2505
    new-instance v10, Lcom/perm/kate/api/Params;

    const-string v1, "messages.search"

    invoke-direct {v10, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2506
    .local v10, "params":Lcom/perm/kate/api/Params;
    const-string v1, "q"

    invoke-virtual {v10, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    const-string v1, "peer_id"

    invoke-virtual {v10, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2508
    const-string v1, "count"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2509
    const-string v1, "offset"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v1, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2510
    const-string v1, "preview_length"

    move-object/from16 v0, p5

    invoke-virtual {v10, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2511
    const-string v1, "date"

    move-object/from16 v0, p6

    invoke-virtual {v10, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2512
    invoke-direct {p0, v10}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v12

    .line 2513
    .local v12, "root":Lorg/json/JSONObject;
    const-string v1, "response"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 2514
    .local v11, "response":Lorg/json/JSONObject;
    const-string v1, "items"

    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2515
    .local v2, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;ZJZJ)Ljava/util/ArrayList;

    move-result-object v9

    .line 2516
    .local v9, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    return-object v9
.end method

.method public searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 6
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/String;
    .param p3, "extended"    # I
    .param p4, "start_time"    # Ljava/lang/Long;
    .param p5, "end_time"    # Ljava/lang/Long;
    .param p6, "count"    # J
    .param p8, "latitude"    # D
    .param p10, "longitude"    # D
    .param p12, "captcha_key"    # Ljava/lang/String;
    .param p13, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2871
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v4, "newsfeed.search"

    invoke-direct {v2, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2872
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v4, "q"

    invoke-virtual {v2, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2873
    const-string v4, "start_from"

    invoke-virtual {v2, v4, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    const-string v4, "extended"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2875
    const-string v4, "start_time"

    invoke-virtual {v2, v4, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2876
    const-string v4, "end_time"

    invoke-virtual {v2, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2877
    const-wide/16 v4, 0x0

    cmp-long v4, p6, v4

    if-eqz v4, :cond_0

    .line 2878
    const-string v4, "count"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2879
    :cond_0
    const-wide/16 v4, 0x0

    cmpl-double v4, p8, v4

    if-eqz v4, :cond_1

    .line 2880
    const-string v4, "latitude"

    invoke-virtual {v2, v4, p8, p9}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2881
    :cond_1
    const-wide/16 v4, 0x0

    cmpl-double v4, p10, v4

    if-eqz v4, :cond_2

    .line 2882
    const-string v4, "longitude"

    move-wide/from16 v0, p10

    invoke-virtual {v2, v4, v0, v1}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2883
    :cond_2
    const-string v4, "photo_sizes"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2884
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2885
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 2886
    .local v3, "root":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/Newsfeed;->parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/Newsfeed;

    move-result-object v4

    return-object v4
.end method

.method public searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;
    .param p5, "sort"    # Ljava/lang/Integer;
    .param p6, "city"    # Ljava/lang/Integer;
    .param p7, "country"    # Ljava/lang/Integer;
    .param p8, "hometown"    # Ljava/lang/String;
    .param p9, "university_country"    # Ljava/lang/Integer;
    .param p10, "university"    # Ljava/lang/Integer;
    .param p11, "university_year"    # Ljava/lang/Integer;
    .param p12, "sex"    # Ljava/lang/Integer;
    .param p13, "status"    # Ljava/lang/Integer;
    .param p14, "age_from"    # Ljava/lang/Integer;
    .param p15, "age_to"    # Ljava/lang/Integer;
    .param p16, "birth_day"    # Ljava/lang/Integer;
    .param p17, "birth_month"    # Ljava/lang/Integer;
    .param p18, "birth_year"    # Ljava/lang/Integer;
    .param p19, "online"    # Ljava/lang/Integer;
    .param p20, "has_photo"    # Ljava/lang/Integer;
    .param p21, "school_country"    # Ljava/lang/Integer;
    .param p22, "school_city"    # Ljava/lang/Integer;
    .param p23, "school"    # Ljava/lang/Integer;
    .param p24, "school_year"    # Ljava/lang/Integer;
    .param p25, "religion"    # Ljava/lang/String;
    .param p26, "interests"    # Ljava/lang/String;
    .param p27, "company"    # Ljava/lang/String;
    .param p28, "position"    # Ljava/lang/String;
    .param p29, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1608
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v6, "users.search"

    invoke-direct {v3, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1609
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-string v6, "q"

    invoke-virtual {v3, v6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    const-string v6, "count"

    invoke-virtual {v3, v6, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1611
    const-string v6, "offset"

    invoke-virtual {v3, v6, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1612
    const-string v6, "fields"

    invoke-virtual {v3, v6, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_0

    .line 1614
    const-string v6, "sort"

    invoke-virtual {v3, v6, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_1

    .line 1616
    const-string v6, "city"

    move-object/from16 v0, p6

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1617
    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_2

    .line 1618
    const-string v6, "country"

    move-object/from16 v0, p7

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    :cond_2
    if-eqz p8, :cond_3

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1620
    const-string v6, "hometown"

    move-object/from16 v0, p8

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_3
    if-eqz p9, :cond_4

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    .line 1622
    const-string v6, "university_country"

    move-object/from16 v0, p9

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1623
    :cond_4
    if-eqz p10, :cond_5

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_5

    .line 1624
    const-string v6, "university"

    move-object/from16 v0, p10

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1625
    :cond_5
    if-eqz p11, :cond_6

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_6

    .line 1626
    const-string v6, "university_year"

    move-object/from16 v0, p11

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1627
    :cond_6
    if-eqz p12, :cond_7

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_7

    .line 1628
    const-string v6, "sex"

    move-object/from16 v0, p12

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1629
    :cond_7
    if-eqz p13, :cond_8

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_8

    .line 1630
    const-string v6, "status"

    move-object/from16 v0, p13

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    :cond_8
    if-eqz p14, :cond_9

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_9

    .line 1632
    const-string v6, "age_from"

    move-object/from16 v0, p14

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1633
    :cond_9
    if-eqz p15, :cond_a

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_a

    .line 1634
    const-string v6, "age_to"

    move-object/from16 v0, p15

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    :cond_a
    if-eqz p16, :cond_b

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_b

    .line 1636
    const-string v6, "birth_day"

    move-object/from16 v0, p16

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1637
    :cond_b
    if-eqz p17, :cond_c

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_c

    .line 1638
    const-string v6, "birth_month"

    move-object/from16 v0, p17

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1639
    :cond_c
    if-eqz p18, :cond_d

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_d

    .line 1640
    const-string v6, "birth_year"

    move-object/from16 v0, p18

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1641
    :cond_d
    if-eqz p19, :cond_e

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_e

    .line 1642
    const-string v6, "online"

    move-object/from16 v0, p19

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1643
    :cond_e
    if-eqz p20, :cond_f

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_f

    .line 1644
    const-string v6, "has_photo"

    move-object/from16 v0, p20

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1645
    :cond_f
    if-eqz p21, :cond_10

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_10

    .line 1646
    const-string v6, "school_country"

    move-object/from16 v0, p21

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1647
    :cond_10
    if-eqz p22, :cond_11

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_11

    .line 1648
    const-string v6, "school_city"

    move-object/from16 v0, p22

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1649
    :cond_11
    if-eqz p23, :cond_12

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_12

    .line 1650
    const-string v6, "school"

    move-object/from16 v0, p23

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1651
    :cond_12
    if-eqz p24, :cond_13

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_13

    .line 1652
    const-string v6, "school_year"

    move-object/from16 v0, p24

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1653
    :cond_13
    if-eqz p25, :cond_14

    invoke-virtual/range {p25 .. p25}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_14

    .line 1654
    const-string v6, "religion"

    move-object/from16 v0, p25

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1655
    :cond_14
    if-eqz p26, :cond_15

    invoke-virtual/range {p26 .. p26}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_15

    .line 1656
    const-string v6, "interests"

    move-object/from16 v0, p26

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    :cond_15
    if-eqz p27, :cond_16

    invoke-virtual/range {p27 .. p27}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_16

    .line 1658
    const-string v6, "company"

    move-object/from16 v0, p27

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    :cond_16
    if-eqz p28, :cond_17

    invoke-virtual/range {p28 .. p28}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_17

    .line 1660
    const-string v6, "position"

    move-object/from16 v0, p28

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    :cond_17
    if-eqz p29, :cond_18

    invoke-virtual/range {p29 .. p29}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_18

    .line 1662
    const-string v6, "group_id"

    move-object/from16 v0, p29

    invoke-virtual {v3, v6, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1663
    :cond_18
    invoke-direct {p0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1664
    .local v5, "root":Lorg/json/JSONObject;
    const-string v6, "response"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1665
    .local v4, "response":Lorg/json/JSONObject;
    const-string v6, "items"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1666
    .local v2, "array":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v6

    return-object v6
.end method

.method public searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "fields"    # Ljava/lang/String;
    .param p3, "count"    # Ljava/lang/Long;
    .param p4, "offset"    # Ljava/lang/Long;
    .param p5, "sort"    # Ljava/lang/Integer;
    .param p6, "city"    # Ljava/lang/Integer;
    .param p7, "country"    # Ljava/lang/Integer;
    .param p8, "hometown"    # Ljava/lang/String;
    .param p9, "university_country"    # Ljava/lang/Integer;
    .param p10, "university"    # Ljava/lang/Integer;
    .param p11, "university_year"    # Ljava/lang/Integer;
    .param p12, "sex"    # Ljava/lang/Integer;
    .param p13, "status"    # Ljava/lang/Integer;
    .param p14, "age_from"    # Ljava/lang/Integer;
    .param p15, "age_to"    # Ljava/lang/Integer;
    .param p16, "birth_day"    # Ljava/lang/Integer;
    .param p17, "birth_month"    # Ljava/lang/Integer;
    .param p18, "birth_year"    # Ljava/lang/Integer;
    .param p19, "online"    # Ljava/lang/Integer;
    .param p20, "has_photo"    # Ljava/lang/Integer;
    .param p21, "school_country"    # Ljava/lang/Integer;
    .param p22, "school_city"    # Ljava/lang/Integer;
    .param p23, "school"    # Ljava/lang/Integer;
    .param p24, "school_year"    # Ljava/lang/Integer;
    .param p25, "religion"    # Ljava/lang/String;
    .param p26, "interests"    # Ljava/lang/String;
    .param p27, "company"    # Ljava/lang/String;
    .param p28, "position"    # Ljava/lang/String;
    .param p29, "gid"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1674
    invoke-static {p1}, Lcom/perm/utils/Utils;->parseProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1675
    .local v4, "uids":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1676
    :cond_0
    const-string v5, "Kate.Api"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Search with uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "var a=API.users.search({\"q\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\",\"count\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"count\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"fields\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1678
    .local v1, "code":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "var b=API.users.get({\"user_ids\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",\"fields\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"});"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "return b+a.items;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1680
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v5, "execute"

    invoke-direct {v2, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v2, "params":Lcom/perm/kate/api/Params;
    const-string v5, "code"

    invoke-virtual {v2, v5, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-direct {p0, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1683
    .local v3, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1684
    .local v0, "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1686
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "code":Ljava/lang/String;
    .end local v2    # "params":Lcom/perm/kate/api/Params;
    .end local v3    # "root":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    :cond_1
    invoke-virtual/range {p0 .. p29}, Lcom/perm/kate/api/Api;->searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0
.end method

.method public searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "q"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/Integer;
    .param p3, "hd"    # Ljava/lang/Integer;
    .param p4, "count"    # Ljava/lang/Long;
    .param p5, "offset"    # Ljava/lang/Long;
    .param p6, "adult"    # Ljava/lang/Integer;
    .param p7, "filters"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1580
    new-instance v4, Lcom/perm/kate/api/Params;

    const-string v9, "video.search"

    invoke-direct {v4, v9}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v4, "params":Lcom/perm/kate/api/Params;
    const-string v9, "q"

    invoke-virtual {v4, v9, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    const-string v9, "sort"

    invoke-virtual {v4, v9, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1583
    const-string v9, "hd"

    invoke-virtual {v4, v9, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1584
    const-string v9, "count"

    invoke-virtual {v4, v9, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1585
    const-string v9, "offset"

    invoke-virtual {v4, v9, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1586
    const-string v9, "adult"

    move-object/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v9, "filters"

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-direct {p0, v4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v6

    .line 1589
    .local v6, "root":Lorg/json/JSONObject;
    const-string v9, "response"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1590
    .local v5, "response":Lorg/json/JSONObject;
    const-string v9, "items"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1591
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1592
    .local v8, "videoss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    if-eqz v1, :cond_0

    .line 1593
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1594
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1595
    .local v3, "o":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    .line 1596
    .local v7, "video":Lcom/perm/kate/api/Video;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1599
    .end local v2    # "i":I
    .end local v3    # "o":Lorg/json/JSONObject;
    .end local v7    # "video":Lcom/perm/kate/api/Video;
    :cond_0
    return-object v8
.end method

.method public searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 15
    .param p1, "owner_id"    # J
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "owners_only"    # Ljava/lang/Integer;
    .param p6, "count"    # I
    .param p7, "offset"    # I
    .param p8, "extended"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "II",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3103
    new-instance v6, Lcom/perm/kate/api/Params;

    const-string v11, "wall.search"

    invoke-direct {v6, v11}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3104
    .local v6, "params":Lcom/perm/kate/api/Params;
    const-wide/16 v12, 0x0

    cmp-long v11, p1, v12

    if-eqz v11, :cond_0

    .line 3105
    const-string v11, "owner_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3106
    :cond_0
    const-string v11, "domain"

    move-object/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3107
    const-string v11, "query"

    move-object/from16 v0, p4

    invoke-virtual {v6, v11, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3108
    const-string v11, "owners_only"

    move-object/from16 v0, p5

    invoke-virtual {v6, v11, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3109
    if-lez p6, :cond_1

    .line 3110
    const-string v11, "count"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3111
    :cond_1
    const-string v11, "offset"

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3112
    const-string v11, "extended"

    move-object/from16 v0, p8

    invoke-virtual {v6, v11, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3113
    const-string v11, "photo_sizes"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3114
    invoke-direct {p0, v6}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v8

    .line 3115
    .local v8, "root":Lorg/json/JSONObject;
    const-string v11, "response"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 3116
    .local v7, "response":Lorg/json/JSONObject;
    const-string v11, "items"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3117
    .local v2, "array":Lorg/json/JSONArray;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3118
    .local v10, "wmessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 3119
    .local v3, "category_count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 3120
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 3121
    .local v5, "o":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v9

    .line 3122
    .local v9, "wm":Lcom/perm/kate/api/WallMessage;
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3119
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3124
    .end local v5    # "o":Lorg/json/JSONObject;
    .end local v9    # "wm":Lcom/perm/kate/api/WallMessage;
    :cond_2
    return-object v10
.end method

.method public sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chat_id"    # J
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p9, "lat"    # Ljava/lang/String;
    .param p10, "lon"    # Ljava/lang/String;
    .param p11, "sticker_id"    # Ljava/lang/Integer;
    .param p12, "captcha_key"    # Ljava/lang/String;
    .param p13, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 853
    .local p7, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p8, "forward_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v5, "messages.send"

    invoke-direct {v3, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 854
    .local v3, "params":Lcom/perm/kate/api/Params;
    const-wide/16 v6, 0x0

    cmp-long v5, p2, v6

    if-gtz v5, :cond_0

    .line 855
    const-string v5, "user_id"

    invoke-virtual {v3, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 858
    :goto_0
    const-string v5, "message"

    invoke-virtual {v3, v5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v5, "title"

    invoke-virtual {v3, v5, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v5, "type"

    invoke-virtual {v3, v5, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v5, "attachment"

    invoke-virtual {p0, p7}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v5, "forward_messages"

    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v5, "lat"

    move-object/from16 v0, p9

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v5, "sticker_id"

    move-object/from16 v0, p11

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v5, "long"

    move-object/from16 v0, p10

    invoke-virtual {v3, v5, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v5, "random_id"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 871
    move-object/from16 v0, p12

    move-object/from16 v1, p13

    invoke-direct {p0, v0, v1, v3}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 872
    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 874
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 875
    .local v2, "message_id":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 879
    instance-of v5, v2, Lorg/json/JSONArray;

    if-eqz v5, :cond_1

    .line 880
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "message_id":Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 883
    :goto_1
    return-object v5

    .line 857
    .end local v4    # "root":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "chat_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 881
    .restart local v2    # "message_id":Ljava/lang/Object;
    .restart local v4    # "root":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 883
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "access_token"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setChatPhoto(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6
    .param p1, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3271
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v4, "messages.setChatPhoto"

    invoke-direct {v1, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3272
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v4, "file"

    invoke-virtual {v1, v4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v3

    .line 3274
    .local v3, "root":Lorg/json/JSONObject;
    const-string v4, "response"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 3275
    .local v2, "response":Lorg/json/JSONObject;
    const-string v4, "message_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3277
    .local v0, "message_id":Ljava/lang/Long;
    return-object v0
.end method

.method public setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/lang/Integer;
    .locals 4
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "chat_id"    # Ljava/lang/Long;
    .param p3, "typing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2615
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "messages.setActivity"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2616
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "user_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2617
    const-string v2, "chat_id"

    invoke-virtual {v0, v2, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2618
    if-eqz p3, :cond_0

    .line 2619
    const-string v2, "type"

    const-string v3, "typing"

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2621
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public setOffline()Ljava/lang/Long;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2943
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "account.setOffline"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2944
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2945
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2946
    .local v1, "response":Ljava/lang/Long;
    return-object v1
.end method

.method public setOnline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "captcha_key"    # Ljava/lang/String;
    .param p2, "captcha_sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 1747
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.setOnline"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v0, "params":Lcom/perm/kate/api/Params;
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1749
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    .line 1750
    return-void
.end method

.method public setPrivacySettings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3591
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v5, "account.setPrivacy"

    invoke-direct {v1, v5}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3592
    .local v1, "params":Lcom/perm/kate/api/Params;
    const-string v5, "key"

    invoke-virtual {v1, v5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3593
    const-string v5, "value"

    invoke-virtual {v1, v5, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3594
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v4

    .line 3595
    .local v4, "root":Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3596
    .local v3, "response":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 3597
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3598
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 3599
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3598
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3602
    .end local v0    # "i":I
    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v2, 0x0

    :cond_1
    return-object v2
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 4
    .param p1, "status_text"    # Ljava/lang/String;
    .param p2, "group_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 928
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v3, "status.set"

    invoke-direct {v0, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 929
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v3, "text"

    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v3, "group_id"

    invoke-virtual {v0, v3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 931
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    .line 932
    .local v2, "root":Lorg/json/JSONObject;
    const-string v3, "response"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 933
    .local v1, "response_id":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 934
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 935
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public trackEvents(Ljava/lang/String;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3883
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stats.trackEvents"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3884
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v1, "events"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    .line 3886
    return-void
.end method

.method public unpinPost(Ljava/lang/Long;J)Ljava/lang/Integer;
    .locals 4
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "post_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3238
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "wall.unpin"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3239
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "owner_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3240
    const-string v2, "post_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3241
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3242
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method public unregisterDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "device_id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 2281
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "account.unregisterDevice"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2282
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "device_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2284
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public videoAddToAlbum(Ljava/lang/Long;JJJ)Ljava/lang/Integer;
    .locals 4
    .param p1, "target_id"    # Ljava/lang/Long;
    .param p2, "album_id"    # J
    .param p4, "owner_id"    # J
    .param p6, "video_id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    .prologue
    .line 3514
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "video.addToAlbum"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3515
    .local v0, "params":Lcom/perm/kate/api/Params;
    const-string v2, "target_id"

    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3516
    const-string v2, "album_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3517
    const-string v2, "owner_id"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3518
    const-string v2, "video_id"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3519
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    .line 3520
    .local v1, "root":Lorg/json/JSONObject;
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method
