.class public Lcom/perm/kate/api/PrivacySettings;
.super Ljava/lang/Object;
.source "PrivacySettings.java"


# instance fields
.field public sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PrivacySection;",
            ">;"
        }
    .end annotation
.end field

.field public settings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PrivacyItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/PrivacySettings;
    .locals 2
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0

    .line 15
    :cond_0
    new-instance v0, Lcom/perm/kate/api/PrivacySettings;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacySettings;-><init>()V

    .line 16
    .local v0, "ps":Lcom/perm/kate/api/PrivacySettings;
    const-string v1, "settings"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/PrivacyItem;->parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacySettings;->settings:Ljava/util/ArrayList;

    .line 17
    const-string v1, "sections"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/PrivacySection;->parseArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacySettings;->sections:Ljava/util/ArrayList;

    goto :goto_0
.end method
