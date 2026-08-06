.class public Lcom/perm/kate/api/ProfileInfo;
.super Ljava/lang/Object;
.source "ProfileInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public birthdate:Ljava/lang/String;

.field public birthdate_visibility:I

.field public city:Ljava/lang/Integer;

.field public country:Ljava/lang/Integer;

.field public first_name:Ljava/lang/String;

.field public home_town:Ljava/lang/String;

.field public last_name:Ljava/lang/String;

.field public maiden_name:Ljava/lang/String;

.field public nameRequest:Lcom/perm/kate/api/NameRequest;

.field public relation:Ljava/lang/Integer;

.field public relation_partner_first_name:Ljava/lang/String;

.field public relation_partner_id:Ljava/lang/Long;

.field public relation_partner_last_name:Ljava/lang/String;

.field public sex:Ljava/lang/Integer;

.field public status:Ljava/lang/String;

.field public title_city:Ljava/lang/String;

.field public title_country:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->title_country:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/ProfileInfo;
    .locals 6
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v2, Lcom/perm/kate/api/ProfileInfo;

    invoke-direct {v2}, Lcom/perm/kate/api/ProfileInfo;-><init>()V

    .line 32
    .local v2, "profile_info":Lcom/perm/kate/api/ProfileInfo;
    const-string v3, "first_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 33
    const-string v3, "first_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->first_name:Ljava/lang/String;

    .line 34
    :cond_0
    const-string v3, "last_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 35
    const-string v3, "last_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->last_name:Ljava/lang/String;

    .line 36
    :cond_1
    const-string v3, "maiden_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 37
    const-string v3, "maiden_name"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->maiden_name:Ljava/lang/String;

    .line 38
    :cond_2
    const-string v3, "sex"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 39
    const-string v3, "sex"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->sex:Ljava/lang/Integer;

    .line 40
    :cond_3
    const-string v3, "bdate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 41
    const-string v3, "bdate"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->birthdate:Ljava/lang/String;

    .line 42
    :cond_4
    const-string v3, "bdate_visibility"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/perm/kate/api/ProfileInfo;->birthdate_visibility:I

    .line 43
    const-string v3, "city"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 44
    const-string v3, "city"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->city:Ljava/lang/Integer;

    .line 45
    const-string v3, "city"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->title_city:Ljava/lang/String;

    .line 47
    :cond_5
    const-string v3, "country"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 48
    const-string v3, "country"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->country:Ljava/lang/Integer;

    .line 49
    const-string v3, "country"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->title_country:Ljava/lang/String;

    .line 51
    :cond_6
    const-string v3, "home_town"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 52
    const-string v3, "home_town"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->home_town:Ljava/lang/String;

    .line 53
    :cond_7
    const-string v3, "relation"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 54
    const-string v3, "relation"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->relation:Ljava/lang/Integer;

    .line 55
    :cond_8
    const-string v3, "relation_partner"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 56
    const-string v3, "relation_partner"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 57
    .local v1, "object":Lorg/json/JSONObject;
    if-eqz v1, :cond_9

    .line 58
    const-string v3, "id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->relation_partner_id:Ljava/lang/Long;

    .line 59
    const-string v3, "first_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->relation_partner_first_name:Ljava/lang/String;

    .line 60
    const-string v3, "last_name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->relation_partner_last_name:Ljava/lang/String;

    .line 63
    .end local v1    # "object":Lorg/json/JSONObject;
    :cond_9
    const-string v3, "name_request"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 64
    const-string v3, "name_request"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    .local v0, "jname_request":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/perm/kate/api/NameRequest;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/NameRequest;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/ProfileInfo;->nameRequest:Lcom/perm/kate/api/NameRequest;

    .line 67
    .end local v0    # "jname_request":Lorg/json/JSONObject;
    :cond_a
    return-object v2
.end method
