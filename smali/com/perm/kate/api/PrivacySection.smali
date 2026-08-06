.class public Lcom/perm/kate/api/PrivacySection;
.super Ljava/lang/Object;
.source "PrivacySection.java"


# instance fields
.field public name:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySection;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/perm/kate/api/PrivacySection;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacySection;-><init>()V

    .line 15
    .local v0, "ps":Lcom/perm/kate/api/PrivacySection;
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacySection;->name:Ljava/lang/String;

    .line 16
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacySection;->title:Ljava/lang/String;

    .line 17
    return-object v0
.end method

.method public static parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PrivacySection;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    if-nez p0, :cond_1

    .line 22
    const/4 v2, 0x0

    .line 29
    :cond_0
    return-object v2

    .line 23
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .local v2, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PrivacySection;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/PrivacySection;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySection;

    move-result-object v1

    .line 26
    .local v1, "ps":Lcom/perm/kate/api/PrivacySection;
    if-eqz v1, :cond_2

    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
