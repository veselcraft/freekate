.class public Lcom/perm/kate/account/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public group_tokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public is_gcm:Z

.field public mid:Ljava/lang/String;

.field public profile_photo:Ljava/lang/String;

.field public push_registered:Z

.field public remixsid:Ljava/lang/String;

.field public user_name:Ljava/lang/String;

.field public instance_domain:Ljava/lang/String;

.field public use_tls:Z

# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/account/Account;->push_registered:Z

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/account/Account;->is_gcm:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/account/Account;
    .locals 9
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    .line 51
    .local v0, "a":Lcom/perm/kate/account/Account;
    const-string v7, "mid"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    .line 52
    const-string v7, "remixsid"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->remixsid:Ljava/lang/String;

    .line 53
    const-string v7, "access_token"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    .line 54
    const-string v7, "user_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 55
    const-string v7, "profile_photo"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    .line 56
    const-string v7, "push_registered"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    .line 57
    const-string v7, "is_gcm"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/perm/kate/account/Account;->is_gcm:Z

    .line 58
    const-string v7, "group_tokens"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    # parse instance and tls settings
    const-string v7, "instance_domain"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    const-string v7, "use_tls"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/perm/kate/account/Account;->use_tls:Z

    .line 59
    .local v1, "array":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 60
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_0

    .line 61
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 62
    .local v6, "o1":Lorg/json/JSONObject;
    const-string v7, "group_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 63
    .local v2, "group_id":J
    const-string v7, "token"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "group_token":Ljava/lang/String;
    iget-object v7, v0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "group_id":J
    .end local v4    # "group_token":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "o1":Lorg/json/JSONObject;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public save()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v1, "o":Lorg/json/JSONObject;
    const-string v4, "mid"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v4, "remixsid"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->remixsid:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v4, "access_token"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v4, "user_name"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    const-string v4, "profile_photo"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    const-string v4, "push_registered"

    iget-boolean v5, p0, Lcom/perm/kate/account/Account;->push_registered:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    const-string v4, "is_gcm"

    iget-boolean v5, p0, Lcom/perm/kate/account/Account;->is_gcm:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 37
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    # save instance and tls settings
    const-string v4, "instance_domain"

    iget-object v5, p0, Lcom/perm/kate/account/Account;->instance_domain:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "use_tls"

    iget-boolean v5, p0, Lcom/perm/kate/account/Account;->use_tls:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 38
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 39
    .local v3, "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v2, "o1":Lorg/json/JSONObject;
    const-string v5, "group_id"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v5, "token"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 44
    .end local v2    # "o1":Lorg/json/JSONObject;
    .end local v3    # "x":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    :cond_0
    const-string v4, "group_tokens"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    goto :goto_0
.end method
