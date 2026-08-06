.class public Lcom/perm/kate/api/User;
.super Ljava/lang/Object;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/api/User$Rect;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public about:Ljava/lang/String;

.field public activities:Ljava/lang/String;

.field public albums_count:I

.field public audios_count:I

.field public birthdate:Ljava/lang/String;

.field public blacklisted:Ljava/lang/Integer;

.field public blacklisted_by_me:Ljava/lang/Integer;

.field public books:Ljava/lang/String;

.field public can_write_private_message:Ljava/lang/Integer;

.field public city:Ljava/lang/Integer;

.field public country:Ljava/lang/Integer;

.field public crop_photo_rect:Lcom/perm/kate/api/User$Rect;

.field public deactivated:Ljava/lang/String;

.field public domain:Ljava/lang/String;

.field public facebook:Ljava/lang/String;

.field public facebook_name:Ljava/lang/String;

.field public faculty:Ljava/lang/Integer;

.field public faculty_name:Ljava/lang/String;

.field public first_name:Ljava/lang/String;

.field public followers_count:I

.field public friends_count:I

.field public friends_list_ids:Ljava/lang/String;

.field public games:Ljava/lang/String;

.field public gifts_count:I

.field public graduation:Ljava/lang/Integer;

.field public groups_count:I

.field public has_mobile:Ljava/lang/Boolean;

.field public home_phone:Ljava/lang/String;

.field public instagram:Ljava/lang/String;

.field public interests:Ljava/lang/String;

.field public is_favorite:Ljava/lang/Integer;

.field public last_name:Ljava/lang/String;

.field public last_seen:J

.field public last_seen_platform:I

.field public lists:Ljava/lang/String;

.field public livejournal:Ljava/lang/String;

.field public mobile_phone:Ljava/lang/String;

.field public movies:Ljava/lang/String;

.field public music:Ljava/lang/String;

.field public mutual_friends_count:Ljava/lang/Integer;

.field public nickname:Ljava/lang/String;

.field public notes_count:I

.field public online:Ljava/lang/Boolean;

.field public online_friends_count:Ljava/lang/Integer;

.field public online_mobile:Ljava/lang/Boolean;

.field public phone:Ljava/lang/String;

.field public photo:Ljava/lang/String;

.field public photo_200:Ljava/lang/String;

.field public photo_400_orig:Ljava/lang/String;

.field public photo_big:Ljava/lang/String;

.field public photo_count:I

.field public photo_medium_rec:Ljava/lang/String;

.field public posts_count:Ljava/lang/Integer;

.field public quotes:Ljava/lang/String;

.field public rate:Ljava/lang/Integer;

.field public relation:Ljava/lang/Integer;

.field public relation_partner_first_name:Ljava/lang/String;

.field public relation_partner_id:Ljava/lang/Long;

.field public relation_partner_last_name:Ljava/lang/String;

.field public relatives:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Relative;",
            ">;"
        }
    .end annotation
.end field

.field public role:Ljava/lang/String;

.field public sex:Ljava/lang/Integer;

.field public site:Ljava/lang/String;

.field public skype:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public status_audio:Lcom/perm/kate/api/Audio;

.field public timezone:Ljava/lang/Integer;

.field public tv:Ljava/lang/String;

.field public twitter:Ljava/lang/String;

.field public uid:J

.field public university:Ljava/lang/Integer;

.field public university_name:Ljava/lang/String;

.field public user_photos_count:I

.field public user_videos_count:I

.field public verified:Ljava/lang/Integer;

.field public videos_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 17
    iput-object v0, p0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 18
    iput-object v0, p0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 25
    iput-object v0, p0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    .line 33
    iput-object v0, p0, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    .line 41
    iput-object v0, p0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    return-void
.end method

.method public static groupIdToVirtualUserId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 379
    neg-long v0, p0

    return-wide v0
.end method

.method public static isVirtualUser(J)Z
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 373
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/32 v0, -0x77359400

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 12
    .param p0, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 108
    new-instance v6, Lcom/perm/kate/api/User;

    invoke-direct {v6}, Lcom/perm/kate/api/User;-><init>()V

    .line 109
    .local v6, "u":Lcom/perm/kate/api/User;
    const-string v7, "id"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/perm/kate/api/User;->uid:J

    .line 110
    const-string v7, "first_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 111
    const-string v7, "first_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 112
    :cond_0
    const-string v7, "last_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 113
    const-string v7, "last_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 114
    :cond_1
    const-string v7, "nickname"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 115
    const-string v7, "nickname"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    .line 116
    :cond_2
    const-string v7, "screen_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 117
    const-string v7, "screen_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    .line 118
    :cond_3
    const-string v7, "online"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 119
    const-string v7, "online"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_1a

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 120
    :cond_4
    const-string v7, "online_mobile"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1c

    .line 121
    const-string v7, "online_mobile"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_1b

    move v7, v8

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 125
    :goto_2
    const-string v7, "sex"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 126
    const-string v7, "sex"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 127
    :cond_5
    const-string v7, "bdate"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 128
    const-string v7, "bdate"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    .line 129
    :cond_6
    const-string v7, "city"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 130
    const-string v7, "city"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    .line 131
    :cond_7
    const-string v7, "country"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 132
    const-string v7, "country"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v10, "id"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    .line 133
    :cond_8
    const-string v7, "timezone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 134
    const-string v7, "timezone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    .line 135
    :cond_9
    const-string v7, "photo_50"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 136
    const-string v7, "photo_50"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 137
    :cond_a
    const-string v7, "photo_100"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 138
    const-string v7, "photo_100"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 139
    :cond_b
    const-string v7, "photo_200_orig"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 140
    const-string v7, "photo_200_orig"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 141
    :cond_c
    const-string v7, "photo_200"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 142
    const-string v7, "photo_200"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 143
    :cond_d
    const-string v7, "photo_400_orig"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 144
    const-string v7, "photo_400_orig"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 145
    :cond_e
    const-string v7, "has_mobile"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 146
    const-string v7, "has_mobile"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_1d

    :goto_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    .line 147
    :cond_f
    const-string v7, "home_phone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 148
    const-string v7, "home_phone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    .line 149
    :cond_10
    const-string v7, "mobile_phone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 150
    const-string v7, "mobile_phone"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    .line 151
    :cond_11
    const-string v7, "rate"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 152
    const-string v7, "rate"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    .line 153
    :cond_12
    const-string v7, "faculty"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 154
    const-string v7, "faculty"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    .line 155
    :cond_13
    const-string v7, "faculty_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 156
    const-string v7, "faculty_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    .line 157
    :cond_14
    const-string v7, "university"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 158
    const-string v7, "university"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    .line 159
    :cond_15
    const-string v7, "university_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 160
    const-string v7, "university_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    .line 161
    :cond_16
    const-string v7, "graduation"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 162
    const-string v7, "graduation"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    .line 163
    :cond_17
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 164
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    .line 165
    :cond_18
    const-string v7, "relation"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_19

    .line 166
    const-string v7, "relation"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    .line 167
    :cond_19
    const-string v7, "lists"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 168
    const-string v7, "lists"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 169
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1f

    .line 170
    const-string v3, ""

    .line 171
    .local v3, "ids":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1e

    .line 172
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "ids":Ljava/lang/String;
    :cond_1a
    move v7, v9

    .line 119
    goto/16 :goto_0

    :cond_1b
    move v7, v9

    .line 121
    goto/16 :goto_1

    .line 124
    :cond_1c
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    goto/16 :goto_2

    :cond_1d
    move v8, v9

    .line 146
    goto/16 :goto_3

    .line 173
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "ids":Ljava/lang/String;
    :cond_1e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    iput-object v3, v6, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    .line 177
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "ids":Ljava/lang/String;
    :cond_1f
    const-string v7, "last_seen"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 178
    const-string v7, "last_seen"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 179
    .local v4, "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_20

    .line 180
    const-string v7, "time"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v6, Lcom/perm/kate/api/User;->last_seen:J

    .line 181
    const-string v7, "platform"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->last_seen_platform:I

    .line 184
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_20
    const-string v7, "counters"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 185
    const-string v7, "counters"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 186
    .restart local v4    # "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_22

    .line 187
    const-string v7, "albums"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->albums_count:I

    .line 188
    const-string v7, "photos"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->photo_count:I

    .line 189
    const-string v7, "videos"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->videos_count:I

    .line 190
    const-string v7, "audios"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->audios_count:I

    .line 191
    const-string v7, "notes"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->notes_count:I

    .line 192
    const-string v7, "friends"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->friends_count:I

    .line 193
    const-string v7, "mutual_friends"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    .line 194
    const-string v7, "user_photos"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->user_photos_count:I

    .line 195
    const-string v7, "user_videos"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->user_videos_count:I

    .line 196
    const-string v7, "online_friends"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 197
    const-string v7, "online_friends"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    .line 198
    :cond_21
    const-string v7, "followers"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->followers_count:I

    .line 200
    const-string v7, "groups"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->groups_count:I

    .line 201
    const-string v7, "gifts"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/api/User;->gifts_count:I

    .line 204
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_22
    const-string v7, "relation_partner"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_23

    .line 205
    const-string v7, "relation_partner"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 206
    .restart local v4    # "object":Lorg/json/JSONObject;
    if-eqz v4, :cond_23

    .line 207
    const-string v7, "id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    .line 208
    const-string v7, "first_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    .line 209
    const-string v7, "last_name"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    .line 213
    .end local v4    # "object":Lorg/json/JSONObject;
    :cond_23
    const-string v7, "twitter"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 214
    const-string v7, "twitter"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    .line 215
    :cond_24
    const-string v7, "facebook"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_25

    .line 216
    const-string v7, "facebook"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    .line 217
    :cond_25
    const-string v7, "facebook_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 218
    const-string v7, "facebook_name"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->facebook_name:Ljava/lang/String;

    .line 219
    :cond_26
    const-string v7, "skype"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 220
    const-string v7, "skype"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    .line 221
    :cond_27
    const-string v7, "livejournal"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 222
    const-string v7, "livejournal"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    .line 223
    :cond_28
    const-string v7, "instagram"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 224
    const-string v7, "instagram"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    .line 225
    :cond_29
    const-string v7, "site"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 226
    const-string v7, "site"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    .line 228
    :cond_2a
    const-string v7, "interests"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2b

    .line 229
    const-string v7, "interests"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    .line 230
    :cond_2b
    const-string v7, "movies"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 231
    const-string v7, "movies"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    .line 232
    :cond_2c
    const-string v7, "tv"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 233
    const-string v7, "tv"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    .line 234
    :cond_2d
    const-string v7, "books"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 235
    const-string v7, "books"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    .line 236
    :cond_2e
    const-string v7, "games"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 237
    const-string v7, "games"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    .line 238
    :cond_2f
    const-string v7, "about"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_30

    .line 239
    const-string v7, "about"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    .line 240
    :cond_30
    const-string v7, "music"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_31

    .line 241
    const-string v7, "music"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    .line 242
    :cond_31
    const-string v7, "activities"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_32

    .line 243
    const-string v7, "activities"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    .line 244
    :cond_32
    const-string v7, "quotes"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 245
    const-string v7, "quotes"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    .line 246
    :cond_33
    const-string v7, "status_audio"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_34

    .line 247
    const-string v7, "status_audio"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    .line 248
    :cond_34
    const-string v7, "deactivated"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 249
    const-string v7, "deactivated"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    .line 250
    :cond_35
    const-string v7, "role"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 251
    const-string v7, "role"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 252
    :cond_36
    const-string v7, "is_favorite"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_37

    .line 253
    const-string v7, "is_favorite"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    .line 254
    :cond_37
    const-string v7, "can_write_private_message"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    .line 255
    const-string v7, "can_write_private_message"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    .line 256
    :cond_38
    const-string v7, "verified"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 257
    const-string v7, "verified"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    .line 258
    :cond_39
    const-string v7, "relatives"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3a

    .line 259
    const-string v7, "relatives"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/api/Relative;->parseRelatives(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    .line 260
    :cond_3a
    const-string v7, "blacklisted_by_me"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3b

    .line 261
    const-string v7, "blacklisted_by_me"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    .line 262
    :cond_3b
    const-string v7, "blacklisted"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 263
    const-string v7, "blacklisted"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    .line 265
    :cond_3c
    const-string v7, "crop_photo"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 266
    .local v1, "crop_photo":Lorg/json/JSONObject;
    if-eqz v1, :cond_3d

    .line 267
    const-string v7, "rect"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 268
    .local v5, "rect":Lorg/json/JSONObject;
    if-eqz v5, :cond_3d

    .line 269
    new-instance v7, Lcom/perm/kate/api/User$Rect;

    invoke-direct {v7}, Lcom/perm/kate/api/User$Rect;-><init>()V

    iput-object v7, v6, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    .line 270
    iget-object v7, v6, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v8, "x"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    iput-wide v8, v7, Lcom/perm/kate/api/User$Rect;->x1:D

    .line 271
    iget-object v7, v6, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v8, "x2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    iput-wide v8, v7, Lcom/perm/kate/api/User$Rect;->x2:D

    .line 272
    iget-object v7, v6, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v8, "y"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    iput-wide v8, v7, Lcom/perm/kate/api/User$Rect;->y1:D

    .line 273
    iget-object v7, v6, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v8, "y2"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    iput-wide v8, v7, Lcom/perm/kate/api/User$Rect;->y2:D

    .line 277
    .end local v5    # "rect":Lorg/json/JSONObject;
    :cond_3d
    return-object v6
.end method

.method public static parseFromFave(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 6
    .param p0, "jprofile"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 344
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    .line 345
    .local v0, "m":Lcom/perm/kate/api/User;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/perm/kate/api/User;->uid:J

    .line 346
    const-string v1, "first_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 347
    const-string v1, "last_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 348
    const-string v1, "photo_100"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 349
    const-string v1, "online"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 350
    const-string v1, "online"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 351
    :cond_0
    const-string v1, "online_mobile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 352
    const-string v1, "online_mobile"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    .line 356
    :goto_2
    return-object v0

    :cond_1
    move v1, v3

    .line 350
    goto :goto_0

    :cond_2
    move v2, v3

    .line 352
    goto :goto_1

    .line 355
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public static parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 4
    .param p0, "jprofile"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 281
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    .line 282
    .local v0, "m":Lcom/perm/kate/api/User;
    const-string v2, "id"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    .line 283
    const-string v2, "first_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 284
    const-string v2, "last_name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 285
    const-string v2, "photo_50"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 286
    const-string v2, "photo_100"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 287
    const-string v2, "sex"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "sex"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    .line 289
    :cond_0
    const-string v2, "online"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    const-string v2, "online"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    .line 291
    :cond_1
    return-object v0

    .line 290
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFromNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 4
    .param p0, "jprofile"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    .line 361
    .local v0, "m":Lcom/perm/kate/api/User;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    .line 362
    const-string v1, "first_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 363
    const-string v1, "last_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    .line 364
    const-string v1, "photo_100"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 365
    const-string v1, "photo_50"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 366
    return-object v0
.end method

.method public static parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .param p1, "from_notifications"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v4, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    if-nez p0, :cond_1

    .line 323
    :cond_0
    return-object v4

    .line 313
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 314
    .local v0, "category_count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 315
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 317
    .local v2, "o":Lorg/json/JSONObject;
    if-eqz p1, :cond_2

    .line 318
    invoke-static {v2}, Lcom/perm/kate/api/User;->parseFromNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v3

    .line 321
    .local v3, "u":Lcom/perm/kate/api/User;
    :goto_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "u":Lcom/perm/kate/api/User;
    :cond_2
    invoke-static {v2}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v3

    .restart local v3    # "u":Lcom/perm/kate/api/User;
    goto :goto_1
.end method

.method public static virtualUserIdToGroupId(J)J
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 376
    neg-long v0, p0

    return-wide v0
.end method
