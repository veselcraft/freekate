.class public Lcom/perm/kate/api/NewsItem;
.super Ljava/lang/Object;
.source "NewsItem.java"


# instance fields
.field public ad_data:Ljava/lang/String;

.field public ad_data_impression:Ljava/lang/String;

.field public ads_id1:Ljava/lang/Integer;

.field public ads_id2:Ljava/lang/Integer;

.field public ads_title:Ljava/lang/String;

.field public age_restriction:Ljava/lang/String;

.field public attachments:Ljava/util/ArrayList;

.field public comment_can_post:Z

.field public comment_count:I

.field public comment_id:J

.field public comments_json:Ljava/lang/String;

.field public copy_history:Ljava/util/ArrayList;

.field public copy_owner_id:J

.field public copy_post_id:J

.field public copy_text:Ljava/lang/String;

.field public copyright_link:Ljava/lang/String;

.field public copyright_name:Ljava/lang/String;

.field public date:J

.field public friends:Ljava/util/ArrayList;

.field public from_id:J

.field public like_count:I

.field public photo_tags:Ljava/util/ArrayList;

.field public photos:Ljava/util/ArrayList;

.field public post_id:J

.field public reposts_count:I

.field public signer_id:J

.field public source_id:J

.field public statistics:Ljava/util/List;

.field public text:Ljava/lang/String;

.field public track_code:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public user_like:Z

.field public user_reposted:Z

.field public views:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/perm/kate/api/NewsItem;->signer_id:J

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;Z)Lcom/perm/kate/api/NewsItem;
    .locals 12

    .line 67
    new-instance v0, Lcom/perm/kate/api/NewsItem;

    invoke-direct {v0}, Lcom/perm/kate/api/NewsItem;-><init>()V

    const-string v1, "type"

    .line 68
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v3, "ads"

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    const-string v2, "ads_title"

    const/4 v6, 0x0

    .line 71
    invoke-virtual {p0, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->ads_title:Ljava/lang/String;

    const-string v2, "ads_id1"

    .line 72
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->ads_id1:Ljava/lang/Integer;

    const-string v2, "ads_id2"

    .line 73
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->ads_id2:Ljava/lang/Integer;

    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v6

    :cond_0
    const-string v1, "age_restriction"

    .line 79
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->age_restriction:Ljava/lang/String;

    const-string v1, "ad_data"

    .line 80
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->ad_data:Ljava/lang/String;

    const-string v1, "ad_data_impression"

    .line 81
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->ad_data_impression:Ljava/lang/String;

    const-string v1, "statistics"

    .line 82
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/NewsItem;->parseStats(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->statistics:Ljava/util/List;

    .line 84
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "track_code"

    .line 85
    invoke-virtual {p0, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->track_code:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "source_id"

    .line 88
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    if-eqz v1, :cond_2

    const-string v2, "owner_id"

    .line 90
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    :cond_2
    const-string v2, "from_id"

    .line 91
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 93
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    :cond_3
    const-string v2, "date"

    .line 94
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/NewsItem;->date:J

    const-string v2, "post_id"

    .line 95
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    if-eqz v1, :cond_4

    const-string v1, "id"

    .line 97
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    :cond_4
    const-string v1, "text"

    .line 98
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    const-string v1, "copy_history"

    .line 100
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 103
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 105
    :try_start_0
    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/perm/kate/api/WallMessage;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/WallMessage;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 107
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    invoke-static {v3}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;)V

    .line 110
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "NewsItem"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "signer_id"

    .line 115
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->signer_id:J

    const-string v1, "attachments"

    .line 116
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string v1, "geo"

    .line 117
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 118
    iget-wide v7, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    iget-wide v9, v0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static/range {v6 .. v11}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    const-string v1, "comments"

    .line 119
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "count"

    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 121
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->comment_count:I

    const-string v2, "can_post"

    .line 122
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    const-string v2, "list"

    .line 123
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    :cond_7
    const-string v1, "likes"

    .line 127
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 128
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 129
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->like_count:I

    const-string v2, "user_likes"

    .line 130
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/perm/kate/api/NewsItem;->user_like:Z

    :cond_9
    const-string v1, "reposts"

    .line 132
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 133
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    const-string v2, "user_reposted"

    .line 135
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_a

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    :goto_5
    iput-boolean v5, v0, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    :cond_b
    const-string v1, "photo_tags"

    .line 137
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const-string v5, "items"

    if-eqz v2, :cond_c

    .line 138
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 141
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_c

    .line 142
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 143
    invoke-static {v6}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    .line 144
    iget-object v7, v0, Lcom/perm/kate/api/NewsItem;->photo_tags:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_c
    const-string v1, "photos"

    .line 148
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 149
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 152
    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_d

    .line 153
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 154
    invoke-static {v6}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    .line 155
    iget-object v7, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    const-string v1, "audio"

    .line 160
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 161
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    .line 163
    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 164
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_e

    goto :goto_9

    .line 168
    :cond_e
    invoke-static {v7}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v7

    .line 169
    new-instance v8, Lcom/perm/kate/api/Attachment;

    invoke-direct {v8}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 170
    iput-object v1, v8, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 171
    iput-object v7, v8, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    .line 172
    iget-object v7, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_f
    const-string v1, "video"

    .line 177
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 178
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 179
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v6, 0x0

    .line 180
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 181
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-nez v7, :cond_10

    goto :goto_b

    .line 184
    :cond_10
    invoke-static {v7}, Lcom/perm/kate/api/Video;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Video;

    move-result-object v7

    .line 185
    new-instance v8, Lcom/perm/kate/api/Attachment;

    invoke-direct {v8}, Lcom/perm/kate/api/Attachment;-><init>()V

    .line 186
    iput-object v1, v8, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    .line 187
    iput-object v7, v8, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    .line 188
    iget-object v7, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 192
    :cond_11
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz p1, :cond_12

    .line 193
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    .line 194
    invoke-static {p0}, Lcom/perm/kate/api/Photo;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    .line 195
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string p1, "friends"

    .line 197
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 199
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 200
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    .line 202
    :goto_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_13

    .line 203
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 204
    iget-object v2, v0, Lcom/perm/kate/api/NewsItem;->friends:Ljava/util/ArrayList;

    const-string v5, "user_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_13
    const-string p1, "views"

    .line 208
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 210
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    :cond_14
    const-string p1, "copyright"

    .line 212
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_15

    const-string p1, "link"

    .line 214
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/api/NewsItem;->copyright_link:Ljava/lang/String;

    const-string p1, "name"

    .line 215
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/NewsItem;->copyright_name:Ljava/lang/String;

    :cond_15
    return-object v0
.end method

.method public static parseFromSearch(Lorg/json/JSONObject;)Lcom/perm/kate/api/NewsItem;
    .locals 8

    .line 222
    new-instance v0, Lcom/perm/kate/api/NewsItem;

    invoke-direct {v0}, Lcom/perm/kate/api/NewsItem;-><init>()V

    const-string v1, "post_type"

    .line 223
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v1, "owner_id"

    .line 224
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    goto :goto_0

    :cond_0
    const-string v1, "to_id"

    .line 227
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    :goto_0
    const-string v1, "from_id"

    .line 228
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ""

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    :cond_1
    const-string v1, "date"

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->date:J

    .line 232
    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v2, "post"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "id"

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v3, "copy"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "post_id"

    .line 235
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    .line 236
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->comment_id:J

    goto :goto_2

    .line 233
    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    :goto_2
    const-string v1, "text"

    .line 238
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    const-string v1, "copy_owner_id"

    .line 239
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    const-string v1, "copy_text"

    .line 240
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    const-string v1, "attachments"

    .line 245
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v1, "geo"

    .line 246
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 247
    iget-wide v3, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    iget-wide v5, v0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/api/Attachment;->parseAttachments(Lorg/json/JSONArray;JJLorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    const-string v1, "comments"

    .line 248
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "count"

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    .line 249
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 250
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->comment_count:I

    const-string v2, "can_post"

    .line 251
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v0, Lcom/perm/kate/api/NewsItem;->comment_can_post:Z

    const-string v2, "list"

    .line 252
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 254
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->comments_json:Ljava/lang/String;

    :cond_5
    const-string v1, "likes"

    .line 256
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 257
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 258
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->like_count:I

    const-string v2, "user_likes"

    .line 259
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iput-boolean v1, v0, Lcom/perm/kate/api/NewsItem;->user_like:Z

    :cond_7
    const-string v1, "reposts"

    .line 261
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 262
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    const-string v2, "user_reposted"

    .line 264
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_8

    const/4 v3, 0x1

    :cond_8
    iput-boolean v3, v0, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    :cond_9
    const-string v1, "views"

    .line 266
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 268
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    :cond_a
    const-string v1, "copyright"

    .line 269
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string v1, "link"

    .line 271
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/NewsItem;->copyright_link:Ljava/lang/String;

    const-string v1, "name"

    .line 272
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/NewsItem;->copyright_name:Ljava/lang/String;

    :cond_b
    return-object v0
.end method

.method private static parseStats(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 280
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 281
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 282
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    .line 283
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    .line 284
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v1

    const/4 v4, 0x1

    aput-object v3, v5, v4

    .line 285
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
