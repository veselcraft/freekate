.class public Lcom/perm/kate/account/Account;
.super Ljava/lang/Object;
.source "Account.java"


# instance fields
.field public access_token:Ljava/lang/String;

.field public group_tokens:Ljava/util/HashMap;

.field public is_fcm:Z

.field public mid:Ljava/lang/String;

.field public profile_photo:Ljava/lang/String;

.field public push_registered:Z

.field public user_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/perm/kate/account/Account;->push_registered:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/perm/kate/account/Account;->is_fcm:Z

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/account/Account;
    .locals 6

    .line 48
    new-instance v0, Lcom/perm/kate/account/Account;

    invoke-direct {v0}, Lcom/perm/kate/account/Account;-><init>()V

    const-string v1, "mid"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const-string v1, "access_token"

    .line 50
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    const-string v1, "user_name"

    .line 51
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    const-string v1, "profile_photo"

    .line 52
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    const-string v1, "push_registered"

    .line 53
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->push_registered:Z

    const-string v1, "is_fcm"

    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/perm/kate/account/Account;->is_fcm:Z

    const-string v1, "group_tokens"

    .line 55
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 58
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "group_id"

    .line 59
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "token"

    .line 60
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    iget-object v5, v0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public save()Lorg/json/JSONObject;
    .locals 7

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    const-string v2, "mid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object v1, p0, Lcom/perm/kate/account/Account;->access_token:Ljava/lang/String;

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object v1, p0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    const-string v2, "user_name"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object v1, p0, Lcom/perm/kate/account/Account;->profile_photo:Ljava/lang/String;

    const-string v2, "profile_photo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-boolean v1, p0, Lcom/perm/kate/account/Account;->push_registered:Z

    const-string v2, "push_registered"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 33
    iget-boolean v1, p0, Lcom/perm/kate/account/Account;->is_fcm:Z

    const-string v2, "is_fcm"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 36
    iget-object v2, p0, Lcom/perm/kate/account/Account;->group_tokens:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 37
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "group_id"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "token"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v2, "group_tokens"

    .line 42
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/perm/kate/account/Account;->user_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/account/Account;->mid:Ljava/lang/String;

    return-object v0
.end method
