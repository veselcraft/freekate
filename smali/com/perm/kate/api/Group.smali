.class public Lcom/perm/kate/api/Group;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public admin_level:Ljava/lang/Integer;

.field public albums_count:Ljava/lang/Integer;

.field public audios_count:Ljava/lang/Integer;

.field public ban_info_comment:Ljava/lang/String;

.field public ban_info_end_date:Ljava/lang/Long;

.field public ban_info_reason:Ljava/lang/Integer;

.field public can_message:Ljava/lang/Boolean;

.field public can_see_all_posts:Ljava/lang/Boolean;

.field public contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public cover_400:Ljava/lang/String;

.field public cover_800:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public docs_count:Ljava/lang/Integer;

.field public fixed_post:Ljava/lang/Long;

.field public gid:J

.field public invited_by:Ljava/lang/Long;

.field public is_admin:Ljava/lang/Boolean;

.field public is_closed:Ljava/lang/Integer;

.field public is_favorite:Ljava/lang/Integer;

.field public is_member:Ljava/lang/Boolean;

.field public is_messages_blocked:Ljava/lang/Integer;

.field public links:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/perm/kate/api/Link;",
            ">;"
        }
    .end annotation
.end field

.field public market_contact_id:Ljava/lang/Long;

.field public market_enabled:Ljava/lang/Boolean;

.field public market_wiki:Lcom/perm/kate/api/Page;

.field public members_count:Ljava/lang/Integer;

.field public name:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public photo_big:Ljava/lang/String;

.field public photo_medium:Ljava/lang/String;

.field public photos_count:Ljava/lang/Integer;

.field public podcasts_count:Ljava/lang/Integer;

.field public posts_count:Ljava/lang/Integer;

.field public start_date:Ljava/lang/Long;

.field public status:Ljava/lang/String;

.field public status_audio:Lcom/perm/kate/api/Audio;

.field public topics_count:Ljava/lang/Integer;

.field public type:Ljava/lang/Integer;

.field public verified:Ljava/lang/Integer;

.field public videos_count:Ljava/lang/Integer;

.field public wiki_page:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;
    .locals 7

    .line 65
    new-instance v0, Lcom/perm/kate/api/Group;

    invoke-direct {v0}, Lcom/perm/kate/api/Group;-><init>()V

    const-string v1, "id"

    .line 66
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Group;->gid:J

    const-string v1, "name"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    const-string v1, "photo_50"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    const-string v1, "photo_100"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const-string v1, "photo_200"

    .line 70
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    const-string v1, "is_closed"

    .line 71
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    :cond_0
    const-string v1, "is_member"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "1"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    :cond_1
    const-string v1, "description"

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    const-string v1, "wiki_page"

    .line 77
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    const-string v1, "fixed_post"

    .line 80
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v4, -0x1

    .line 81
    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    :cond_2
    const-string v1, "can_see_all_posts"

    .line 86
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 87
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    :cond_4
    const-string v1, "is_admin"

    .line 90
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    :cond_6
    const-string v1, "admin_level"

    .line 95
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    :cond_7
    const-string v1, "contacts"

    .line 99
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 102
    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 103
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 104
    invoke-static {v5}, Lcom/perm/kate/api/Contact;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Contact;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 106
    iget-object v6, v0, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const-string v1, "members_count"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 113
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    :cond_a
    const-string v1, "type"

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    .line 116
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    goto :goto_3

    :cond_b
    const-string v2, "page"

    .line 118
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    goto :goto_3

    :cond_c
    const-string v2, "event"

    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    :cond_d
    :goto_3
    const-string v1, "links"

    .line 124
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 127
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_f

    .line 128
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 129
    invoke-static {v5}, Lcom/perm/kate/api/Link;->parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 131
    iget-object v6, v0, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    const-string v1, "invited_by"

    .line 135
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 136
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    :cond_10
    const-string v1, "start_date"

    .line 138
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 139
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    :cond_11
    const-string v1, "status"

    .line 140
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 141
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    :cond_12
    const-string v1, "status_audio"

    .line 142
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 143
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->status_audio:Lcom/perm/kate/api/Audio;

    :cond_13
    const-string v1, "counters"

    .line 144
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 145
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_14

    const-string v2, "photos"

    .line 147
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    const-string v2, "albums"

    .line 148
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    const-string v2, "topics"

    .line 149
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    const-string v2, "videos"

    .line 150
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    const-string v2, "audios"

    .line 151
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    const-string v2, "docs"

    .line 152
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    const-string v2, "podcasts"

    .line 153
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    :cond_14
    const-string v1, "is_favorite"

    .line 156
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 157
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->is_favorite:Ljava/lang/Integer;

    :cond_15
    const-string v1, "ban_info"

    .line 158
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 159
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_16

    const-string v2, "end_date"

    .line 161
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->ban_info_end_date:Ljava/lang/Long;

    const-string v2, "comment"

    .line 162
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->ban_info_comment:Ljava/lang/String;

    const-string v2, "reason"

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->ban_info_reason:Ljava/lang/Integer;

    :cond_16
    const-string v1, "verified"

    .line 166
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 167
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    :cond_17
    const-string v1, "can_message"

    .line 168
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 169
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_5

    :cond_18
    const/4 v1, 0x0

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    :cond_19
    const-string v1, "market"

    .line 170
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enabled"

    if-eqz v1, :cond_1b

    .line 172
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_1a

    const/4 v5, 0x1

    goto :goto_6

    :cond_1a
    const/4 v5, 0x0

    :goto_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    const-string v5, "contact_id"

    .line 173
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    const-string v5, "wiki"

    .line 174
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 176
    invoke-static {v1}, Lcom/perm/kate/api/Page;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Page;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    :cond_1b
    const-string v1, "cover"

    .line 178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 180
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1c

    const-string v1, ""

    .line 184
    iput-object v1, v0, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    .line 185
    iput-object v1, v0, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    goto :goto_8

    :cond_1c
    const-string v2, "images"

    .line 187
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 189
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_1f

    .line 190
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "width"

    .line 191
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x190

    if-ne v4, v5, :cond_1d

    const-string v5, "url"

    .line 194
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    :cond_1d
    const/16 v5, 0x31b

    if-ne v4, v5, :cond_1e

    const-string v4, "url"

    .line 196
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1f
    :goto_8
    const-string v1, "is_messages_blocked"

    .line 200
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 201
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/Group;->is_messages_blocked:Ljava/lang/Integer;

    :cond_20
    return-object v0
.end method

.method public static parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 3

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 209
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 212
    invoke-static {v2}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v2

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
