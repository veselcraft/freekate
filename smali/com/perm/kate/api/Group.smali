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
            "Ljava/util/ArrayList",
            "<",
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
            "Ljava/util/ArrayList",
            "<",
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

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;
    .locals 26
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v8, Lcom/perm/kate/api/Group;

    invoke-direct {v8}, Lcom/perm/kate/api/Group;-><init>()V

    .line 65
    .local v8, "g":Lcom/perm/kate/api/Group;
    const-string v23, "id"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v8, Lcom/perm/kate/api/Group;->gid:J

    .line 66
    const-string v23, "name"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 67
    const-string v23, "photo_50"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->photo:Ljava/lang/String;

    .line 68
    const-string v23, "photo_100"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 69
    const-string v23, "photo_200"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    .line 70
    const-string v23, "is_closed"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 71
    const-string v23, "is_closed"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    .line 72
    :cond_0
    const-string v23, "is_member"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "is_member":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 74
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->is_member:Ljava/lang/Boolean;

    .line 75
    :cond_1
    const-string v23, "description"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    .line 76
    const-string v23, "wiki_page"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    .line 79
    const-string v23, "fixed_post"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 80
    const-string v23, "fixed_post"

    const-wide/16 v24, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->fixed_post:Ljava/lang/Long;

    .line 85
    :cond_2
    const-string v23, "can_see_all_posts"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 86
    const-string v23, "can_see_all_posts"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    :goto_0
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    .line 89
    :cond_3
    const-string v23, "is_admin"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 91
    const-string v23, "is_admin"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_1
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->is_admin:Ljava/lang/Boolean;

    .line 94
    :cond_4
    const-string v23, "admin_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 96
    const-string v23, "admin_level"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->admin_level:Ljava/lang/Integer;

    .line 98
    :cond_5
    const-string v23, "contacts"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 99
    .local v14, "jcontacts":Lorg/json/JSONArray;
    if-eqz v14, :cond_9

    .line 100
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    .line 101
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_9

    .line 102
    invoke-virtual {v14, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/json/JSONObject;

    .line 103
    .local v13, "jcontact":Lorg/json/JSONObject;
    invoke-static {v13}, Lcom/perm/kate/api/Contact;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Contact;

    move-result-object v5

    .line 104
    .local v5, "contact":Lcom/perm/kate/api/Contact;
    if-eqz v5, :cond_6

    .line 105
    iget-object v0, v8, Lcom/perm/kate/api/Group;->contacts:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 86
    .end local v5    # "contact":Lcom/perm/kate/api/Contact;
    .end local v9    # "i":I
    .end local v13    # "jcontact":Lorg/json/JSONObject;
    .end local v14    # "jcontacts":Lorg/json/JSONArray;
    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 91
    :cond_8
    const/16 v23, 0x0

    goto :goto_1

    .line 110
    .restart local v14    # "jcontacts":Lorg/json/JSONArray;
    :cond_9
    const-string v23, "members_count"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 112
    const-string v23, "members_count"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    .line 113
    :cond_a
    const-string v23, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 114
    const-string v23, "type"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 115
    .local v20, "str_type":Ljava/lang/String;
    const-string v23, "group"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 116
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    .line 123
    .end local v20    # "str_type":Ljava/lang/String;
    :cond_b
    :goto_3
    const-string v23, "links"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 124
    .local v16, "jlinks":Lorg/json/JSONArray;
    if-eqz v16, :cond_f

    .line 125
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    .line 126
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_f

    .line 127
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    .line 128
    .local v15, "jlink":Lorg/json/JSONObject;
    invoke-static {v15}, Lcom/perm/kate/api/Link;->parseFromGroup(Lorg/json/JSONObject;)Lcom/perm/kate/api/Link;

    move-result-object v17

    .line 129
    .local v17, "link":Lcom/perm/kate/api/Link;
    if-eqz v17, :cond_c

    .line 130
    iget-object v0, v8, Lcom/perm/kate/api/Group;->links:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 117
    .end local v9    # "i":I
    .end local v15    # "jlink":Lorg/json/JSONObject;
    .end local v16    # "jlinks":Lorg/json/JSONArray;
    .end local v17    # "link":Lcom/perm/kate/api/Link;
    .restart local v20    # "str_type":Ljava/lang/String;
    :cond_d
    const-string v23, "page"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 118
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    goto :goto_3

    .line 119
    :cond_e
    const-string v23, "event"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 120
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    goto :goto_3

    .line 133
    .end local v20    # "str_type":Ljava/lang/String;
    .restart local v16    # "jlinks":Lorg/json/JSONArray;
    :cond_f
    const-string v23, "invited_by"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 134
    const-string v23, "invited_by"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->invited_by:Ljava/lang/Long;

    .line 136
    :cond_10
    const-string v23, "start_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 137
    const-string v23, "start_date"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    .line 138
    :cond_11
    const-string v23, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_12

    .line 139
    const-string v23, "status"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 140
    :cond_12
    const-string v23, "status_audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_13

    .line 141
    const-string v23, "status_audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->status_audio:Lcom/perm/kate/api/Audio;

    .line 142
    :cond_13
    const-string v23, "counters"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 143
    const-string v23, "counters"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 144
    .local v19, "object":Lorg/json/JSONObject;
    if-eqz v19, :cond_14

    .line 145
    const-string v23, "photos"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    .line 146
    const-string v23, "albums"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    .line 147
    const-string v23, "topics"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    .line 148
    const-string v23, "videos"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    .line 149
    const-string v23, "audios"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    .line 150
    const-string v23, "docs"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    .line 153
    .end local v19    # "object":Lorg/json/JSONObject;
    :cond_14
    const-string v23, "is_favorite"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_15

    .line 154
    const-string v23, "is_favorite"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->is_favorite:Ljava/lang/Integer;

    .line 155
    :cond_15
    const-string v23, "ban_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_16

    .line 156
    const-string v23, "ban_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 157
    .local v4, "ban_info_obj":Lorg/json/JSONObject;
    if-eqz v4, :cond_16

    .line 158
    const-string v23, "end_date"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->ban_info_end_date:Ljava/lang/Long;

    .line 159
    const-string v23, "comment"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->ban_info_comment:Ljava/lang/String;

    .line 160
    const-string v23, "reason"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->ban_info_reason:Ljava/lang/Integer;

    .line 163
    .end local v4    # "ban_info_obj":Lorg/json/JSONObject;
    :cond_16
    const-string v23, "verified"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_17

    .line 164
    const-string v23, "verified"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    .line 165
    :cond_17
    const-string v23, "can_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_18

    .line 166
    const-string v23, "can_message"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    const/16 v23, 0x1

    :goto_5
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    .line 167
    :cond_18
    const-string v23, "market"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 168
    .local v18, "market":Lorg/json/JSONObject;
    if-eqz v18, :cond_19

    .line 169
    const-string v23, "enabled"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1d

    const/16 v23, 0x1

    :goto_6
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    .line 170
    const-string v23, "contact_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->market_contact_id:Ljava/lang/Long;

    .line 171
    const-string v23, "wiki"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 172
    .local v22, "wiki":Lorg/json/JSONObject;
    if-eqz v22, :cond_19

    .line 173
    invoke-static/range {v22 .. v22}, Lcom/perm/kate/api/Page;->parseFromAttachment(Lorg/json/JSONObject;)Lcom/perm/kate/api/Page;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->market_wiki:Lcom/perm/kate/api/Page;

    .line 175
    .end local v22    # "wiki":Lorg/json/JSONObject;
    :cond_19
    const-string v23, "cover"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 176
    .local v6, "cover_json":Lorg/json/JSONObject;
    if-eqz v6, :cond_1a

    .line 177
    const-string v23, "enabled"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 180
    .local v7, "enabled":I
    if-nez v7, :cond_1e

    .line 181
    const-string v23, ""

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    .line 182
    const-string v23, ""

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    .line 197
    .end local v7    # "enabled":I
    :cond_1a
    const-string v23, "is_messages_blocked"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1b

    .line 198
    const-string v23, "is_messages_blocked"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->is_messages_blocked:Ljava/lang/Integer;

    .line 199
    :cond_1b
    return-object v8

    .line 166
    .end local v6    # "cover_json":Lorg/json/JSONObject;
    .end local v18    # "market":Lorg/json/JSONObject;
    :cond_1c
    const/16 v23, 0x0

    goto/16 :goto_5

    .line 169
    .restart local v18    # "market":Lorg/json/JSONObject;
    :cond_1d
    const/16 v23, 0x0

    goto :goto_6

    .line 184
    .restart local v6    # "cover_json":Lorg/json/JSONObject;
    .restart local v7    # "enabled":I
    :cond_1e
    const-string v23, "images"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 185
    .local v11, "images_json":Lorg/json/JSONArray;
    if-eqz v11, :cond_1a

    .line 186
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_1a

    .line 187
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 188
    .local v10, "image_json":Lorg/json/JSONObject;
    const-string v23, "width"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 190
    .local v21, "width":I
    const/16 v23, 0x190

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 191
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    .line 192
    :cond_1f
    const/16 v23, 0x31b

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 193
    const-string v23, "url"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v8, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    .line 186
    :cond_20
    add-int/lit8 v9, v9, 0x1

    goto :goto_7
.end method

.method public static parseGroups(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "jgroups"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Group;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 206
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 204
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 209
    .local v3, "jgroup":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/perm/kate/api/Group;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 210
    .local v0, "group":Lcom/perm/kate/api/Group;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 212
    .end local v0    # "group":Lcom/perm/kate/api/Group;
    .end local v3    # "jgroup":Lorg/json/JSONObject;
    :cond_1
    return-object v1
.end method
