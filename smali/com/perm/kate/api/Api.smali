.class public Lcom/perm/kate/api/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field static enable_compression:Z = true

.field public static is_dev:Z = false

.field public static proxy_addr:Ljava/lang/String;

.field public static proxy_enabled:Ljava/lang/Boolean;

.field public static proxy_port:Ljava/lang/Integer;

.field public static user_agent:Ljava/lang/String;


# instance fields
.field public access_token:Ljava/lang/String;

.field public instance_domain:Ljava/lang/String;

.field public use_tls:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/api/Api;->instance_domain:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/perm/kate/api/Api;->use_tls:Z

    return-void
.end method

.method public getInstanceUrl()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/perm/kate/api/Api;->use_tls:Z

    if-eqz v1, :cond_plain

    const-string v1, "https://"

    goto :goto_scheme

    :cond_plain
    const-string v1, "http://"

    :goto_scheme
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/api/Api;->instance_domain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :goto_domain

    const-string v1, "api.openvk.org"

    :goto_domain
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/perm/kate/api/Api;->instance_domain:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perm/kate/api/Api;->instance_domain:Ljava/lang/String;

    return-void
.end method

.method public setTLS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/perm/kate/api/Api;->use_tls:Z

    return-void
.end method

.method private addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V
    .locals 1

    const-string v0, "captcha_sid"

    .line 802
    invoke-virtual {p3, v0, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "captcha_key"

    .line 803
    invoke-virtual {p3, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private answersToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2137
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2138
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2139
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2140
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private answersToString2(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2146
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2147
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/StrPair;

    .line 2149
    :try_start_0
    iget-object v2, v1, Lcom/perm/kate/api/StrPair;->id:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/api/StrPair;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2151
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2152
    invoke-static {v1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2155
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private answersToString3(Ljava/util/Collection;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2161
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2162
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2163
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2164
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private checkError(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 9

    const-string v0, "error"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "redirect_uri"

    const-string v3, "captcha_sid"

    const-string v4, "captcha_img"

    const/16 v5, 0x11

    const/16 v6, 0xe

    const-string v7, "error_msg"

    const-string v8, "error_code"

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 60
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    new-instance v7, Lcom/perm/kate/api/KException;

    invoke-direct {v7, v0, v1, p2}, Lcom/perm/kate/api/KException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v0, v6, :cond_0

    .line 64
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    .line 65
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    :cond_0
    if-ne v0, v5, :cond_1

    .line 68
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    .line 69
    :cond_1
    throw v7

    :cond_2
    const-string v0, "execute_errors"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 72
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 77
    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v7, Lcom/perm/kate/api/KException;

    invoke-direct {v7, v0, v1, p2}, Lcom/perm/kate/api/KException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v0, v6, :cond_4

    .line 81
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/perm/kate/api/KException;->captcha_img:Ljava/lang/String;

    .line 82
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v7, Lcom/perm/kate/api/KException;->captcha_sid:Ljava/lang/String;

    :cond_4
    if-ne v0, v5, :cond_5

    .line 85
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v7, Lcom/perm/kate/api/KException;->redirect_uri:Ljava/lang/String;

    .line 86
    :cond_5
    throw v7

    :cond_6
    return-void
.end method

.method private getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 5

    if-eqz p2, :cond_1

    .line 827
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0x77359400

    .line 830
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long/2addr p1, v0

    return-wide p1

    .line 828
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method private getSignedUrl(Lcom/perm/kate/api/Params;Z)Ljava/lang/String;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "access_token"

    invoke-virtual {p1, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "v"

    .line 226
    invoke-virtual {p1, v0}, Lcom/perm/kate/api/Params;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "5.131"

    .line 227
    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_2

    .line 231
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "?"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/perm/kate/api/Params;->getParamsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 233
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/perm/kate/api/Api;->getInstanceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/method/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/Params;->method_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 9

    const-string v0, "items"

    .line 529
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 532
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-wide/high16 v3, -0x8000000000000000L

    .line 534
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 535
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-eqz v8, :cond_0

    .line 536
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1581
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1582
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1583
    invoke-static {v2}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private parseConversations(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 943
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 946
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 947
    new-instance v2, Lcom/perm/kate/api/Message;

    invoke-direct {v2}, Lcom/perm/kate/api/Message;-><init>()V

    .line 948
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/perm/kate/api/Message;->parseConversationFields(Lorg/json/JSONObject;Lcom/perm/kate/api/Message;)V

    .line 949
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    .line 923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 925
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 927
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "last_message"

    .line 929
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "conversation"

    .line 933
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 934
    invoke-static {v4, v3}, Lcom/perm/kate/api/Message;->parseConversation(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/perm/kate/api/Message;

    move-result-object v3

    .line 935
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private parseMessages(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 13

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 874
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 875
    invoke-static {v4, v1}, Lcom/perm/kate/api/Message;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Message;

    move-result-object v4

    .line 876
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_7

    .line 883
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 885
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "conversations"

    .line 886
    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v4, 0x0

    .line 887
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 888
    invoke-virtual {p2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "peer"

    .line 889
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v8, "in_read"

    .line 890
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string v9, "out_read"

    .line 891
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 892
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "chat_settings"

    .line 896
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 898
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 900
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Message;

    .line 901
    iget-wide v5, v4, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, v4, Lcom/perm/kate/api/Message;->chat_id:Ljava/lang/Long;

    invoke-direct {p0, v5, v6}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v5

    .line 902
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 903
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 904
    iget-boolean v9, v4, Lcom/perm/kate/api/Message;->is_out:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_5

    .line 905
    iget-wide v11, v4, Lcom/perm/kate/api/Message;->mid:J

    int-to-long v7, v8

    cmp-long v9, v11, v7

    if-gtz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iput-boolean v10, v4, Lcom/perm/kate/api/Message;->read_state:Z

    goto :goto_5

    .line 907
    :cond_5
    iget-wide v8, v4, Lcom/perm/kate/api/Message;->mid:J

    int-to-long v11, v7

    cmp-long v7, v8, v11

    if-gtz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v10, 0x0

    :goto_4
    iput-boolean v10, v4, Lcom/perm/kate/api/Message;->read_state:Z

    .line 909
    :goto_5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 911
    iput-object v5, v4, Lcom/perm/kate/api/Message;->title:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 916
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 917
    invoke-static {p1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_7
    return-object v0
.end method

.method private parsePhotoTags(Lorg/json/JSONArray;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 6

    .line 2245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2246
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 2248
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2249
    invoke-static {v3}, Lcom/perm/kate/api/PhotoTag;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PhotoTag;

    move-result-object v3

    .line 2250
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    .line 2252
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/perm/kate/api/PhotoTag;->pid:J

    :cond_0
    if-eqz p3, :cond_1

    .line 2254
    iput-object p3, v3, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4

    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1421
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1423
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 1424
    invoke-static {v3}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v3

    .line 1425
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private processNetworkException(ILjava/io/IOException;)V
    .locals 1

    .line 161
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    .line 163
    :cond_0
    throw p2
.end method

.method private reportResponseLength(Lcom/perm/kate/api/Params;I)V
    .locals 7

    .line 142
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    .line 143
    rem-long/2addr v0, v2

    const-wide/32 v2, 0x1869f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 147
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/perm/kate/api/Params;->method_name:Ljava/lang/String;

    const-string v1, "execute"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 149
    iget-object p1, p1, Lcom/perm/kate/api/Params;->args:Ljava/util/TreeMap;

    const-string v0, "code"

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_1
    new-instance p1, Lcom/perm/kate/api/RespException;

    invoke-direct {p1, v0}, Lcom/perm/kate/api/RespException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/StackTraceElement;

    .line 152
    new-instance v3, Ljava/lang/StackTraceElement;

    const-string v4, "FakeClass"

    const-string v5, "respLength"

    const-string v6, "FakeClass.java"

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 153
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    invoke-static {p1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;
    .locals 8

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->getSignedUrl(Lcom/perm/kate/api/Params;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1}, Lcom/perm/kate/api/Params;->getParamsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 101
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Kate.Api"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 104
    sget-boolean v3, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v3, :cond_1

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "body="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/perm/utils/TokenHider;->hideAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x3

    if-gt v5, v6, :cond_3

    if-eq v5, v3, :cond_2

    .line 110
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_2
    invoke-direct {p0, v0, v2, p2}, Lcom/perm/kate/api/Api;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 118
    invoke-direct {p0, v5, v6}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    goto :goto_2

    :catch_1
    move-exception v6

    .line 116
    invoke-direct {p0, v5, v6}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    goto :goto_2

    :catch_2
    move-exception v6

    .line 114
    invoke-direct {p0, v5, v6}, Lcom/perm/kate/api/Api;->processNetworkException(ILjava/io/IOException;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object p2, v1

    .line 122
    :goto_3
    sget-boolean v2, Lcom/perm/kate/api/Api;->is_dev:Z

    if-eqz v2, :cond_4

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/perm/kate/api/Api;->reportResponseLength(Lcom/perm/kate/api/Params;I)V

    .line 131
    iget-object v2, p1, Lcom/perm/kate/api/Params;->method_name:Ljava/lang/String;

    const-string v3, "store.getStickersKeywords"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p1, Lcom/perm/kate/api/Params;->method_name:Ljava/lang/String;

    const-string v2, "store.getProducts"

    .line 132
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p1, ",\"(images|images_with_background)\":\\[.*?\\]"

    .line 133
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 134
    :cond_6
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->checkError(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object p1
.end method

.method private sendRequestInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 169
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/perm/kate/api/Api;->proxy_enabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/perm/kate/api/Api;->proxy_addr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/perm/kate/api/Api;->proxy_port:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance p1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    sget-object v4, Lcom/perm/kate/api/Api;->proxy_addr:Ljava/lang/String;

    sget-object v5, Lcom/perm/kate/api/Api;->proxy_port:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {p1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 180
    invoke-virtual {v1, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 171
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    :goto_1
    move-object v0, p1

    const/16 p1, 0x7530

    .line 183
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 184
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p1, 0x0

    .line 185
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 186
    invoke-virtual {v0, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 p1, 0x1

    .line 187
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    if-eqz p3, :cond_2

    const-string p1, "POST"

    goto :goto_2

    :cond_2
    const-string p1, "GET"

    .line 188
    :goto_2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/perm/kate/api/Api;->user_agent:Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v1, "User-Agent"

    .line 190
    invoke-virtual {v0, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    sget-boolean p1, Lcom/perm/kate/api/Api;->enable_compression:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "gzip"

    if-eqz p1, :cond_4

    :try_start_1
    const-string p1, "Accept-Encoding"

    .line 192
    invoke-virtual {v0, p1, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 194
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    const-string p3, "UTF-8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 195
    :cond_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const-string p2, "Kate.Api"

    .line 196
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    .line 202
    new-instance p1, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    const/16 p3, 0x2000

    invoke-direct {p1, p2, p3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    const-string p2, "Content-Encoding"

    .line 203
    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 204
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 205
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, p2

    .line 206
    :cond_6
    invoke-static {p1}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 199
    :cond_7
    :try_start_2
    new-instance p1, Lcom/perm/utils/WrongResponseCodeException;

    const-string p2, "Network error"

    invoke-direct {p1, p2}, Lcom/perm/utils/WrongResponseCodeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_8

    .line 211
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 212
    :cond_8
    throw p1
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static unescapeForLongPoll(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "&amp;"

    const-string v1, "&"

    .line 244
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<br>"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeForPush(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "<br>"

    const-string v1, "\n"

    .line 260
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeForTopic(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "&gt;"

    const-string v1, ">"

    .line 252
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeWithSmiles(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 266
    invoke-static {p0}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1591
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "audio_id"

    .line 1592
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 1593
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1594
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 1595
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1597
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1598
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1600
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addAudioAlbum(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2

    .line 3139
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.createPlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 3140
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3142
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3143
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "id"

    .line 3144
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public addBan(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 2

    .line 3093
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.addBan"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3094
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3095
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "user_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3096
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3097
    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "group_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3099
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 3100
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public addFriend(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 1938
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 1939
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "text"

    .line 1940
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    invoke-direct {p0, p3, p4, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1942
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1943
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public addGroupBanUser(JJLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 2

    .line 3306
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.ban"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3307
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3308
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_date"

    .line 3309
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "reason"

    .line 3310
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "comment"

    .line 3311
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p8, :cond_0

    const-string p1, "comment_visible"

    const-string p2, "1"

    .line 3313
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 3315
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 3316
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3317
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public addGroupLink(JLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Link;
    .locals 2

    .line 4074
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.addLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4075
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "link"

    .line 4076
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "text"

    .line 4077
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4078
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4079
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Link;->parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object p1

    return-object p1
.end method

.method public addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1618
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "likes.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1619
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "item_id"

    .line 1620
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "type"

    .line 1621
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "access_key"

    .line 1622
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1624
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1625
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "likes"

    const-wide/16 p3, -0x1

    .line 1626
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 1627
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public addMarket(JLjava/lang/String;Ljava/lang/String;JJLjava/lang/Double;Ljava/util/ArrayList;)J
    .locals 2

    .line 4330
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4331
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "name"

    .line 4332
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 4333
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4334
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "category_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4335
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "main_photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p9, :cond_0

    .line 4337
    invoke-virtual {p9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-string p3, "price"

    invoke-virtual {v0, p3, p1, p2}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 4338
    :cond_0
    invoke-virtual {p0, p10}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "photo_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4339
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4340
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "market_item_id"

    .line 4341
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public addMarketAlbum(JLjava/lang/String;Ljava/lang/Long;)J
    .locals 2

    .line 4395
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.addAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4396
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 4397
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo_id"

    .line 4398
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    .line 4399
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4400
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "market_album_id"

    .line 4401
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public addMarketToAlbum(JJLjava/util/ArrayList;)Z
    .locals 2

    .line 4373
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.addToAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4374
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4375
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4376
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "album_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4377
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4378
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addPollVote(JLjava/util/Collection;JZLjava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 2077
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.addVote"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2078
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "owner_id"

    invoke-virtual {v0, p5, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2079
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "poll_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p6, :cond_0

    const-string p1, "is_board"

    const-string p2, "1"

    .line 2081
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    :cond_0
    invoke-virtual {p0, p3}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "answer_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2083
    invoke-direct {p0, p7, p8, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2084
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2085
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public addToBlackList(J)Ljava/lang/Boolean;
    .locals 2

    .line 3229
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.ban"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3230
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3231
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3232
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3233
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public addUserToChat(JJ)Ljava/lang/Integer;
    .locals 2

    .line 2790
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.addChatUser"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2791
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2792
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2793
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2794
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public addVideo(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1889
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "target_id"

    .line 1890
    invoke-virtual {v0, v1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "video_id"

    .line 1891
    invoke-virtual {v0, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 1892
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1893
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1894
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1895
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1897
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 3938
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.addAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "group_id"

    .line 3939
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 3940
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy"

    .line 3941
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3942
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3943
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "album_id"

    .line 3944
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public allowMessagesFromGroup(J)I
    .locals 2

    .line 4663
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.allowMessagesFromGroup"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4664
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4665
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4666
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public archiveWallPost(J)Z
    .locals 2

    .line 4972
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.archive"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4973
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4974
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4975
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method arrayToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2c

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public audioFollowPlaylist(JJLjava/lang/String;)I
    .locals 2

    .line 4831
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.followPlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4832
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4833
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 4834
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4835
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method

.method public audioReorder(JJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 2

    .line 4608
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.reorder"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4609
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "audio_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4610
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "before"

    .line 4611
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "after"

    .line 4612
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "playlist_id"

    .line 4613
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4614
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4615
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public audioSendStartEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 4953
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.sendStartEvent"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "uuid"

    .line 4954
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 4956
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio_id"

    .line 4957
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4958
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4959
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public audioSetBroadcast(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 3127
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.setBroadcast"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "audio"

    .line 3128
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "target_ids"

    .line 3129
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method

.method public audioSubscribeToQueue()Ljava/lang/String;
    .locals 2

    .line 4946
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.subscribeToQueue"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4947
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 4948
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    .line 4949
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4021
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.changePassword"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "new_password"

    .line 4022
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "old_password"

    .line 4023
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "restore_sid"

    .line 4024
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "change_password_hash"

    .line 4025
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 4027
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4028
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "token"

    .line 4031
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public chatCreate(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/Long;
    .locals 4

    if-eqz p1, :cond_2

    .line 2757
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2759
    :cond_0
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.createChat"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2760
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2761
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "user_ids"

    .line 2763
    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 2764
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2766
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public chatEdit(JLjava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 2771
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.editChat"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2772
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 2773
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2775
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public closeTopic(JJ)Z
    .locals 2

    .line 4751
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.closeTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4752
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4753
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4754
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4755
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public confirmPhotoTag(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 2

    .line 4114
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.confirmTag"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 4115
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4116
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4117
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "tag_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4118
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4119
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public createAlbum(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Album;
    .locals 2

    .line 1218
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.createAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 1219
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "group_id"

    .line 1220
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "privacy_view"

    .line 1221
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_comment"

    .line 1222
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 1223
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1225
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1228
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/api/Album;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object p1

    return-object p1
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Group;
    .locals 2

    .line 3669
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.create"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 3670
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 3671
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 3672
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "subtype"

    .line 3673
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3674
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3675
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3676
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object p1

    return-object p1
.end method

.method public createGroupTopic(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 2407
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.addTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2408
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 2409
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "text"

    .line 2410
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p1, "from_group"

    const-string p2, "1"

    .line 2412
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2413
    :cond_0
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 2414
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2415
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createGroupTopicComment(JJLjava/lang/String;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 2366
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2367
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2368
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 2369
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2370
    invoke-virtual {p0, p6}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string p1, "from_group"

    const-string p2, "1"

    .line 2372
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "sticker_id"

    .line 2373
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2374
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 2375
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2376
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 4257
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 4258
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "item_id"

    .line 4259
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 4260
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reply_to_comment"

    .line 4261
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4262
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p1, "from_group"

    const-string p2, "1"

    .line 4264
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "sticker_id"

    .line 4265
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4266
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 4267
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4268
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNote(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 1903
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 1904
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "text"

    .line 1905
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_view"

    const-string p2, "all"

    .line 1906
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_comment"

    .line 1907
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1908
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1909
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 747
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "note_id"

    .line 748
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 749
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 750
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 751
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 754
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 755
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 716
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "photo_id"

    .line 717
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 718
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 719
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 720
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reply_to_comment"

    .line 721
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 722
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p1, "from_group"

    const-string p2, "1"

    .line 724
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "sticker_id"

    .line 725
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 726
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 727
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createPoll(Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;)Lcom/perm/kate/api/VkPoll;
    .locals 2

    .line 2122
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.create"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 2123
    invoke-virtual {v0, v1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p5, "question"

    .line 2124
    invoke-virtual {v0, p5, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_anonymous"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2126
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_multiple"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "end_date"

    .line 2127
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2128
    invoke-direct {p0, p6}, Lcom/perm/kate/api/Api;->answersToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "add_answers"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2130
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2131
    invoke-static {p1}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object p1

    return-object p1
.end method

.method public createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;ZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    .line 773
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "video_id"

    .line 774
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 775
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 776
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 777
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reply_to_comment"

    .line 778
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 779
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p1, "from_group"

    const-string p2, "1"

    .line 781
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "sticker_id"

    .line 782
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 783
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 784
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1433
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.createComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1434
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "post_id"

    .line 1435
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 1436
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reply_to_comment"

    .line 1437
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1438
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "from_group"

    .line 1439
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "sticker_id"

    .line 1440
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1441
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 1442
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1443
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1444
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "comment_id"

    .line 1445
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p3

    const-wide/16 p5, 0x0

    cmp-long p7, p3, p5

    if-eqz p7, :cond_0

    .line 1447
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p3, "parents_stack"

    .line 1448
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1449
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1450
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_1

    const/4 p3, 0x0

    .line 1451
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p2
.end method

.method public createWallPost(JLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 9

    move-object v0, p0

    move-object v1, p5

    move-object/from16 v2, p12

    .line 1471
    new-instance v3, Lcom/perm/kate/api/Params;

    const-string v4, "wall.post"

    invoke-direct {v3, v4}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1472
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "owner_id"

    invoke-virtual {v3, v5, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v4, p4

    .line 1473
    invoke-virtual {p0, p4}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "attachments"

    invoke-virtual {v3, v5, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "lat"

    move-object/from16 v5, p9

    .line 1474
    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "long"

    move-object/from16 v5, p10

    .line 1475
    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "message"

    move-object v5, p3

    .line 1476
    invoke-virtual {v3, v4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 1477
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "services"

    .line 1478
    invoke-virtual {v3, v4, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "1"

    if-eqz p7, :cond_1

    const-string v4, "from_group"

    .line 1480
    invoke-virtual {v3, v4, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p6, :cond_2

    const-string v4, "friends_only"

    .line 1482
    invoke-virtual {v3, v4, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p8, :cond_3

    const-string v4, "signed"

    .line 1484
    invoke-virtual {v3, v4, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "publish_date"

    move-object/from16 v4, p11

    .line 1485
    invoke-virtual {v3, v1, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "post_id"

    if-eqz v2, :cond_4

    .line 1486
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 1487
    invoke-virtual {v3, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_4
    const-string v2, "copyright"

    move-object/from16 v4, p13

    .line 1488
    invoke-virtual {v3, v2, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p14

    move-object/from16 v4, p15

    .line 1489
    invoke-direct {p0, v2, v4, v3}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 v2, 0x1

    .line 1490
    invoke-direct {p0, v3, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "response"

    .line 1491
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1492
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method public deleteAlbum(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 2221
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.deleteAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "album_id"

    .line 2222
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 2223
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2224
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2225
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2227
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteAudioAlbum(JJ)Ljava/lang/Integer;
    .locals 2

    .line 3159
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.deletePlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3160
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3161
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3162
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3163
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public deleteAudios(Ljava/util/ArrayList;J)I
    .locals 3

    .line 4723
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 4724
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "API.audio.delete({audio_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",owner_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4725
    :cond_0
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "execute"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 4726
    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4727
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return p1
.end method

.method public deleteBan(Ljava/util/Collection;Ljava/util/Collection;)Ljava/lang/Boolean;
    .locals 2

    .line 3105
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.deleteBan"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3106
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3107
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "user_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 3108
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3109
    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "group_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3110
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3111
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 3112
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteChatPhoto(J)Ljava/lang/Long;
    .locals 2

    .line 3704
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.deleteChatPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3705
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3706
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3707
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "message_id"

    .line 3708
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public deleteDialogs(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 7

    .line 4673
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const-string v0, ""

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "});"

    const/4 v3, 0x0

    const-string v4, "API.messages.deleteConversation({peer_id:"

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 4674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v1}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4675
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 4676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v3}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 4677
    :cond_1
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "execute"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 4678
    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4679
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return p1
.end method

.method public deleteDoc(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 3064
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3065
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "owner_id"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "doc_id"

    .line 3066
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3067
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3068
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3069
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteFriend(Ljava/lang/Long;)J
    .locals 6

    .line 1948
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 1949
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1950
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 1951
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "success"

    .line 1952
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1954
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const-string v0, "friend_deleted"

    .line 1955
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "out_request_deleted"

    .line 1956
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 1957
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 1959
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public deleteFromBlackList(J)Ljava/lang/Boolean;
    .locals 2

    .line 3238
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.unban"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3239
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3240
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3241
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3242
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroupBanUser(JJ)Ljava/lang/Boolean;
    .locals 2

    .line 3322
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.unban"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3323
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3324
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3325
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3326
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3327
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroupLink(JJ)Ljava/lang/Integer;
    .locals 2

    .line 4065
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.deleteLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4066
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4067
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "link_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4068
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4069
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroupTopic(JJ)Ljava/lang/Boolean;
    .locals 2

    .line 2421
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.deleteTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2422
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2423
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2424
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2425
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2426
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroupTopicComment(JJJ)Ljava/lang/Boolean;
    .locals 2

    .line 2396
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.deleteComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2397
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2398
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2399
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2400
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2401
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2402
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteGroups(Ljava/util/ArrayList;)I
    .locals 3

    .line 4711
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 4712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "API.groups.leave({group_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4713
    :cond_0
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string v1, "execute"

    invoke-direct {p1, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 4714
    invoke-virtual {p1, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4715
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return p1
.end method

.method public deleteLastWallPosts(JILjava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 4084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var posts = API.wall.get({owner_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",filter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",count:"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "});var i=0;var count=posts.items.length;while(i<count){API.wall.delete({owner_id:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ",post_id:posts.items[i].id});i=i+1;};"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4090
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string p3, "execute"

    invoke-direct {p2, p3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    .line 4091
    invoke-virtual {p2, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4095
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 1632
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "likes.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1633
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "type"

    .line 1634
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "item_id"

    .line 1635
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1636
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1637
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1638
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "likes"

    const-wide/16 p3, -0x1

    .line 1639
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public deleteMarket(JJ)Z
    .locals 2

    .line 4363
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4364
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4365
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4366
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4367
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public deleteMarketAlbum(JJ)Z
    .locals 2

    .line 4418
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.deleteAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4419
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4420
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4421
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4422
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public deleteMarketComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 4274
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.deleteComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 4275
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4276
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4277
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4278
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 4279
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteMessage(Ljava/util/Collection;Ljava/lang/Integer;Z)Ljava/lang/String;
    .locals 2

    .line 1036
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "delete_for_all"

    .line 1038
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1039
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "spam"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 2039
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.deleteConversation"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2040
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2041
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    return p1
.end method

.method public deleteNote(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1272
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "note_id"

    .line 1273
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1274
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 1275
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1277
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteNoteComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1731
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.deleteComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1732
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1733
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1734
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1735
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1736
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deletePhoto(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 3

    .line 2055
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 2056
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "photo_id"

    .line 2057
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2058
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    const-wide/16 v0, -0x1

    .line 2059
    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deletePhotoComment(JLjava/lang/Long;J)Ljava/lang/Boolean;
    .locals 0

    .line 1751
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "photos.deleteComment"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p2, "owner_id"

    .line 1752
    invoke-virtual {p1, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1753
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "comment_id"

    invoke-virtual {p1, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1754
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1755
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1756
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deletePhotos(Ljava/util/ArrayList;)I
    .locals 5

    .line 4687
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .line 4688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "API.photos.delete({owner_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",photo_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4689
    :cond_0
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string v1, "execute"

    invoke-direct {p1, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    .line 4690
    invoke-virtual {p1, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 4691
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return p1
.end method

.method public deletePollVote(JJJZ)I
    .locals 2

    .line 2090
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.deleteVote"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2091
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const-string p6, "owner_id"

    invoke-virtual {v0, p6, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2092
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "poll_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p7, :cond_0

    const-string p1, "is_board"

    const-string p2, "1"

    .line 2094
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "answer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2096
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2097
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public deleteRecentTopicComments(JJ)Ljava/lang/Object;
    .locals 2

    .line 4173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var api_call_count=0;var deleted_count=0;var topics=API.board.getTopics({\"group_id\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \"count\": 10, \"order\": 1});api_call_count=api_call_count+1;var i=0;while(i<topics.items.length){    var topic_id=topics.items[i].id;    var comments=API.board.getComments({\"group_id\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \"topic_id\": topic_id, \"count\": 45, \"sort\": \"desc\"});    api_call_count=api_call_count+1;    if(api_call_count>=25){        return deleted_count;    }    var j=0;    while(j<comments.items.length){        if(comments.items[j].from_id=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "){            API.board.deleteComment({\"group_id\": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", \"topic_id\": topic_id, \"comment_id\": comments.items[j].id});            api_call_count=api_call_count+1;            deleted_count=deleted_count+1;            if(api_call_count>=25){                return deleted_count;            }        }        j=j+1;    }    i=i+1;}return deleted_count;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4200
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string p3, "execute"

    invoke-direct {p2, p3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    .line 4201
    invoke-virtual {p2, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4202
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4203
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public deleteRecentWallComments(JJ)Ljava/lang/Object;
    .locals 2

    .line 4136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var api_call_count=0;var deleted_count=0;var posts=API.wall.get({\"owner_id\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \"count\": 10});api_call_count=api_call_count+1;var i=0;while(i<posts.items.length){    var post_id=posts.items[i].id;    var comments=API.wall.getComments({\"owner_id\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", \"post_id\": post_id, \"count\": 45, \"sort\": \"desc\"});    api_call_count=api_call_count+1;    if(api_call_count>=25){        return deleted_count;    }    var j=0;    while(j<comments.items.length){        if(comments.items[j].from_id=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "){            API.wall.deleteComment({\"owner_id\": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", \"comment_id\": comments.items[j].id});            api_call_count=api_call_count+1;            deleted_count=deleted_count+1;            if(api_call_count>=25){                return deleted_count;            }        }        j=j+1;    }    i=i+1;}return deleted_count;"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4163
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string p3, "execute"

    invoke-direct {p2, p3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    .line 4164
    invoke-virtual {p2, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4165
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4166
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public deleteStory(JJ)Z
    .locals 2

    .line 4842
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4843
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4844
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "story_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4845
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    const-wide/16 p3, -0x1

    .line 4846
    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public deleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)Ljava/lang/String;
    .locals 2

    .line 1876
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "video_id"

    .line 1877
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 1878
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1879
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "target_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1880
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1881
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1883
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public deleteVideoAlbum(JLjava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    .line 3960
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.deleteAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3961
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 3962
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3963
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3964
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public deleteVideoComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1741
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.deleteComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1742
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1743
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1744
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1745
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1746
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public deleteWallComment(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1721
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.deleteComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1722
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1723
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1724
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1725
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1726
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public denyMessagesFromGroup(J)I
    .locals 2

    .line 4655
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.denyMessagesFromGroup"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4656
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4657
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4658
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public docsAdd(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 3247
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.add"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3248
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "doc_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3249
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 3250
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3252
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3254
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public docsGetUploadServer(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3042
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.getUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "group_id"

    .line 3043
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "type"

    .line 3044
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3046
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 3047
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public editAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1233
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.editAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1234
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "owner_id"

    .line 1235
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 1236
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_view"

    .line 1237
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_comment"

    .line 1238
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 1239
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1241
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1243
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 3367
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3368
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3369
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "audio_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "artist"

    .line 3370
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 3371
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "text"

    .line 3372
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "genre_id"

    .line 3373
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "no_search"

    .line 3374
    invoke-virtual {v0, p1, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3375
    invoke-direct {p0, p10, p11, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 3376
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3377
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public editAudioAlbum(Ljava/lang/String;JJ)Ljava/lang/Integer;
    .locals 2

    .line 3149
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.editPlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 3150
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3151
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3152
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3153
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3154
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public editDoc(JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 4522
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4523
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4524
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "doc_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 4525
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tags"

    .line 4526
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4527
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4528
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public editGroupLink(JJLjava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 4055
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.editLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4056
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4057
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "link_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "text"

    .line 4058
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4059
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4060
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public editGroupSettings(JLcom/perm/kate/api/GroupSettings;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3762
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3763
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_0

    .line 3765
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    const-string p2, "title"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3766
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    const-string p2, "description"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3767
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    const-string p2, "screen_name"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3768
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    const-string p2, "access"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3769
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    const-string p2, "website"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3772
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->email:Ljava/lang/String;

    const-string p2, "email"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->phone:Ljava/lang/String;

    const-string p2, "phone"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3774
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    const-string p2, "wall"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3775
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    const-string p2, "photos"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3776
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    const-string p2, "video"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3777
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    const-string p2, "audio"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3778
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    const-string p2, "topics"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3779
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    const-string p2, "docs"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3780
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    const-string p2, "wiki"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3781
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    const-string p2, "links"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3782
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    const-string p2, "events"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3783
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    const-string p2, "places"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3784
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    const-string p2, "contacts"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3785
    iget-object p1, p3, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    const-string p2, "public_date"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 3790
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3791
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public editGroupTopicComment(JJJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 2382
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2383
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2384
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2385
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 2386
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    invoke-virtual {p0, p8}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 2389
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 2390
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editMarket(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Double;Ljava/util/ArrayList;)Z
    .locals 2

    .line 4346
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4347
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4348
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "name"

    .line 4349
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 4350
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "category_id"

    .line 4351
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "main_photo_id"

    .line 4352
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p9, :cond_0

    .line 4354
    invoke-virtual {p9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    const-string p3, "price"

    invoke-virtual {v0, p3, p1, p2}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 4355
    :cond_0
    invoke-virtual {p0, p10}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "photo_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4356
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4357
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editMarketAlbum(JJLjava/lang/String;Ljava/lang/Long;)Z
    .locals 2

    .line 4406
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.editAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4407
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4408
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 4409
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo_id"

    .line 4410
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    .line 4411
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4412
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 4294
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4295
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 4296
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 4297
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4298
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4299
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 4300
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4301
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editMessage(JLjava/lang/String;JLjava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 4791
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4792
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "message_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 4793
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4794
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4795
    invoke-virtual {p0, p6}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachment"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4796
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "keep_forward_messages"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4797
    invoke-direct {p0, p7, p8, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 4798
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4799
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public editNoteComment(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 761
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 762
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 763
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 765
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 766
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 767
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 733
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 735
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 736
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 737
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 738
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-virtual {p0, p7}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 740
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 741
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editPoll(JJLjava/lang/String;Ljava/lang/Long;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2

    .line 2169
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2170
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "poll_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2171
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "question"

    .line 2172
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "end_date"

    .line 2173
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2174
    invoke-direct {p0, p7}, Lcom/perm/kate/api/Api;->answersToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "add_answers"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    invoke-direct {p0, p8}, Lcom/perm/kate/api/Api;->answersToString2(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "edit_answers"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-direct {p0, p9}, Lcom/perm/kate/api/Api;->answersToString3(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "delete_answers"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2179
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long p5, p1, p3

    if-nez p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editTopic(JJLjava/lang/String;)Z
    .locals 2

    .line 4740
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.editTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4741
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4742
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 4743
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4745
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public editVideo(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 3463
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3464
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 3465
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "name"

    .line 3466
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "desc"

    .line 3467
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_view"

    .line 3468
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_comment"

    .line 3469
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "repeat"

    .line 3470
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3471
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 3472
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 3473
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editVideoAlbum(JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3949
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.editAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3950
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 3951
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 3952
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy"

    .line 3953
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3954
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3955
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 790
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 791
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 792
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 793
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const-string p1, "message"

    .line 794
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 796
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 797
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1458
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.editComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1459
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 1460
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "message"

    .line 1461
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "attachments"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 1464
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 1465
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public editWallPost(JJLjava/lang/String;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    .line 2991
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v2, "wall.edit"

    invoke-direct {v1, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2992
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "owner_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2993
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "post_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "message"

    move-object v3, p5

    .line 2994
    invoke-virtual {v1, v2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p6

    .line 2995
    invoke-virtual {p0, p6}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attachments"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lat"

    move-object v3, p7

    .line 2996
    invoke-virtual {v1, v2, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "long"

    move-object v3, p8

    .line 2997
    invoke-virtual {v1, v2, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2998
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "place_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "publish_date"

    move-object v3, p11

    .line 2999
    invoke-virtual {v1, v2, p11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3000
    invoke-static/range {p12 .. p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "signed"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "copyright"

    move-object/from16 v3, p13

    .line 3001
    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    .line 3002
    invoke-direct {p0, v2, v3, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 v2, 0x1

    .line 3003
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    return v2
.end method

.method public faveAddLink(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3910
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.addLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "link"

    .line 3911
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3913
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public faveAddPage(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    .line 3892
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.addPage"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 3893
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 3894
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3895
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3896
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public faveAddPost(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1701
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.addPost"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1702
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "owner_id"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "id"

    .line 1703
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1704
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1705
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1706
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public faveAddVideo(JJLjava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 2630
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.addVideo"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2631
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "owner_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2632
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 2633
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2635
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2636
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public faveRemoveLink(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3918
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.removeLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "link_id"

    .line 3919
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3920
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3921
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public faveRemovePage(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    .line 3901
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.removePage"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 3902
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 3903
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3904
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3905
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public faveRemovePost(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1711
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.removePost"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1712
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "owner_id"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "id"

    .line 1713
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1714
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1715
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1716
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public faveRemoveVideo(JJ)Ljava/lang/Boolean;
    .locals 2

    .line 2641
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.removeVideo"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2642
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "owner_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2643
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2644
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2645
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2646
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public fixTopic(JJ)Z
    .locals 2

    .line 4771
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.fixTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4772
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4773
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4774
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4775
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public friendsEdit(JLjava/util/Collection;)Ljava/lang/Integer;
    .locals 2

    .line 3866
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3867
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3868
    invoke-virtual {p0, p3}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "list_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3870
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public friendsLists(Ljava/lang/Long;Z)Ljava/util/ArrayList;
    .locals 2

    .line 2185
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.getLists"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 2186
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 2188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "return_system"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2189
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2190
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "response"

    .line 2191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 2192
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2194
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2195
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2196
    invoke-static {v1}, Lcom/perm/kate/api/FriendsList;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/FriendsList;

    move-result-object v1

    .line 2197
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getAlbumComments(Ljava/lang/Long;Ljava/lang/Long;II)Ljava/util/ArrayList;
    .locals 2

    .line 4499
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getAllComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "album_id"

    .line 4500
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 4501
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p4, :cond_0

    .line 4503
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p3, :cond_1

    .line 4505
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p1, "need_likes"

    const-string p2, "1"

    .line 4506
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4508
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4509
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4510
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 4511
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 4513
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 4514
    invoke-static {v0}, Lcom/perm/kate/api/Comment;->parseForAlbum(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    .line 4515
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getAlbums(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 564
    new-instance p5, Lcom/perm/kate/api/Params;

    const-string v0, "photos.getAlbums"

    invoke-direct {p5, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "owner_id"

    .line 565
    invoke-virtual {p5, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 566
    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "album_ids"

    invoke-virtual {p5, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "need_system"

    .line 567
    invoke-virtual {p5, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "need_covers"

    .line 568
    invoke-virtual {p5, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    invoke-direct {p0, p5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 572
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "response"

    .line 573
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "items"

    .line 574
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 577
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 579
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 580
    invoke-static {p5}, Lcom/perm/kate/api/Album;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Album;

    move-result-object p5

    .line 581
    iget-object v0, p5, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    const-string v1, "DELETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 583
    :cond_1
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3841
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.getAlbumsByVideo"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3842
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "target_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 3843
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "video_id"

    .line 3844
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3845
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3846
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3847
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 3848
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 3849
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getAllPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 2

    .line 626
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getAll"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 627
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 628
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 629
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 632
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 633
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 635
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 636
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Collection;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1148
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    if-eqz p1, :cond_0

    .line 1150
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1152
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1153
    :cond_1
    invoke-virtual {p0, p4}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "audio_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album_id"

    .line 1154
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 1155
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p6, :cond_2

    .line 1158
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1159
    :cond_2
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1160
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1161
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1162
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1163
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudioAlbums(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 2918
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getPlaylists"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 2919
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 2920
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2921
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2922
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2923
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2924
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2925
    invoke-static {p1}, Lcom/perm/kate/api/AudioAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudioById(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1168
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "audios"

    .line 1169
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    invoke-direct {p0, p2, p3, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 1172
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1173
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1174
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudioPopular(Ljava/lang/Integer;II)Ljava/util/ArrayList;
    .locals 2

    .line 2953
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getPopular"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "genre_id"

    .line 2955
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2957
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2958
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2959
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2960
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2961
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudioRecommendations(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 2

    .line 2940
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getRecommendations"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "target_audio"

    .line 2941
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2944
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2945
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2946
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2947
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2948
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getAudioUploadServer()Ljava/lang/String;
    .locals 2

    .line 1323
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1324
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 1325
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload_url"

    .line 1326
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBanned(ZLjava/lang/String;)Lcom/perm/kate/api/BannArg;
    .locals 3

    .line 3082
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.getBanned"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "extended"

    const-string v2, "1"

    .line 3084
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "fields"

    .line 3085
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3086
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "response"

    .line 3087
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 3088
    invoke-static {p2, p1}, Lcom/perm/kate/api/BannArg;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/BannArg;

    move-result-object p1

    return-object p1
.end method

.method public getBlackList(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 3

    .line 3214
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.getBanned"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "fields"

    const-string v2, "first_name,last_name,photo_100,online"

    .line 3216
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "offset"

    .line 3217
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 3218
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3219
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3220
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "profiles"

    .line 3221
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3224
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getBotButtons(JLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/BotKeyboard;
    .locals 2

    .line 969
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getConversationsById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 970
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 971
    invoke-direct {p0, p3, p4, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 972
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 973
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 974
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 975
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 976
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "current_keyboard"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 978
    invoke-static {p1}, Lcom/perm/kate/api/Message;->parseKeyboard(Lorg/json/JSONObject;)Lcom/perm/kate/api/BotKeyboard;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChat(JLjava/lang/String;)Lcom/perm/kate/api/Chat;
    .locals 2

    .line 3715
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getChat"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3716
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    .line 3717
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3718
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3719
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3720
    invoke-static {p1}, Lcom/perm/kate/api/Chat;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Chat;

    move-result-object p1

    return-object p1
.end method

.method public getChatUsers(JLjava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2780
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getConversationMembers"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2781
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    .line 2782
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2784
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2785
    invoke-static {p1}, Lcom/perm/kate/api/ChatMember;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCities(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 3

    if-eqz p1, :cond_2

    .line 328
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "database.getCitiesById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "city_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 333
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 337
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 338
    invoke-static {v2}, Lcom/perm/kate/api/City;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCitiesByCountry(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 309
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "database.getCities"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "country_id"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "q"

    .line 311
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 313
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 314
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 315
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 317
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 319
    invoke-static {v1}, Lcom/perm/kate/api/City;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;

    move-result-object v1

    .line 320
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getConversationsById(JLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 956
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getConversationsById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 957
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 958
    invoke-direct {p0, p3, p4, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 959
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 960
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 961
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 962
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseConversations(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getCounters(Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Counters;
    .locals 2

    .line 2540
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.getCounters"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2541
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2542
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2543
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2544
    invoke-static {p1}, Lcom/perm/kate/api/Counters;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Counters;

    move-result-object p1

    return-object p1
.end method

.method public getCountries(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 4

    if-eqz p1, :cond_2

    .line 379
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 381
    :cond_0
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "database.getCountriesById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "country_ids"

    .line 383
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 385
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 389
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 390
    invoke-static {v3}, Lcom/perm/kate/api/Country;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Country;

    move-result-object v3

    .line 391
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCountriesByCode(Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 359
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "database.getCountries"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "need_all"

    .line 360
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "code"

    .line 361
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 362
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/16 p1, 0x3e8

    .line 363
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 365
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 366
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 367
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 370
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 371
    invoke-static {v2}, Lcom/perm/kate/api/Country;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Country;

    move-result-object v2

    .line 372
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getDocs(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3030
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3031
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 3032
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 3033
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3034
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3035
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 3036
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3037
    invoke-static {p1}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getDocsById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 4566
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "docs"

    .line 4567
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4568
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4569
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4570
    invoke-static {p1}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getFaveGroups(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4

    .line 2731
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.getPages"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "fields"

    .line 2732
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    const-string v1, "groups"

    .line 2733
    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    .line 2734
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "offset"

    .line 2735
    invoke-virtual {v0, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2736
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    .line 2737
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "response"

    .line 2738
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "items"

    .line 2739
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    const/4 v0, 0x0

    .line 2742
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2743
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2744
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    .line 2745
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2746
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v1

    .line 2747
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public getFaveLinks(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7

    .line 2699
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "item_type"

    const-string v2, "link"

    .line 2700
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    .line 2701
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2702
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2703
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2704
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "response"

    .line 2705
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 2706
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2709
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2710
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2711
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "tags"

    .line 2712
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v4, :cond_2

    .line 2714
    invoke-static {v4}, Lcom/perm/kate/api/Link;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v5

    .line 2716
    iget-object v6, v5, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "caption"

    .line 2717
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2718
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 2719
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 2720
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/perm/kate/api/Link;->description:Ljava/lang/String;

    .line 2723
    :cond_1
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public getFavePhotos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 2574
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.getPhotos"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    .line 2575
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2576
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2577
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2578
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2579
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2581
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2582
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getFavePosts(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 3

    .line 2651
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.getPosts"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    .line 2653
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2654
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2656
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2657
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2658
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2662
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    .line 2665
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2667
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 2668
    invoke-static {v2}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v2

    .line 2669
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getFavePostsNew(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 3

    .line 2676
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "item_type"

    const-string v2, "post"

    .line 2677
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    .line 2678
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2679
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2680
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2681
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2682
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2683
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 2686
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2687
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2688
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2691
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v1

    .line 2692
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getFaveUsers(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4

    .line 2550
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.getPages"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "fields"

    .line 2551
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 2552
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2553
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "type"

    const-string p2, "users"

    .line 2554
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2555
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2556
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "response"

    .line 2557
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "items"

    .line 2558
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 2561
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    .line 2563
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "user"

    .line 2564
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2565
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/User;->parseFromFave(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 2566
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getFaveVideos(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 2588
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.getVideos"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    .line 2589
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2590
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2591
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2592
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2593
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2594
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2596
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2597
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2598
    invoke-static {v1}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v1

    .line 2599
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getFaveVideosNew(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 3

    .line 2607
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "fave.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "item_type"

    const-string v2, "video"

    .line 2608
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    .line 2609
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2610
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2611
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2612
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2613
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2614
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x0

    .line 2617
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2618
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 2619
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2622
    :cond_1
    invoke-static {v1}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v1

    .line 2623
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2020
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "users.getFollowers"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 2021
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p2, :cond_0

    .line 2023
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p3, :cond_1

    .line 2025
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-nez p4, :cond_2

    const-string p4, "first_name,last_name,photo_100,online"

    :cond_2
    const-string p1, "fields"

    .line 2029
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name_case"

    .line 2030
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2032
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2033
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2034
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getFriends(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 419
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "fields"

    .line 420
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "user_id"

    .line 421
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "list_id"

    .line 422
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p3, :cond_0

    const-string p1, "order"

    const-string p2, "hints"

    .line 426
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 429
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 430
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "response"

    .line 431
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "items"

    .line 432
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p2

    .line 436
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 438
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 439
    invoke-static {p5}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object p5

    .line 440
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getGames()Ljava/util/ArrayList;
    .locals 5

    .line 3531
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "apps.getCatalog"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "platform"

    const-string v2, "android"

    .line 3532
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 3533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "return_friends"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3534
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 3535
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    .line 3536
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 3537
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3538
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 3540
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 3541
    invoke-static {v4}, Lcom/perm/kate/api/Game;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Game;

    move-result-object v4

    .line 3542
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getGifts(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3875
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "gifts.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 3876
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 3877
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 3878
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3879
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3880
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "response"

    .line 3881
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "items"

    .line 3882
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 3886
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/api/GiftItem;->parseGifts(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGroupBannedUsers(JLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3290
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getBanned"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3291
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 3292
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 3293
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 3294
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    const-string p2, "photo_100"

    .line 3296
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3298
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3299
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 3300
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3301
    invoke-static {p1}, Lcom/perm/kate/api/GroupBanItem;->parseAll(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGroupSettings(J)Lcom/perm/kate/api/GroupSettings;
    .locals 2

    .line 3753
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getSettings"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3754
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3755
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3756
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3757
    invoke-static {p1}, Lcom/perm/kate/api/GroupSettings;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupSettings;

    move-result-object p1

    return-object p1
.end method

.method public getGroupTopicComments(JJIIIIZLjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 3

    const-string p5, "poll"

    .line 2313
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2314
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2315
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "1"

    const/4 p2, 0x1

    if-ne p6, p2, :cond_0

    const-string p6, "extended"

    .line 2319
    invoke-virtual {v0, p6, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p6, "count"

    if-lez p7, :cond_1

    .line 2321
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    invoke-virtual {v0, p6, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-lez p8, :cond_2

    .line 2323
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    const-string v1, "offset"

    invoke-virtual {v0, v1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    if-eqz p9, :cond_3

    const-string p7, "sort"

    const-string p9, "desc"

    .line 2325
    invoke-virtual {v0, p7, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p7, "start_comment_id"

    .line 2326
    invoke-virtual {v0, p7, p10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p7, "need_likes"

    .line 2327
    invoke-virtual {v0, p7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p7, "response"

    .line 2329
    invoke-virtual {p1, p7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2330
    new-instance p7, Lcom/perm/kate/api/CommentList;

    invoke-direct {p7}, Lcom/perm/kate/api/CommentList;-><init>()V

    if-eqz p1, :cond_6

    const-string p9, "items"

    .line 2332
    invoke-virtual {p1, p9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p9

    .line 2333
    invoke-virtual {p9}, Lorg/json/JSONArray;->length()I

    move-result p10

    .line 2334
    invoke-virtual {p1, p6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p6

    iput p6, p7, Lcom/perm/kate/api/CommentList;->count:I

    const/4 p6, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p10, :cond_4

    .line 2336
    invoke-virtual {p9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 2337
    invoke-static {v1}, Lcom/perm/kate/api/Comment;->parseTopicComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v1

    .line 2338
    iget-object v2, p7, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-nez p8, :cond_6

    .line 2344
    :try_start_0
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 2346
    invoke-static {p1}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object p1

    const-wide/16 p8, 0x0

    cmp-long p10, p3, p8

    if-eqz p10, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    .line 2347
    :goto_1
    iput-boolean p2, p1, Lcom/perm/kate/api/VkPoll;->is_board:Z

    .line 2348
    new-instance p2, Lcom/perm/kate/api/Attachment;

    invoke-direct {p2}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 2349
    iput-object p1, p2, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    .line 2350
    iput-object p5, p2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 2351
    iget-object p1, p7, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 2352
    iget-object p1, p7, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p1, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Comment;

    iget-object p1, p1, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2357
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2358
    invoke-static {p1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return-object p7
.end method

.method public getGroupTopics(JLjava/lang/Integer;III)Ljava/util/ArrayList;
    .locals 5

    .line 2282
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.getTopics"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2283
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "order"

    .line 2284
    invoke-virtual {v0, v1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p3, 0x1

    if-ne p4, p3, :cond_0

    const-string p3, "extended"

    const-string p4, "1"

    .line 2286
    invoke-virtual {v0, p3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-lez p5, :cond_1

    .line 2288
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "count"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-lez p6, :cond_2

    .line 2290
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "offset"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2291
    :cond_2
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p3

    .line 2292
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const-string p5, "response"

    .line 2293
    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string p5, "items"

    .line 2295
    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    if-eqz p3, :cond_4

    const/4 p5, 0x0

    .line 2297
    :goto_0
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p6

    if-ge p5, p6, :cond_4

    .line 2298
    invoke-virtual {p3, p5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p6

    .line 2299
    invoke-static {p6}, Lcom/perm/kate/api/GroupTopic;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupTopic;

    move-result-object p6

    .line 2301
    iget-wide v0, p6, Lcom/perm/kate/api/GroupTopic;->tid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    goto :goto_1

    .line 2303
    :cond_3
    iput-wide p1, p6, Lcom/perm/kate/api/GroupTopic;->gid:J

    .line 2304
    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_4
    return-object p4
.end method

.method public getGroups(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    .line 2434
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    return-object v0

    .line 2436
    :cond_1
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2438
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2439
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const-string p1, "group_ids"

    .line 2442
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fields"

    .line 2443
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2444
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2445
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2446
    invoke-static {p1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsInvites(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3351
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getInvites"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "offset"

    .line 3352
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 3353
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3354
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3355
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "response"

    .line 3356
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 3357
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 3361
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getGroupsMembers(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2896
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getMembers"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2897
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 2898
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2899
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "sort"

    .line 2900
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "filter"

    .line 2901
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fields"

    .line 2902
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2904
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2905
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2906
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getInviteLinkForChat(J)Ljava/lang/String;
    .locals 2

    .line 4964
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getInviteLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4965
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4966
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4967
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "link"

    .line 4968
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLikeUsers(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 465
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "likes.getList"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 466
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p4, "owner_id"

    invoke-virtual {v0, p4, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "filter"

    .line 469
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offset"

    .line 470
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 471
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 472
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 473
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 474
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 475
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    const-wide/16 p5, -0x1

    .line 479
    invoke-virtual {p1, p4, p5, p6}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide p7

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    .line 480
    invoke-virtual {p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p8, v0, p5

    if-eqz p8, :cond_0

    .line 481
    invoke-virtual {p2, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getLikeUsersWithExecute(Ljava/lang/String;JJLjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 491
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    .line 498
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p4, 0x1

    aput-object p2, v1, p4

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/4 p1, 0x3

    const-string p2, "5.131"

    aput-object p2, v1, p1

    const/4 p1, 0x4

    aput-object p6, v1, p1

    const-string p1, "return([API.likes.getList({\"item_id\":%1$d,\"owner_id\":%2$d,\"type\":\"%3$s\",\"v\":\"%4$s\",\"filter\":\"%5$s\",\"friends_only\":1}),API.likes.getList({\"item_id\":%1$d,\"owner_id\":%2$d,\"type\":\"%3$s\",\"v\":\"%4$s\",\"filter\":\"%5$s\"})]);"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "code"

    .line 499
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 514
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 515
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p2

    .line 516
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 518
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    .line 519
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseArray(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    .line 521
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 522
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3
.end method

.method public getLists(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 3453
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.getLists"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3454
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x0

    .line 3455
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3456
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3457
    invoke-static {p1}, Lcom/perm/kate/api/NewsList;->parseLists(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getLongPollServer(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3

    .line 1917
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getLongPollServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0xa

    .line 1919
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lp_version"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1920
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1921
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1922
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "key"

    .line 1923
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "server"

    .line 1924
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ts"

    .line 1925
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object v0, v1, p2

    const/4 p2, 0x2

    aput-object p1, v1, p2

    return-object v1
.end method

.method public getLyrics(Ljava/lang/Long;J)Ljava/lang/String;
    .locals 2

    .line 1179
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getLyrics"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "lyrics_id"

    .line 1180
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1181
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "audio_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1182
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1183
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "text"

    .line 1184
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMarketAlbums(JLjava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 4208
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.getAlbums"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4209
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 4210
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 4211
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4212
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4213
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4214
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4215
    invoke-static {p1}, Lcom/perm/kate/api/MarketAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMarketCategories()Ljava/util/ArrayList;
    .locals 3

    .line 4319
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.getCategories"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 4320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4321
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 4322
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "items"

    .line 4323
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4324
    invoke-static {v0}, Lcom/perm/kate/api/MarketCategory;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 2

    .line 4236
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "item_id"

    .line 4237
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "owner_id"

    .line 4238
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p3, :cond_0

    .line 4240
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p1, "count"

    if-lez p4, :cond_1

    .line 4242
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p2, "start_comment_id"

    .line 4243
    invoke-virtual {v0, p2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4244
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4245
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "items"

    .line 4246
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 4247
    new-instance p4, Lcom/perm/kate/api/CommentList;

    invoke-direct {p4}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 4248
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p4, Lcom/perm/kate/api/CommentList;->count:I

    .line 4249
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 4251
    iget-object p5, p4, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p4
.end method

.method public getMarketItem(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 4307
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "item_ids"

    .line 4308
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "extended"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4310
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4311
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 4312
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4313
    invoke-static {p1}, Lcom/perm/kate/api/MarketItem;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMarketItems(JLjava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 4221
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4222
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "album_id"

    .line 4223
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 4224
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 4225
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 4226
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4227
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4228
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4229
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4230
    invoke-static {p1}, Lcom/perm/kate/api/MarketItem;->parseItems(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMessages(JILjava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 0

    .line 810
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "messages.getImportantMessages"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 812
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "count"

    invoke-virtual {p1, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p2, "preview_length"

    const-string p3, "0"

    .line 813
    invoke-virtual {p1, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "offset"

    .line 814
    invoke-virtual {p1, p2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 816
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "messages"

    .line 817
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 818
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 819
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesById(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 2529
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2530
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 2532
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 2533
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 2534
    invoke-direct {p0, p1, v0}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesDialogs(JIZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 854
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getConversations"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 856
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 858
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-eqz p4, :cond_2

    const-string p1, "filter"

    const-string p2, "unread"

    .line 860
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :cond_2
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 862
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 863
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 864
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 865
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseDialogs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMessagesHistory(JJJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 0

    .line 835
    new-instance p5, Lcom/perm/kate/api/Params;

    const-string p6, "messages.getHistory"

    invoke-direct {p5, p6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 836
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {p5, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 837
    invoke-virtual {p5, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p8, :cond_0

    .line 839
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {p5, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p1, "start_message_id"

    .line 840
    invoke-virtual {p5, p1, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "rev"

    .line 841
    invoke-virtual {p5, p1, p10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 843
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {p5, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "fields"

    const-string p2, "online"

    .line 844
    invoke-virtual {p5, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    invoke-direct {p0, p5}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 846
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 847
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 848
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getMirrors()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v6, "Ovk.getMirrors"

    invoke-direct {v0, v6}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v6, "response"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/perm/kate/api/Api;->instance_domain:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v2
.end method

.method public getMutual(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 8

    .line 544
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.getMutual"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "target_uid"

    .line 545
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "source_uid"

    .line 546
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 548
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 549
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 551
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    const-wide/16 v2, -0x1

    .line 553
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 554
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-eqz v7, :cond_0

    .line 555
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getNewPhotoTags(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 4100
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getNewTags"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "count"

    .line 4101
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "offset"

    .line 4102
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4103
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4104
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4105
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4107
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 4108
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 3

    .line 1106
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "filters"

    .line 1107
    invoke-virtual {v0, v1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p7, "start_time"

    .line 1108
    invoke-virtual {v0, p7, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_time"

    .line 1109
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 1111
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string p1, "start_from"

    .line 1112
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "source_ids"

    .line 1113
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "max_photos"

    .line 1114
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "device_info"

    .line 1116
    invoke-virtual {v0, p1, p11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-direct {p0, p9, p10, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1118
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    .line 1119
    invoke-static {p1, p2}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object p1

    return-object p1
.end method

.method public getNewsComments()Lcom/perm/kate/api/Newsfeed;
    .locals 3

    .line 1138
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "last_comments_count"

    const-string v2, "3"

    .line 1139
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "count"

    const-string v2, "50"

    .line 1140
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    .line 1142
    invoke-static {v0, v1}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object v0

    return-object v0
.end method

.method public getNoteComments(Ljava/lang/Long;Ljava/lang/Long;II)Lcom/perm/kate/api/CommentList;
    .locals 2

    .line 668
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "note_id"

    .line 669
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 670
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    if-lez p4, :cond_0

    .line 672
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p3, :cond_1

    .line 674
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    :cond_1
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 676
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "items"

    .line 677
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    .line 678
    new-instance p4, Lcom/perm/kate/api/CommentList;

    invoke-direct {p4}, Lcom/perm/kate/api/CommentList;-><init>()V

    .line 679
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p4, Lcom/perm/kate/api/CommentList;->count:I

    .line 680
    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 682
    invoke-virtual {p3, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 683
    invoke-static {v0}, Lcom/perm/kate/api/Comment;->parseNoteComment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    .line 684
    iget-object v1, p4, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p4
.end method

.method public getNotes(Ljava/lang/Long;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 1250
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notes.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 1251
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "note_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sort"

    .line 1253
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 1254
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 1255
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1256
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1257
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1258
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1259
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 1261
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 1262
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/json/JSONObject;

    .line 1263
    invoke-static {p4}, Lcom/perm/kate/api/Note;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Note;

    move-result-object p4

    .line 1264
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Lcom/perm/kate/api/Notifications;
    .locals 2

    .line 2516
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notifications.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "filters"

    .line 2517
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "start_time"

    .line 2518
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_time"

    .line 2519
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 2520
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "start_from"

    .line 2521
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2523
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2524
    invoke-static {p1}, Lcom/perm/kate/api/Notifications;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Notifications;

    move-result-object p1

    return-object p1
.end method

.method public getOnlineFriends(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 8

    .line 447
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.getOnline"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 448
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 449
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 450
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 453
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-wide/16 v3, -0x1

    .line 455
    invoke-virtual {p1, v2, v3, v4}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-eqz v7, :cond_0

    .line 457
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getOvkSettings()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/perm/kate/api/KException;
        }
    .end annotation

    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v2, "account.getOvkSettings"

    invoke-direct {v0, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string v2, "response"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public getPageUrl(JLjava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4534
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "pages.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4535
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "page_id"

    .line 4536
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "title"

    .line 4537
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4539
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "view_url"

    .line 4540
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 2

    .line 642
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "photo_id"

    .line 643
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 644
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    if-lez p4, :cond_0

    .line 646
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p3, :cond_1

    .line 648
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p2, "sort"

    const-string p3, "asc"

    .line 649
    invoke-virtual {v0, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "need_likes"

    const-string p3, "1"

    .line 650
    invoke-virtual {v0, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "start_comment_id"

    .line 651
    invoke-virtual {v0, p2, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    .line 653
    new-instance p3, Lcom/perm/kate/api/CommentList;

    invoke-direct {p3}, Lcom/perm/kate/api/CommentList;-><init>()V

    const-string p4, "response"

    .line 654
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "items"

    .line 655
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    .line 656
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p3, Lcom/perm/kate/api/CommentList;->count:I

    .line 657
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 659
    invoke-virtual {p4, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 660
    invoke-static {p5}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object p5

    .line 661
    iget-object v0, p3, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public getPhotoCountsByIdWithExecute(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2

    if-eqz p2, :cond_0

    const-string p2, ",\"user_id\":p@.user_id"

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 1659
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var p=API.photos.getById({\"photos\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"extended\":1}); return {\"pid\":p@.id,\"likes\":p@.likes,\"comments\":p@.comments,\"can_comment\":p@.can_comment,\"tags\":p@.tags"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "};"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1660
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string v0, "execute"

    invoke-direct {p2, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 1661
    invoke-virtual {p2, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1663
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 1666
    :cond_1
    invoke-static {p1}, Lcom/perm/kate/api/Photo;->parseCounts(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPhotoTagsById(Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 2233
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getTags"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 2234
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "photo_id"

    .line 2235
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2236
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 2237
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2240
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/perm/kate/api/Api;->parsePhotoTags(Lorg/json/JSONArray;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPhotos(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 2

    .line 590
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 591
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "album_id"

    .line 592
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "extended"

    const-string p2, "1"

    .line 593
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offset"

    .line 594
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 595
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "rev"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 599
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 600
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_1

    .line 602
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 603
    :cond_1
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 1

    .line 1644
    new-instance p3, Lcom/perm/kate/api/Params;

    const-string v0, "photos.getById"

    invoke-direct {p3, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "photos"

    .line 1645
    invoke-virtual {p3, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extended"

    .line 1646
    invoke-virtual {p3, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1648
    invoke-direct {p0, p3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1649
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1651
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1652
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistById(JJ)Lcom/perm/kate/api/AudioAlbum;
    .locals 2

    .line 2930
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.getPlaylistById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2931
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2932
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2933
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2934
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2935
    invoke-static {p1}, Lcom/perm/kate/api/AudioAlbum;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/AudioAlbum;

    move-result-object p1

    return-object p1
.end method

.method public getPodcasts(JLjava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 4924
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "podcasts.getEpisodes"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4925
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 4926
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 4927
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4928
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4929
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4930
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string p3, "items"

    .line 4933
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 4935
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_1

    .line 4936
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/json/JSONObject;

    .line 4937
    invoke-static {p4}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object p4

    .line 4938
    invoke-virtual {p4}, Lcom/perm/kate/api/Audio;->setPodcast()V

    .line 4939
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getPoll(JJZ)Lcom/perm/kate/api/VkPoll;
    .locals 2

    .line 2065
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2066
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "owner_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2067
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "poll_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_0

    const-string p1, "is_board"

    const-string p2, "1"

    .line 2069
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2071
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2072
    invoke-static {p1}, Lcom/perm/kate/api/VkPoll;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/VkPoll;

    move-result-object p1

    return-object p1
.end method

.method public getPollVoters(JJLjava/util/Collection;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 2

    .line 2102
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "polls.getVoters"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2103
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "owner_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2104
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "poll_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p9, :cond_0

    const-string p1, "is_board"

    const-string p2, "1"

    .line 2106
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    :cond_0
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "answer_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 2108
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 2109
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    .line 2110
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2112
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 2113
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "users"

    .line 2114
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2115
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2117
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getPrivacySettings()Lcom/perm/kate/api/PrivacySettings;
    .locals 2

    .line 4037
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.getPrivacySettings"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4038
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 4039
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4040
    invoke-static {v0}, Lcom/perm/kate/api/PrivacySettings;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySettings;

    move-result-object v0

    return-object v0
.end method

.method public getProducts(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 3423
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "store.getProducts"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "filters"

    .line 3424
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "type"

    .line 3425
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 3427
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3428
    :cond_0
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x0

    .line 3429
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3430
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3431
    invoke-static {p1}, Lcom/perm/kate/api/Product;->parseProducts(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getProfileInfo()Lcom/perm/kate/api/ProfileInfo;
    .locals 2

    .line 3392
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.getProfileInfo"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3393
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 3394
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3395
    invoke-static {v0}, Lcom/perm/kate/api/ProfileInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ProfileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getProfiles(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 401
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return-object v0

    .line 403
    :cond_3
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "users.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_ids"

    if-eqz p1, :cond_4

    .line 404
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 405
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p2, :cond_5

    .line 406
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 407
    invoke-virtual {p0, p2}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string p1, "fields"

    .line 408
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "name_case"

    .line 409
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 411
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 412
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 413
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getRecommendedNews(Ljava/lang/Long;JLjava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 3

    .line 1124
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.getRecommended"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "start_time"

    .line 1125
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_time"

    .line 1126
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    .line 1128
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string p1, "start_from"

    .line 1129
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "max_photos"

    .line 1130
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    invoke-direct {p0, p7, p8, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1132
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x0

    .line 1133
    invoke-static {p1, p2}, Lcom/perm/kate/api/Newsfeed;->parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/Newsfeed;

    move-result-object p1

    return-object p1
.end method

.method public getRequestsFriends(Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 11

    .line 1968
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.getRequests"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1969
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "extended"

    invoke-virtual {v0, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "out"

    .line 1970
    invoke-virtual {v0, v3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_0

    const-string p1, "suggested"

    .line 1972
    invoke-virtual {v0, p1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1973
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1974
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1975
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1976
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    .line 1978
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1980
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "user_id"

    const-wide/16 v6, -0x1

    .line 1982
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1983
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-eqz v10, :cond_2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "message"

    .line 1986
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v1

    const-string v5, "from"

    .line 1987
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1988
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v5, 0x2

    .line 1990
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 1992
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1993
    invoke-static {v4}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    .line 1996
    :cond_1
    :goto_1
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public getRequestsGroups(JLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 3796
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.getRequests"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3797
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    .line 3798
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "offset"

    .line 3799
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 3800
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3801
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3802
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 3803
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3804
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getServerTime()J
    .locals 2

    .line 2911
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "utils.getServerTime"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2912
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 2913
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStats(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3739
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stats.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "group_id"

    .line 3740
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "app_id"

    .line 3741
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "timestamp_from"

    .line 3742
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "timestamp_to"

    .line 3743
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3744
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3745
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3747
    invoke-static {p1}, Lcom/perm/kate/api/PeriodStats;->parsePeriods(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getStatus(Ljava/lang/Long;Ljava/lang/Long;)Lcom/perm/kate/api/VkStatus;
    .locals 2

    .line 1048
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "status.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 1049
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1050
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1051
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1052
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1053
    new-instance p2, Lcom/perm/kate/api/VkStatus;

    invoke-direct {p2}, Lcom/perm/kate/api/VkStatus;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "text"

    .line 1055
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/perm/kate/api/VkStatus;->text:Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getStickersKeywords()Lcom/perm/kate/api/StickersKeywords;
    .locals 8

    .line 4626
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "store.getStickersKeywords"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4627
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "aliases"

    invoke-virtual {v0, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "all_products"

    .line 4629
    invoke-virtual {v0, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "need_stickers"

    .line 4631
    invoke-virtual {v0, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    .line 4633
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "chunk"

    invoke-virtual {v0, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4634
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "response"

    .line 4635
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/StickersKeywords;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StickersKeywords;

    move-result-object v2

    .line 4637
    iget-object v5, v2, Lcom/perm/kate/api/StickersKeywords;->chunks_hash:Ljava/lang/String;

    const-string v6, "chunks_hash"

    invoke-virtual {v0, v6, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4639
    :goto_0
    iget v5, v2, Lcom/perm/kate/api/StickersKeywords;->chunks_count:I

    if-ge v1, v5, :cond_1

    .line 4640
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4641
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v5

    .line 4642
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/perm/kate/api/StickersKeywords;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/StickersKeywords;

    move-result-object v5

    .line 4643
    iget-object v5, v5, Lcom/perm/kate/api/StickersKeywords;->map:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4644
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4645
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 4646
    invoke-static {v2, v6, v7}, Lcom/perm/kate/api/StickersKeywords;->addToMap(Lcom/perm/kate/api/StickersKeywords;[ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getStories(Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 3549
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3550
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3551
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3552
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 3553
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3554
    invoke-static {p1}, Lcom/perm/kate/api/Story;->parseStories(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getStoriesById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 3559
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "stories"

    .line 3560
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3562
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 3563
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3564
    invoke-static {p1}, Lcom/perm/kate/api/Story;->parseStoriesById(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;)Lcom/perm/kate/api/InterestingPages;
    .locals 1

    .line 2006
    new-instance p4, Lcom/perm/kate/api/Params;

    const-string v0, "users.getSubscriptions"

    invoke-direct {p4, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "user_id"

    .line 2007
    invoke-virtual {p4, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p2, :cond_0

    .line 2010
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {p4, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p3, :cond_1

    .line 2012
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {p4, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2013
    :cond_1
    invoke-direct {p0, p4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2014
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2015
    invoke-static {p1}, Lcom/perm/kate/api/InterestingPages;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/InterestingPages;

    move-result-object p1

    return-object p1
.end method

.method public getSuggestions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2819
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.getSuggestions"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "filter"

    .line 2820
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fields"

    .line 2821
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2823
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2824
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2825
    invoke-static {p1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getUniversities(I)Ljava/util/ArrayList;
    .locals 3

    .line 4989
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "database.getUniversities"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4991
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "city_id"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4992
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4993
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "items"

    .line 4994
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4996
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4998
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/City;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/City;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getUnreadDialogsCount()I
    .locals 3

    .line 4547
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "execute"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const-string v2, "return API.messages.getConversations({\"count\": 0}).unread_count;"

    .line 4548
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4549
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 4550
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserGroups(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 1671
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "extended"

    const-string v2, "1"

    .line 1672
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fields"

    .line 1673
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "user_id"

    .line 1674
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 1675
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 1676
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "filter"

    .line 1677
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1679
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string p3, "response"

    .line 1680
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p3, "items"

    .line 1681
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 1685
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getUserPhotos(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 2

    .line 609
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getUserPhotos"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 610
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    xor-int/2addr p4, p1

    .line 611
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v1, "sort"

    invoke-virtual {v0, v1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "count"

    .line 612
    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "offset"

    .line 613
    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 616
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 617
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    .line 619
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 620
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/ArrayList;
    .locals 2

    .line 1190
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "videos"

    .line 1191
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "owner_id"

    .line 1192
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "width"

    .line 1193
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 1194
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 1195
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "album_id"

    .line 1196
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    if-eqz p7, :cond_0

    .line 1198
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "extended"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1199
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1200
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1201
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    return-object p2

    :cond_1
    const-string p3, "items"

    .line 1204
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    .line 1206
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_2

    .line 1207
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/json/JSONObject;

    .line 1208
    invoke-static {p4}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object p4

    .line 1209
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public getVideoAlbums(JLjava/lang/Integer;Ljava/lang/Integer;Z)Ljava/util/ArrayList;
    .locals 2

    .line 2966
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.getAlbums"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2967
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    .line 2968
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 2969
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p5, :cond_0

    const/4 p1, 0x1

    .line 2971
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "need_system"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2972
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2973
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2974
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2975
    invoke-static {p1}, Lcom/perm/kate/api/AudioAlbum;->parseAlbums(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getVideoComments(JLjava/lang/Long;IILjava/lang/Long;)Lcom/perm/kate/api/CommentList;
    .locals 2

    .line 691
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 692
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 693
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    if-lez p5, :cond_0

    .line 695
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p4, :cond_1

    .line 697
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p2, "need_likes"

    const-string p3, "1"

    .line 698
    invoke-virtual {v0, p2, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "start_comment_id"

    .line 699
    invoke-virtual {v0, p2, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 700
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    .line 701
    new-instance p3, Lcom/perm/kate/api/CommentList;

    invoke-direct {p3}, Lcom/perm/kate/api/CommentList;-><init>()V

    const-string p4, "response"

    .line 702
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p4, "items"

    .line 703
    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p4

    .line 704
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p3, Lcom/perm/kate/api/CommentList;->count:I

    .line 705
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 707
    invoke-virtual {p4, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 708
    invoke-static {p5}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object p5

    .line 709
    iget-object p6, p3, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public getWallComment(JJ)Lcom/perm/kate/api/Comment;
    .locals 2

    .line 1549
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.getComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1550
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1551
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p1, 0xa

    .line 1552
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "thread_items_count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1554
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1555
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1556
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;J)Lcom/perm/kate/api/CommentList;
    .locals 2

    .line 1515
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.getComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "post_id"

    .line 1516
    invoke-virtual {v0, v1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "owner_id"

    .line 1517
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-lez p3, :cond_0

    .line 1525
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-lez p4, :cond_1

    .line 1527
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const-string p1, "preview_length"

    const-string p2, "0"

    .line 1528
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "need_likes"

    const-string p2, "1"

    .line 1529
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    const-string p1, "sort"

    const-string p2, "desc"

    .line 1531
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p1, "start_comment_id"

    .line 1532
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 p1, 0xa

    .line 1533
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "thread_items_count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 p1, 0x0

    cmp-long p3, p7, p1

    if-lez p3, :cond_3

    .line 1535
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1536
    :cond_3
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1537
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1538
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 1539
    new-instance p3, Lcom/perm/kate/api/CommentList;

    invoke-direct {p3}, Lcom/perm/kate/api/CommentList;-><init>()V

    const-string p4, "current_level_count"

    .line 1540
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p3, Lcom/perm/kate/api/CommentList;->count:I

    .line 1541
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_4

    .line 1543
    iget-object p5, p3, Lcom/perm/kate/api/CommentList;->comments:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/json/JSONObject;

    invoke-static {p6}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    return-object p3
.end method

.method public getWallCount(JZ)Ljava/lang/Integer;
    .locals 2

    if-eqz p3, :cond_0

    const-string p3, ", filter: \"owner\""

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 3987
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var p = API.wall.get({owner_id: %d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "});return p.count;"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3992
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3993
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string p3, "execute"

    invoke-direct {p2, p3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    .line 3994
    invoke-virtual {p2, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3995
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3996
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 3997
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getWallMessage(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4

    .line 3187
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.getById"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3188
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "posts"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3191
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3193
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 3195
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 3196
    invoke-static {v3}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v3

    .line 3197
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getWallMessages(Ljava/lang/Long;IILjava/lang/String;)Lcom/perm/kate/api/WallResponse;
    .locals 2

    .line 1079
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.get"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 1080
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "count"

    if-lez p2, :cond_0

    .line 1082
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "offset"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p2, "filter"

    .line 1084
    invoke-virtual {v0, p2, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 1087
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 1088
    new-instance p3, Lcom/perm/kate/api/WallResponse;

    invoke-direct {p3}, Lcom/perm/kate/api/WallResponse;-><init>()V

    .line 1089
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p3, Lcom/perm/kate/api/WallResponse;->total_count:Ljava/lang/Integer;

    const-string p1, "items"

    .line 1090
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1091
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p3, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 1092
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p2

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p2, :cond_1

    .line 1094
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 1095
    invoke-static {v0}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    .line 1096
    iget-object v1, p3, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public getWallNotesCount(J)[Ljava/lang/Integer;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 4006
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const-string p1, "var p=API.wall.get({owner_id:%d});var n=API.notes.get({user_id:%d});return [p.count,n.count];"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4007
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 4008
    invoke-virtual {v1, v2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4009
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "response"

    .line 4010
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 4012
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 4013
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v3

    .line 4014
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    :cond_0
    return-object v1
.end method

.method public getWallOffsetByDate(JJI)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 4598
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "var o1=0;var o2=%3$d;while(o2-o1>1){var o_new=(o1+o2)/2;var post=API.wall.get({\"offset\":o_new, \"owner_id\":%1$d}).items[0];if(post.date<%2$d)    o2=o_new;else    o1=o_new;}return o1;"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4599
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string p3, "execute"

    invoke-direct {p2, p3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p3, "code"

    .line 4600
    invoke-virtual {p2, p3, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4601
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4602
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 4603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public groupsApproveRequest(JJ)Ljava/lang/Integer;
    .locals 2

    .line 3809
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.approveRequest"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3810
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3811
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3812
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3813
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public groupsEditManager(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3827
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.editManager"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3828
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3829
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "role"

    .line 3830
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_contact"

    .line 3831
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "contact_position"

    .line 3832
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "contact_phone"

    .line 3833
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "contact_email"

    .line 3834
    invoke-virtual {v0, p1, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3835
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3836
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public groupsInvite(JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 3728
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, ""

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 3729
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "API.groups.invite({group_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",user_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3730
    :cond_0
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "execute"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 3731
    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3732
    invoke-direct {p0, p4, p5, p1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p2, 0x1

    .line 3733
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 3734
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public groupsRemoveUser(JJ)Ljava/lang/Integer;
    .locals 2

    .line 3818
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.removeUser"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3819
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3820
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3821
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3822
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public ignoreAd(Ljava/lang/String;Z)Z
    .locals 2

    .line 4813
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "adsint.hideAd"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_data"

    .line 4814
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "source"

    goto :goto_0

    :cond_0
    const-string p1, "ad"

    :goto_0
    const-string p2, "object_type"

    .line 4815
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4816
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4817
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "success"

    .line 4818
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    return p2
.end method

.method public ignoreItem(Ljava/lang/String;JJ)Z
    .locals 2

    .line 4555
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.ignoreItem"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 4556
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4557
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4558
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4559
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4560
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public isFriend(JLjava/lang/Integer;)I
    .locals 2

    .line 3479
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "friends.areFriends"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3481
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3482
    invoke-virtual {p0, v1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "need_sign"

    .line 3483
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3484
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3485
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3487
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-lez p3, :cond_0

    .line 3488
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "friend_status"

    .line 3489
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public joinGroup(JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2451
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.join"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2452
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "not_sure"

    .line 2453
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2454
    invoke-direct {p0, p4, p5, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2455
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2456
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2458
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public leaveGroup(J)Ljava/lang/String;
    .locals 2

    .line 2464
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.leave"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2465
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2466
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2467
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2469
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public makeMainProfilePhoto(J)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 3976
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "return API.photos.reorderPhotos({photo_id: %d,after:API.photos.get({album_id: \"profile\", rev: 1, count: 1}).items[0].id});"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3977
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string v0, "execute"

    invoke-direct {p2, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 3978
    invoke-virtual {p2, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3979
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3980
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 3981
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public markAsRead(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1023
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.markAsRead"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "start_message_id"

    .line 1025
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "peer_id"

    .line 1026
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1027
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1028
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1030
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public markNotificationsAsViewed()Ljava/lang/Boolean;
    .locals 2

    .line 3074
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "notifications.markAsViewed"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3075
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 3076
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3077
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public marketAlbumGetPhotoUploadServer(J)Ljava/lang/String;
    .locals 2

    .line 4457
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getMarketAlbumUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4458
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4459
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4460
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 4461
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public marketGetPhotoUploadServer(JLjava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 4428
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getMarketUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4429
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "main_photo"

    .line 4430
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4434
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4435
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 4436
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public messageMarkAsImportant(Ljava/util/Collection;Z)V
    .locals 2

    .line 3496
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.markAsImportant"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3497
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "message_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "important"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3499
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public messagesGetChatPreview(Ljava/lang/String;)Lcom/perm/kate/api/ChatPreview;
    .locals 2

    .line 4885
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.getChatPreview"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "link"

    .line 4886
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fields"

    const-string v1, "photo_100"

    .line 4887
    invoke-virtual {v0, p1, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4888
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4889
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 4890
    invoke-static {p1}, Lcom/perm/kate/api/ChatPreview;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ChatPreview;

    move-result-object p1

    return-object p1
.end method

.method public messagesJoinChatByInviteLink(Ljava/lang/String;)J
    .locals 2

    .line 4895
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.joinChatByInviteLink"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "link"

    .line 4896
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4897
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4898
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "chat_id"

    .line 4899
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public messagesPin(JJ)Ljava/lang/String;
    .locals 2

    .line 4866
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.pin"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4867
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p4, "message_id"

    invoke-virtual {v0, p4, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4868
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4869
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return-object p1
.end method

.method public messagesUnpin(J)Ljava/lang/String;
    .locals 2

    .line 4876
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.unpin"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4877
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4878
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return-object p1
.end method

.method public movePhoto(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 2

    .line 3641
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.move"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3642
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3643
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "target_album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3644
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3645
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3646
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public movePhotos(Ljava/util/ArrayList;J)I
    .locals 5

    .line 4699
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/IdsPair;

    .line 4700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "API.photos.move({owner_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/IdsPair;->owner_id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",photo_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, v1, Lcom/perm/kate/api/IdsPair;->id:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",target_album_id:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "});"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4701
    :cond_0
    new-instance p1, Lcom/perm/kate/api/Params;

    const-string p2, "execute"

    invoke-direct {p1, p2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string p2, "code"

    .line 4702
    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 4703
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return p1
.end method

.method public moveToAudioAlbum(Ljava/util/ArrayList;JJ)Ljava/lang/Integer;
    .locals 2

    .line 3168
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.addToPlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3169
    invoke-virtual {p0, p1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "audio_ids"

    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3170
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3171
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3172
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3173
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public newsfeedGetMentions(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 2

    .line 3279
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.getMentions"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3280
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3282
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3283
    invoke-direct {p0, p6, p7, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3284
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3285
    invoke-static {p1}, Lcom/perm/kate/api/Newsfeed;->parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/Newsfeed;

    move-result-object p1

    return-object p1
.end method

.method public newsfeedUnsubscribe(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Integer;
    .locals 2

    .line 3204
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.unsubscribe"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 3205
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "owner_id"

    .line 3206
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "item_id"

    .line 3207
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3208
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3209
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public openTopic(JJ)Z
    .locals 2

    .line 4761
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.openTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4762
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4763
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4764
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4765
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public photoCopy(JJLjava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 3332
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.copy"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3333
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3334
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "access_key"

    .line 3335
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3336
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3337
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public photoEdit(Ljava/lang/Long;JLjava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3010
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.edit"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3011
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3012
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "caption"

    .line 3013
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3014
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3015
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 3681
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getChatUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3682
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "crop_x"

    .line 3683
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "crop_y"

    .line 3684
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "crop_width"

    .line 3685
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3686
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3687
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 3688
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public photosGetMessagesUploadServer()Ljava/lang/String;
    .locals 2

    .line 1331
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getMessagesUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1332
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 1333
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload_url"

    .line 1334
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public photosGetOwnerPhotoUploadServer(Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1339
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getOwnerPhotoUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "owner_id"

    .line 1341
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1342
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 1343
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "upload_url"

    .line 1344
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public photosGetUploadServer(JLjava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1283
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1284
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1285
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1286
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1287
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 1288
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public photosGetWallUploadServer(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1313
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.getWallUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "user_id"

    .line 1314
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1315
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1316
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1317
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "upload_url"

    .line 1318
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public photosSave(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1349
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.save"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "server"

    .line 1350
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photos_list"

    .line 1351
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "album_id"

    .line 1352
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1353
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "hash"

    .line 1354
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "caption"

    .line 1355
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1357
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1358
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1359
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public pinPost(Ljava/lang/Long;J)Ljava/lang/Integer;
    .locals 2

    .line 3651
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.pin"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3652
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3653
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3654
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3655
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public putPhotoTag(Lcom/perm/kate/api/PhotoTag;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2263
    :cond_0
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v2, "photos.putTag"

    invoke-direct {v1, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2264
    iget-object v2, p1, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    const-string v3, "owner_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2265
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "photo_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2266
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {v1, v3, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2267
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->x:D

    const-string v4, "x"

    invoke-virtual {v1, v4, v2, v3}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2268
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->x2:D

    const-string v4, "x2"

    invoke-virtual {v1, v4, v2, v3}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2269
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->y:D

    const-string v4, "y"

    invoke-virtual {v1, v4, v2, v3}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2270
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->y2:D

    const-string p1, "y2"

    invoke-virtual {v1, p1, v2, v3}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 2271
    invoke-direct {p0, p2, p3, v1}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 2272
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2273
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2275
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public refreshToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4732
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "auth.refreshToken"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "receipt"

    .line 4733
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4734
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 4735
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public registerAdEvents(Ljava/lang/String;)V
    .locals 2

    .line 4824
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "adsint.registerAdEvents"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "events"

    .line 4825
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4826
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public registerDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2494
    new-instance p4, Lcom/perm/kate/api/Params;

    const-string v0, "account.registerDevice"

    invoke-direct {p4, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "token"

    .line 2495
    invoke-virtual {p4, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_id"

    .line 2496
    invoke-virtual {p4, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_model"

    .line 2497
    invoke-virtual {p4, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "system_version"

    .line 2498
    invoke-virtual {p4, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "settings"

    .line 2499
    invoke-virtual {p4, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "push_provider"

    const-string p2, "fcm"

    .line 2500
    invoke-virtual {p4, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-direct {p0, p4}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2503
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeFromAudioAlbum(Ljava/lang/String;JJ)Ljava/lang/Integer;
    .locals 2

    .line 3177
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.removeFromPlaylist"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "audio_ids"

    .line 3178
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "playlist_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3180
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3181
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3182
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public removeMarketFromAlbum(JJLjava/util/ArrayList;)Z
    .locals 2

    .line 4384
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.removeFromAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4385
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4386
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "item_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4387
    invoke-virtual {p0, p5}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "album_ids"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4388
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 4389
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removePhotoTag(Ljava/lang/Long;JJ)Ljava/lang/Integer;
    .locals 2

    .line 4124
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.removeTag"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 4125
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4126
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4127
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "tag_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4128
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4129
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromChat(JJ)Ljava/lang/Integer;
    .locals 2

    .line 2799
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.removeChatUser"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2800
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2801
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "member_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2802
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2803
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public removeUserFromGroup(JJ)Z
    .locals 2

    .line 4575
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.removeUser"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4576
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4577
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4578
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4579
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;)I
    .locals 2

    .line 3855
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.removeFromAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3856
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "target_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3857
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "owner_id"

    .line 3858
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "video_id"

    .line 3859
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3860
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3861
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public removeWallPost(Ljava/lang/Long;J)Ljava/lang/Boolean;
    .locals 2

    .line 1691
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.delete"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1692
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "owner_id"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "post_id"

    .line 1693
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1694
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1695
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1696
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public reorderAlbums(JJLjava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 5004
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.reorderAlbums"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 5005
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5006
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "before"

    .line 5007
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "after"

    .line 5008
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5009
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public reorderPhotos(JJLjava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .line 3020
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.reorderPhotos"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3021
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3022
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "before"

    .line 3023
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "after"

    .line 3024
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3025
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 4804
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "adsint.reportAd"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "ad_data"

    .line 4805
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "reason"

    .line 4806
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4807
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4808
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportMarketComment(JJI)Ljava/lang/Integer;
    .locals 2

    .line 4284
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "market.reportComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4285
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4286
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4287
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4288
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4289
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportPhoto(JJI)Ljava/lang/Integer;
    .locals 2

    .line 3611
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.report"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3612
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "photo_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3613
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3614
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3615
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3616
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportPhotoComment(JJI)Ljava/lang/Integer;
    .locals 2

    .line 3621
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.reportComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3622
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3623
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3624
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3625
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3626
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportPost(JJI)Ljava/lang/Integer;
    .locals 2

    .line 3569
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.reportPost"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3570
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3571
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3572
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3573
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3574
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportPostComment(JJI)Ljava/lang/Integer;
    .locals 2

    .line 3579
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.reportComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3580
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3581
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3582
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3583
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3584
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportUser(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3631
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "users.report"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3632
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "type"

    .line 3633
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "comment"

    .line 3634
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3635
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3636
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportVideo(JJILjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3589
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.report"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3590
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3591
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3592
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "comment"

    .line 3593
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "search_query"

    .line 3594
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3595
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3596
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public reportVideoComment(JJI)Ljava/lang/Integer;
    .locals 2

    .line 3601
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.reportComment"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3602
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "comment_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3603
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3604
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "reason"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3605
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3606
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public repostWallPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/WallMessage;
    .locals 2

    .line 1498
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.repost"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "group_id"

    .line 1499
    invoke-virtual {v0, v1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "message"

    .line 1500
    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "object"

    .line 1501
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "publish_date"

    .line 1502
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1503
    invoke-direct {p0, p5, p6, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    const/4 p1, 0x1

    .line 1504
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1505
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1506
    new-instance p2, Lcom/perm/kate/api/WallMessage;

    invoke-direct {p2}, Lcom/perm/kate/api/WallMessage;-><init>()V

    const-string p3, "post_id"

    .line 1507
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/perm/kate/api/WallMessage;->id:J

    const-string p3, "likes_count"

    .line 1508
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p2, Lcom/perm/kate/api/WallMessage;->like_count:I

    const-string p3, "reposts_count"

    .line 1509
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    return-object p2
.end method

.method public resolveScreenName(Ljava/lang/String;)Lcom/perm/kate/api/ScreenNameInfo;
    .locals 2

    .line 3383
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "utils.resolveScreenName"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "screen_name"

    .line 3384
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3385
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3386
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3387
    invoke-static {p1}, Lcom/perm/kate/api/ScreenNameInfo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ScreenNameInfo;

    move-result-object p1

    return-object p1
.end method

.method public revealWallPost(J)Z
    .locals 2

    .line 4980
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.reveal"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4981
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4982
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4983
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Audio;
    .locals 2

    .line 1380
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "audio.save"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "server"

    .line 1381
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "audio"

    .line 1382
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 1383
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "artist"

    .line 1384
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "title"

    .line 1385
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1387
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1388
    invoke-static {p1}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    return-object p1
.end method

.method public saveDoc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 3052
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.save"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 3053
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3054
    invoke-direct {p0, p2, p3, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3055
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3056
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "type"

    .line 3057
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "audio_message"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3058
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/AudioMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "doc"

    .line 3059
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/api/Document;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Document;

    move-result-object p1

    return-object p1
.end method

.method public saveMarketAlbumPhoto(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 4466
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.saveMarketAlbumPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4467
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "photo"

    .line 4468
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "server"

    .line 4469
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 4470
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4472
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4473
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4474
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public saveMarketPhoto(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 4441
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.saveMarketPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4442
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "photo"

    .line 4443
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "server"

    .line 4444
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 4445
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4449
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4450
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4451
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public saveMessagesPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1393
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.saveMessagesPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "server"

    .line 1394
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo"

    .line 1395
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 1396
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1398
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1399
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1400
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public saveOwnerPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1406
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.saveOwnerPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "server"

    .line 1407
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo"

    .line 1408
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 1409
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1411
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 1412
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "photo_src"

    .line 1413
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "photo_hash"

    .line 1414
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    aput-object p2, v0, p1

    return-object v0
.end method

.method public saveProfileInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/perm/kate/api/SaveProdfileInfoResult;
    .locals 2

    .line 3402
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.saveProfileInfo"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "first_name"

    .line 3403
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_name"

    .line 3404
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "maiden_name"

    .line 3405
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "cancel_request_id"

    .line 3406
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "sex"

    .line 3407
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "relation"

    .line 3408
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "relation_partner_id"

    .line 3409
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "bdate"

    .line 3410
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bdate_visibility"

    .line 3411
    invoke-virtual {v0, p1, p9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "home_town"

    .line 3412
    invoke-virtual {v0, p1, p10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "country_id"

    .line 3413
    invoke-virtual {v0, p1, p11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "city_id"

    .line 3414
    invoke-virtual {v0, p1, p12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    .line 3415
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3416
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3417
    invoke-static {p1}, Lcom/perm/kate/api/SaveProdfileInfoResult;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/SaveProdfileInfoResult;

    move-result-object p1

    return-object p1
.end method

.method public saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)[Ljava/lang/Object;
    .locals 2

    .line 2205
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.save"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "name"

    .line 2206
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "description"

    .line 2207
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "group_id"

    .line 2208
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "privacy_view"

    .line 2209
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "privacy_comment"

    .line 2210
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p6, :cond_0

    .line 2212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "is_private"

    invoke-virtual {v0, p3, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    const-string p2, "link"

    .line 2213
    invoke-virtual {v0, p2, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p2

    const-string p3, "response"

    .line 2215
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    const-string p5, "upload_url"

    .line 2216
    invoke-virtual {p2, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    aput-object p5, p3, p4

    const-string p4, "video_id"

    invoke-virtual {p2, p4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p3
.end method

.method public saveWallPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 2

    .line 1365
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "photos.saveWallPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "server"

    .line 1366
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "photo"

    .line 1367
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "hash"

    .line 1368
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "user_id"

    .line 1369
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "group_id"

    .line 1370
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x1

    .line 1372
    invoke-direct {p0, v0, p1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1373
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1374
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parsePhotos(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    .line 1561
    new-instance p2, Lcom/perm/kate/api/Params;

    const-string v0, "audio.search"

    invoke-direct {p2, v0}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v0, "q"

    .line 1562
    invoke-virtual {p2, v0, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "lyrics"

    .line 1565
    invoke-virtual {p2, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "performer_only"

    .line 1566
    invoke-virtual {p2, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 1567
    invoke-virtual {p2, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 1568
    invoke-virtual {p2, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1570
    invoke-direct {p0, p7, p8, p2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1571
    invoke-direct {p0, p2}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1572
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1573
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1574
    invoke-direct {p0, p1}, Lcom/perm/kate/api/Api;->parseAudioList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchDialogs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 2873
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.searchConversations"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 2874
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fields"

    .line 2875
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 2876
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 2877
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2878
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2879
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 2880
    invoke-static {p1}, Lcom/perm/kate/api/Message;->parseSearchedDialogs(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchDocs(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 2

    .line 4480
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "docs.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 4481
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 4482
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "offset"

    .line 4483
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4484
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4485
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4486
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4487
    invoke-static {p1}, Lcom/perm/kate/api/Document;->parseDocs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchGroup(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2475
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "groups.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 2476
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "count"

    .line 2477
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 2478
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "fields"

    .line 2479
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2480
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2481
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2482
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 2483
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    .line 2487
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/api/Group;->parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 2853
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 2854
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "peer_id"

    .line 2855
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2856
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2857
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "preview_length"

    .line 2858
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "date"

    .line 2859
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 2862
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "fields"

    const-string p2, "online"

    .line 2863
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2864
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2865
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 2866
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 2867
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/api/Api;->parseMessages(Lorg/json/JSONArray;Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public searchNews(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;JDDLjava/lang/String;Ljava/lang/String;)Lcom/perm/kate/api/Newsfeed;
    .locals 2

    .line 3259
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "newsfeed.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 3260
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "start_from"

    .line 3261
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3262
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "extended"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "start_time"

    .line 3263
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "end_time"

    .line 3264
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-eqz p3, :cond_0

    .line 3266
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-wide/16 p1, 0x0

    cmpl-double p3, p8, p1

    if-eqz p3, :cond_1

    const-string p3, "latitude"

    .line 3268
    invoke-virtual {v0, p3, p8, p9}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    :cond_1
    cmpl-double p3, p10, p1

    if-eqz p3, :cond_2

    const-string p1, "longitude"

    .line 3270
    invoke-virtual {v0, p1, p10, p11}, Lcom/perm/kate/api/Params;->putDouble(Ljava/lang/String;D)V

    .line 3272
    :cond_2
    invoke-direct {p0, p12, p13, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3273
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    .line 3274
    invoke-static {p1}, Lcom/perm/kate/api/Newsfeed;->parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/Newsfeed;

    move-result-object p1

    return-object p1
.end method

.method public searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)Ljava/util/ArrayList;
    .locals 16

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    move-object/from16 v11, p16

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    .line 1789
    new-instance v15, Lcom/perm/kate/api/Params;

    const-string v14, "users.search"

    invoke-direct {v15, v14}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v14, "q"

    move-object/from16 v13, p1

    .line 1790
    invoke-virtual {v15, v14, v13}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "count"

    move-object/from16 v14, p3

    .line 1791
    invoke-virtual {v15, v13, v14}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "offset"

    move-object/from16 v14, p4

    .line 1792
    invoke-virtual {v15, v13, v14}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "fields"

    move-object/from16 v14, p2

    .line 1793
    invoke-virtual {v15, v13, v14}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_0

    const-string v13, "sort"

    .line 1795
    invoke-virtual {v15, v13, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 1796
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "city"

    .line 1797
    invoke-virtual {v15, v0, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 1798
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "country"

    .line 1799
    invoke-virtual {v15, v0, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v0, "university"

    const-wide/16 v1, 0x0

    cmp-long v13, p28, v1

    if-lez v13, :cond_3

    .line 1801
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v15, v0, v13}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    if-eqz v3, :cond_4

    .line 1802
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    const-string v13, "hometown"

    .line 1803
    invoke-virtual {v15, v13, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v4, :cond_5

    .line 1804
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "university_country"

    .line 1805
    invoke-virtual {v15, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eqz v5, :cond_6

    .line 1806
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    .line 1807
    invoke-virtual {v15, v0, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    if-eqz v6, :cond_7

    .line 1808
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "university_year"

    .line 1809
    invoke-virtual {v15, v0, v6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    if-eqz v7, :cond_8

    .line 1810
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    const-string v0, "sex"

    .line 1811
    invoke-virtual {v15, v0, v7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    if-eqz v8, :cond_9

    .line 1812
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_9

    const-string v0, "status"

    .line 1813
    invoke-virtual {v15, v0, v8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_9
    if-eqz v9, :cond_a

    .line 1814
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    const-string v0, "age_from"

    .line 1815
    invoke-virtual {v15, v0, v9}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_a
    if-eqz v10, :cond_b

    .line 1816
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "age_to"

    .line 1817
    invoke-virtual {v15, v0, v10}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    if-eqz v11, :cond_c

    .line 1818
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    const-string v0, "birth_day"

    .line 1819
    invoke-virtual {v15, v0, v11}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c
    if-eqz v12, :cond_d

    .line 1820
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_d

    const-string v0, "birth_month"

    .line 1821
    invoke-virtual {v15, v0, v12}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    move-object/from16 v0, p18

    if-eqz v0, :cond_e

    .line 1822
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_e

    const-string v3, "birth_year"

    .line 1823
    invoke-virtual {v15, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_e
    move-object/from16 v0, p19

    if-eqz v0, :cond_f

    .line 1824
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_f

    const-string v3, "online"

    .line 1825
    invoke-virtual {v15, v3, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_f
    move-object/from16 v0, p20

    move-object v3, v15

    if-eqz v0, :cond_10

    .line 1826
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_10

    const-string v4, "has_photo"

    .line 1827
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_10
    move-object/from16 v0, p21

    if-eqz v0, :cond_11

    .line 1828
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_11

    const-string v4, "school_country"

    .line 1829
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    move-object/from16 v0, p22

    if-eqz v0, :cond_12

    .line 1830
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_12

    const-string v4, "school_city"

    .line 1831
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_12
    move-object/from16 v0, p23

    if-eqz v0, :cond_13

    .line 1832
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_13

    const-string v4, "school"

    .line 1833
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_13
    move-object/from16 v0, p24

    if-eqz v0, :cond_14

    .line 1834
    invoke-virtual/range {p24 .. p24}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_14

    const-string v4, "school_year"

    .line 1835
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_14
    move-object/from16 v0, p25

    if-eqz v0, :cond_15

    .line 1836
    invoke-virtual/range {p25 .. p25}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_15

    const-string v4, "religion"

    .line 1837
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    move-object/from16 v0, p26

    if-eqz v0, :cond_16

    .line 1838
    invoke-virtual/range {p26 .. p26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    const-string v4, "company"

    .line 1839
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p27

    if-eqz v0, :cond_17

    .line 1840
    invoke-virtual/range {p27 .. p27}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17

    const-string v4, "position"

    .line 1841
    invoke-virtual {v3, v4, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    move-object/from16 v0, p30

    if-eqz v0, :cond_18

    .line 1842
    invoke-virtual/range {p30 .. p30}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_18

    const-string v1, "group_id"

    .line 1843
    invoke-virtual {v3, v1, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_18
    move-object/from16 v0, p0

    .line 1844
    invoke-direct {v0, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "response"

    .line 1845
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "items"

    .line 1846
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1847
    invoke-static {v1}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public searchUserExtended(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)Ljava/util/ArrayList;
    .locals 8

    move-object v0, p2

    move-object v1, p4

    .line 1855
    invoke-static {p1}, Lcom/perm/utils/Utils;->parseProfileId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1856
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 1857
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Search with uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Kate.Api"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "var a=API.users.search({\"q\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\",\"count\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",\"count\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",\"fields\":\""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"});"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1859
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "var b=API.users.get({\"user_ids\":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "return b+a.items;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1861
    new-instance v1, Lcom/perm/kate/api/Params;

    const-string v2, "execute"

    invoke-direct {v1, v2}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v2, "code"

    .line 1862
    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p0

    .line 1863
    invoke-direct {p0, v1}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 1864
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1865
    invoke-static {v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    .line 1867
    invoke-virtual/range {p0 .. p30}, Lcom/perm/kate/api/Api;->searchUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public searchVideo(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 1761
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "q"

    .line 1762
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sort"

    .line 1763
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "hd"

    .line 1764
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "count"

    .line 1765
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "offset"

    .line 1766
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "adult"

    .line 1767
    invoke-virtual {v0, p1, p6}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "filters"

    .line 1768
    invoke-virtual {v0, p1, p7}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1770
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 1771
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1772
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    .line 1774
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 1775
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/json/JSONObject;

    .line 1776
    invoke-static {p4}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object p4

    .line 1777
    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public searchWall(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IILjava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4

    .line 3505
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.search"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    .line 3507
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string p1, "domain"

    .line 3508
    invoke-virtual {v0, p1, p3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "query"

    .line 3509
    invoke-virtual {v0, p1, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "owners_only"

    .line 3510
    invoke-virtual {v0, p1, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez p6, :cond_1

    .line 3512
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "count"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3513
    :cond_1
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "offset"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "extended"

    .line 3514
    invoke-virtual {v0, p1, p8}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3516
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3517
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 3518
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 3519
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3520
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    .line 3522
    invoke-virtual {p1, p4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/json/JSONObject;

    .line 3523
    invoke-static {p5}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object p5

    .line 3524
    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public sendMessage(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object/from16 v1, p8

    .line 986
    new-instance v2, Lcom/perm/kate/api/Params;

    const-string v3, "messages.send"

    invoke-direct {v2, v3}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 987
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object v4, p1

    invoke-direct {p0, p1, v3}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "peer_id"

    invoke-virtual {v2, v4, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "message"

    move-object v4, p4

    .line 988
    invoke-virtual {v2, v3, p4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "title"

    move-object v4, p5

    .line 989
    invoke-virtual {v2, v3, p5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    move-object/from16 v4, p6

    .line 990
    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, p7

    .line 991
    invoke-virtual {p0, v3}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "attachment"

    invoke-virtual {v2, v4, v3}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 993
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    .line 994
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "reply_to"

    invoke-virtual {v2, v5, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 996
    :cond_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/api/Api;->arrayToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "forward_messages"

    invoke-virtual {v2, v5, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "lat"

    move-object/from16 v5, p9

    .line 997
    invoke-virtual {v2, v1, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sticker_id"

    move-object/from16 v5, p11

    .line 998
    invoke-virtual {v2, v1, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "long"

    move-object/from16 v5, p10

    .line 999
    invoke-virtual {v2, v1, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payload"

    move-object/from16 v5, p12

    .line 1000
    invoke-virtual {v2, v1, v5}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v5, "random_id"

    invoke-virtual {v2, v5, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v1, p13

    move-object/from16 v5, p14

    .line 1006
    invoke-direct {p0, v1, v5, v2}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1007
    invoke-direct {p0, v2, v3}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "response"

    .line 1009
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1014
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    .line 1015
    check-cast v1, Lorg/json/JSONArray;

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1016
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setChatMemberRole(JJZ)Ljava/lang/Integer;
    .locals 3

    .line 2808
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.setMemberRole"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    .line 2809
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2810
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "member_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p5, :cond_0

    const-string p1, "admin"

    goto :goto_0

    :cond_0
    const-string p1, "member"

    :goto_0
    const-string p2, "role"

    .line 2811
    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2813
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setChatPhoto(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 3693
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.setChatPhoto"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "file"

    .line 3694
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 3696
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "message_id"

    .line 3697
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public setMessageActivity(Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/lang/Integer;
    .locals 2

    .line 2981
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "messages.setActivity"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 2982
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/api/Api;->getPeerId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "peer_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_0

    const-string p1, "type"

    const-string p2, "typing"

    .line 2984
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2985
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 2986
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setOffline()Ljava/lang/Long;
    .locals 2

    .line 3343
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.setOffline"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 3344
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 3345
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public setOnline(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1931
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.setOnline"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 1932
    invoke-direct {p0, p1, p2, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 1933
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public setPrivacySettings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2

    .line 4045
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.setPrivacy"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "key"

    .line 4046
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 4047
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    const/4 p1, 0x0

    return-object p1
.end method

.method public setStatus(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;
    .locals 2

    .line 1065
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "status.set"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    .line 1066
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "group_id"

    .line 1067
    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1068
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 1069
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1071
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public storiesGetPhotoUploadServer()Ljava/lang/String;
    .locals 3

    .line 1293
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.getPhotoUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "add_to_news"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "v"

    const-string v2, "5.117"

    .line 1295
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 1297
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload_url"

    .line 1298
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storiesGetVideoUploadServer()Ljava/lang/String;
    .locals 3

    .line 1303
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.getVideoUploadServer"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "add_to_news"

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "v"

    const-string v2, "5.117"

    .line 1305
    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "response"

    .line 1307
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "upload_url"

    .line 1308
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public storiesGetViewers(JJ)Ljava/util/ArrayList;
    .locals 2

    .line 4852
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stories.getViewers"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4853
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4854
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "story_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4855
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4856
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "items"

    .line 4857
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 4858
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 4859
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 4860
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "user_id"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public trackEvents(Ljava/lang/String;)V
    .locals 2

    .line 4492
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "stats.trackEvents"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "events"

    .line 4493
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4494
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    return-void
.end method

.method public unfixTopic(JJ)Z
    .locals 2

    .line 4781
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "board.unfixTopic"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4782
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "group_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4783
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "topic_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4784
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4785
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public unpinPost(Ljava/lang/Long;J)Ljava/lang/Integer;
    .locals 2

    .line 3660
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.unpin"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "owner_id"

    .line 3661
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3662
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3663
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3664
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public unregisterDevice(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2508
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "account.unregisterDevice"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "device_id"

    .line 2509
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "response"

    .line 2511
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public videoAddToAlbum(Ljava/lang/Long;JJJLjava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 3926
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "video.addToAlbum"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    const-string v1, "target_id"

    .line 3927
    invoke-virtual {v0, v1, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3928
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "album_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3929
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3930
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "video_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3931
    invoke-direct {p0, p8, p9, v0}, Lcom/perm/kate/api/Api;->addCaptchaParams(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/api/Params;)V

    .line 3932
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 3933
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public wallCloseComments(JJ)Z
    .locals 2

    .line 4904
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.closeComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4905
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4906
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4907
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4908
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public wallOpenComments(JJ)Z
    .locals 2

    .line 4914
    new-instance v0, Lcom/perm/kate/api/Params;

    const-string v1, "wall.openComments"

    invoke-direct {v0, v1}, Lcom/perm/kate/api/Params;-><init>(Ljava/lang/String;)V

    .line 4915
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "owner_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4916
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "post_id"

    invoke-virtual {v0, p2, p1}, Lcom/perm/kate/api/Params;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4917
    invoke-direct {p0, v0}, Lcom/perm/kate/api/Api;->sendRequest(Lcom/perm/kate/api/Params;)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "response"

    .line 4918
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 p3, 0x1

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
