.class public Lcom/perm/kate/api/PrivacySection;
.super Ljava/lang/Object;
.source "PrivacySection.java"


# instance fields
.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySection;
    .locals 2

    .line 14
    new-instance v0, Lcom/perm/kate/api/PrivacySection;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacySection;-><init>()V

    const-string v1, "name"

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacySection;->name:Ljava/lang/String;

    const-string v1, "title"

    .line 16
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/PrivacySection;->title:Ljava/lang/String;

    return-object v0
.end method

.method public static parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/PrivacySection;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySection;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
