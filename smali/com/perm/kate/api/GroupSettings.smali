.class public Lcom/perm/kate/api/GroupSettings;
.super Ljava/lang/Object;
.source "GroupSettings.java"


# instance fields
.field public access:Ljava/lang/Integer;

.field public address:Ljava/lang/String;

.field public audio:Ljava/lang/Integer;

.field public city_id:Ljava/lang/Integer;

.field public contacts:Ljava/lang/Integer;

.field public country_id:Ljava/lang/Integer;

.field public description:Ljava/lang/String;

.field public docs:Ljava/lang/Integer;

.field public email:Ljava/lang/String;

.field public events:Ljava/lang/Integer;

.field public links:Ljava/lang/Integer;

.field public phone:Ljava/lang/String;

.field public photos:Ljava/lang/Integer;

.field public places:Ljava/lang/Integer;

.field public public_category:Ljava/lang/String;

.field public public_category_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/ExStrPair;",
            ">;"
        }
    .end annotation
.end field

.field public public_date:Ljava/lang/String;

.field public public_subcategory:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public subject_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/StrPair;",
            ">;"
        }
    .end annotation
.end field

.field public title:Ljava/lang/String;

.field public topics:Ljava/lang/Integer;

.field public video:Ljava/lang/Integer;

.field public wall:Ljava/lang/Integer;

.field public website:Ljava/lang/String;

.field public wiki:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/GroupSettings;
    .locals 4
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/perm/kate/api/GroupSettings;

    invoke-direct {v0}, Lcom/perm/kate/api/GroupSettings;-><init>()V

    .line 48
    .local v0, "gs":Lcom/perm/kate/api/GroupSettings;
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const-string v3, "title"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->title:Ljava/lang/String;

    .line 50
    :cond_0
    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    const-string v3, "description"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->description:Ljava/lang/String;

    .line 52
    :cond_1
    const-string v3, "address"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 53
    const-string v3, "address"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->address:Ljava/lang/String;

    .line 54
    :cond_2
    const-string v3, "access"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    const-string v3, "access"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->access:Ljava/lang/Integer;

    .line 56
    :cond_3
    const-string v3, "website"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 57
    const-string v3, "website"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->website:Ljava/lang/String;

    .line 58
    :cond_4
    const-string v3, "subject"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    const-string v3, "subject"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->subject:Ljava/lang/String;

    .line 60
    :cond_5
    const-string v3, "subject_list"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 61
    const-string v3, "subject_list"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 62
    .local v2, "jsubject_list":Lorg/json/JSONArray;
    if-eqz v2, :cond_6

    .line 63
    invoke-static {v2}, Lcom/perm/kate/api/StrPair;->parsePairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->subject_list:Ljava/util/ArrayList;

    .line 65
    .end local v2    # "jsubject_list":Lorg/json/JSONArray;
    :cond_6
    const-string v3, "email"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 66
    const-string v3, "email"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->email:Ljava/lang/String;

    .line 67
    :cond_7
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 68
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->phone:Ljava/lang/String;

    .line 69
    :cond_8
    const-string v3, "country_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 70
    const-string v3, "country_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->country_id:Ljava/lang/Integer;

    .line 71
    :cond_9
    const-string v3, "city_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 72
    const-string v3, "city_id"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->city_id:Ljava/lang/Integer;

    .line 73
    :cond_a
    const-string v3, "wall"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 74
    const-string v3, "wall"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->wall:Ljava/lang/Integer;

    .line 75
    :cond_b
    const-string v3, "photos"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 76
    const-string v3, "photos"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->photos:Ljava/lang/Integer;

    .line 77
    :cond_c
    const-string v3, "video"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 78
    const-string v3, "video"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->video:Ljava/lang/Integer;

    .line 79
    :cond_d
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 80
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->audio:Ljava/lang/Integer;

    .line 81
    :cond_e
    const-string v3, "docs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 82
    const-string v3, "docs"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->docs:Ljava/lang/Integer;

    .line 83
    :cond_f
    const-string v3, "topics"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 84
    const-string v3, "topics"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->topics:Ljava/lang/Integer;

    .line 85
    :cond_10
    const-string v3, "wiki"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 86
    const-string v3, "wiki"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->wiki:Ljava/lang/Integer;

    .line 87
    :cond_11
    const-string v3, "events"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 88
    const-string v3, "events"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->events:Ljava/lang/Integer;

    .line 89
    :cond_12
    const-string v3, "places"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 90
    const-string v3, "places"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->places:Ljava/lang/Integer;

    .line 91
    :cond_13
    const-string v3, "contacts"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 92
    const-string v3, "contacts"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->contacts:Ljava/lang/Integer;

    .line 93
    :cond_14
    const-string v3, "links"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 94
    const-string v3, "links"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->links:Ljava/lang/Integer;

    .line 95
    :cond_15
    const-string v3, "public_date"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 96
    const-string v3, "public_date"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->public_date:Ljava/lang/String;

    .line 97
    :cond_16
    const-string v3, "public_category"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 98
    const-string v3, "public_category"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->public_category:Ljava/lang/String;

    .line 99
    :cond_17
    const-string v3, "public_subcategory"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 100
    const-string v3, "public_subcategory"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->public_subcategory:Ljava/lang/String;

    .line 101
    :cond_18
    const-string v3, "public_category_list"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 102
    const-string v3, "public_category_list"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 103
    .local v1, "jpublic_category_list":Lorg/json/JSONArray;
    if-eqz v1, :cond_19

    .line 104
    invoke-static {v1}, Lcom/perm/kate/api/ExStrPair;->parseExPairs(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/GroupSettings;->public_category_list:Ljava/util/ArrayList;

    .line 107
    .end local v1    # "jpublic_category_list":Lorg/json/JSONArray;
    :cond_19
    return-object v0
.end method
