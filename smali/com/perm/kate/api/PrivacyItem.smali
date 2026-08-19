.class public Lcom/perm/kate/api/PrivacyItem;
.super Ljava/lang/Object;
.source "PrivacyItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public key:Ljava/lang/String;

.field public section:Ljava/lang/String;

.field public supported_values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public value:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacyItem;
    .locals 5

    .line 26
    new-instance v0, Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacyItem;-><init>()V

    const-string v1, "key"

    .line 27
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v1, "title"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    const-string v1, "value"

    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/perm/kate/api/Privacy;->parseNew(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    const-string v1, "supported_categories"

    .line 31
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 34
    iget-object v3, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "section"

    .line 35
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->section:Ljava/lang/String;

    const-string v1, "type"

    .line 36
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/PrivacyItem;->type:Ljava/lang/String;

    const-string v1, "binary"

    .line 41
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 42
    iget-object p0, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p0, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public static parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 53
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 55
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/PrivacyItem;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacyItem;

    move-result-object v2

    .line 57
    iget-object v3, v2, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v4, "page_access"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    iget-object v3, v2, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v4, "company_messages"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    iget-object v3, v2, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v4, "contact_avatar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 66
    :cond_3
    iget-object v3, v2, Lcom/perm/kate/api/PrivacyItem;->key:Ljava/lang/String;

    const-string v4, "calls_from_community"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 68
    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 71
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    invoke-static {v2}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
