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

.field public invited_by:Ljava/lang/Long;

.field public is_admin:Ljava/lang/Boolean;

.field public is_closed:Ljava/lang/Boolean;

.field public is_favorite:Ljava/lang/Integer;

.field public last_name:Ljava/lang/String;

.field public last_seen:J

.field public last_seen_platform:I

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
            "Ljava/util/ArrayList<",
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

.field public verified:Ljava/lang/Integer;

.field public videos_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

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
    .locals 0

    neg-long p0, p0

    return-wide p0
.end method

.method public static isVirtualUser(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/32 v0, -0x77359400

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 9

    .line 113
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const-string v1, "id"

    .line 114
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/User;->uid:J

    const-string v2, "first_name"

    .line 115
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    :cond_0
    const-string v3, "last_name"

    .line 117
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    :cond_1
    const-string v4, "nickname"

    .line 119
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 120
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    :cond_2
    const-string v4, "screen_name"

    .line 121
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 122
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->domain:Ljava/lang/String;

    :cond_3
    const-string v4, "online"

    .line 123
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_5

    .line 124
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    :cond_5
    const-string v4, "online_mobile"

    .line 125
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 126
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    goto :goto_2

    .line 129
    :cond_7
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    :goto_2
    const-string v4, "sex"

    .line 130
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 131
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    :cond_8
    const-string v4, "bdate"

    .line 132
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 133
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    :cond_9
    const-string v4, "city"

    .line 134
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 135
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    :cond_a
    const-string v4, "country"

    .line 136
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 137
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    :cond_b
    const-string v4, "timezone"

    .line 138
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 139
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->timezone:Ljava/lang/Integer;

    :cond_c
    const-string v4, "photo_50"

    .line 140
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 141
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    :cond_d
    const-string v4, "photo_100"

    .line 142
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 143
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    :cond_e
    const-string v4, "photo_200_orig"

    .line 144
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 145
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    :cond_f
    const-string v4, "photo_200"

    .line 146
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 147
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    :cond_10
    const-string v4, "photo_400_orig"

    .line 148
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 149
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    :cond_11
    const-string v4, "has_mobile"

    .line 150
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 151
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_12

    const/4 v4, 0x1

    goto :goto_3

    :cond_12
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->has_mobile:Ljava/lang/Boolean;

    :cond_13
    const-string v4, "home_phone"

    .line 152
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 153
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->home_phone:Ljava/lang/String;

    :cond_14
    const-string v4, "mobile_phone"

    .line 154
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 155
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->mobile_phone:Ljava/lang/String;

    :cond_15
    const-string v4, "rate"

    .line 156
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "rate"

    .line 157
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    :cond_16
    const-string v4, "faculty"

    .line 158
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "faculty"

    .line 159
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->faculty:Ljava/lang/Integer;

    :cond_17
    const-string v4, "faculty_name"

    .line 160
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    const-string v4, "faculty_name"

    .line 161
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    :cond_18
    const-string v4, "university"

    .line 162
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "university"

    .line 163
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->university:Ljava/lang/Integer;

    :cond_19
    const-string v4, "university_name"

    .line 164
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string v4, "university_name"

    .line 165
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    :cond_1a
    const-string v4, "graduation"

    .line 166
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "graduation"

    .line 167
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    :cond_1b
    const-string v4, "activity"

    .line 168
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string v4, "activity"

    .line 169
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    :cond_1c
    const-string v4, "relation"

    .line 170
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    const-string v4, "relation"

    .line 171
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    :cond_1d
    const-string v4, "lists"

    .line 172
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "lists"

    .line 173
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_1f

    const-string v5, ""

    .line 176
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    sub-int/2addr v8, v7

    if-ge v6, v8, :cond_1e

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 178
    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    iput-object v4, v0, Lcom/perm/kate/api/User;->friends_list_ids:Ljava/lang/String;

    :cond_1f
    const-string v4, "last_seen"

    .line 182
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "last_seen"

    .line 183
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_20

    const-string v5, "time"

    .line 185
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-string v5, "platform"

    .line 186
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/perm/kate/api/User;->last_seen_platform:I

    :cond_20
    const-string v4, "counters"

    .line 189
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    const-string v4, "counters"

    .line 190
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_22

    const-string v5, "albums"

    .line 192
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->albums_count:I

    const-string v5, "photos"

    .line 193
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->photo_count:I

    const-string v5, "videos"

    .line 194
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->videos_count:I

    const-string v5, "audios"

    .line 195
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->audios_count:I

    const-string v5, "friends"

    .line 197
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->friends_count:I

    const-string v5, "mutual_friends"

    .line 198
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    const-string v5, "user_photos"

    .line 199
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->user_photos_count:I

    const-string v5, "online_friends"

    .line 200
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "online_friends"

    .line 201
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    :cond_21
    const-string v5, "followers"

    .line 202
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->followers_count:I

    const-string v5, "groups"

    .line 204
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/api/User;->groups_count:I

    const-string v5, "gifts"

    .line 205
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/perm/kate/api/User;->gifts_count:I

    :cond_22
    const-string v4, "relation_partner"

    .line 208
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    const-string v4, "relation_partner"

    .line 209
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 211
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    .line 212
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    .line 213
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    :cond_23
    const-string v1, "twitter"

    .line 217
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    const-string v1, "twitter"

    .line 218
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->twitter:Ljava/lang/String;

    :cond_24
    const-string v1, "facebook"

    .line 219
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_25

    const-string v1, "facebook"

    .line 220
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->facebook:Ljava/lang/String;

    :cond_25
    const-string v1, "facebook_name"

    .line 221
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "facebook_name"

    .line 222
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->facebook_name:Ljava/lang/String;

    :cond_26
    const-string v1, "skype"

    .line 223
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    const-string v1, "skype"

    .line 224
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->skype:Ljava/lang/String;

    :cond_27
    const-string v1, "livejournal"

    .line 225
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    const-string v1, "livejournal"

    .line 226
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->livejournal:Ljava/lang/String;

    :cond_28
    const-string v1, "instagram"

    .line 227
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    const-string v1, "instagram"

    .line 228
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->instagram:Ljava/lang/String;

    :cond_29
    const-string v1, "site"

    .line 229
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "site"

    .line 230
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->site:Ljava/lang/String;

    :cond_2a
    const-string v1, "interests"

    .line 232
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v1, "interests"

    .line 233
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->interests:Ljava/lang/String;

    :cond_2b
    const-string v1, "movies"

    .line 234
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2c

    const-string v1, "movies"

    .line 235
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->movies:Ljava/lang/String;

    :cond_2c
    const-string v1, "tv"

    .line 236
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "tv"

    .line 237
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->tv:Ljava/lang/String;

    :cond_2d
    const-string v1, "books"

    .line 238
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "books"

    .line 239
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->books:Ljava/lang/String;

    :cond_2e
    const-string v1, "games"

    .line 240
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "games"

    .line 241
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->games:Ljava/lang/String;

    :cond_2f
    const-string v1, "about"

    .line 242
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string v1, "about"

    .line 243
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->about:Ljava/lang/String;

    :cond_30
    const-string v1, "music"

    .line 244
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    const-string v1, "music"

    .line 245
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->music:Ljava/lang/String;

    :cond_31
    const-string v1, "activities"

    .line 246
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string v1, "activities"

    .line 247
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->activities:Ljava/lang/String;

    :cond_32
    const-string v1, "quotes"

    .line 248
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "quotes"

    .line 249
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->quotes:Ljava/lang/String;

    :cond_33
    const-string v1, "status_audio"

    .line 250
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "status_audio"

    .line 251
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Audio;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    :cond_34
    const-string v1, "deactivated"

    .line 252
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "deactivated"

    .line 253
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    :cond_35
    const-string v1, "role"

    .line 254
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string v1, "role"

    .line 255
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    :cond_36
    const-string v1, "is_favorite"

    .line 256
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    const-string v1, "is_favorite"

    .line 257
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    :cond_37
    const-string v1, "can_write_private_message"

    .line 258
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "can_write_private_message"

    .line 259
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    :cond_38
    const-string v1, "verified"

    .line 260
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "verified"

    .line 261
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    :cond_39
    const-string v1, "relatives"

    .line 262
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    const-string v1, "relatives"

    .line 263
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Relative;->parseRelatives(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->relatives:Ljava/util/ArrayList;

    :cond_3a
    const-string v1, "blacklisted_by_me"

    .line 264
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "blacklisted_by_me"

    .line 265
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    :cond_3b
    const-string v1, "blacklisted"

    .line 266
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "blacklisted"

    .line 267
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->blacklisted:Ljava/lang/Integer;

    :cond_3c
    const-string v1, "is_closed"

    .line 268
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    const-string v1, "is_closed"

    .line 269
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->is_closed:Ljava/lang/Boolean;

    :cond_3d
    const-string v1, "crop_photo"

    .line 271
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3e

    const-string v1, "rect"

    .line 273
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 275
    new-instance v1, Lcom/perm/kate/api/User$Rect;

    invoke-direct {v1}, Lcom/perm/kate/api/User$Rect;-><init>()V

    iput-object v1, v0, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v2, "x"

    .line 276
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v1, Lcom/perm/kate/api/User$Rect;->x1:D

    .line 277
    iget-object v1, v0, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v2, "x2"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v1, Lcom/perm/kate/api/User$Rect;->x2:D

    .line 278
    iget-object v1, v0, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v2, "y"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v1, Lcom/perm/kate/api/User$Rect;->y1:D

    .line 279
    iget-object v1, v0, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    const-string v2, "y2"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, v1, Lcom/perm/kate/api/User$Rect;->y2:D

    :cond_3e
    return-object v0
.end method

.method public static parseFromFave(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 5

    .line 358
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const-string v1, "id"

    .line 359
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User;->uid:J

    const-string v1, "first_name"

    .line 360
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v1, "last_name"

    .line 361
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v1, "photo_100"

    .line 362
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v1, "online"

    .line 363
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    :cond_1
    const-string v1, "online_mobile"

    .line 365
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 366
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    goto :goto_1

    .line 369
    :cond_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p0, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    :goto_1
    return-object v0
.end method

.method public static parseFromNews(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 3

    .line 287
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const-string v1, "id"

    .line 288
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User;->uid:J

    const-string v1, "first_name"

    .line 289
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v1, "last_name"

    .line 290
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v1, "photo_50"

    .line 291
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const-string v1, "photo_100"

    .line 292
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v1, "sex"

    .line 293
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    :cond_0
    const-string v1, "online"

    .line 295
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 296
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    :cond_2
    return-object v0
.end method

.method public static parseFromNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;
    .locals 3

    .line 374
    new-instance v0, Lcom/perm/kate/api/User;

    invoke-direct {v0}, Lcom/perm/kate/api/User;-><init>()V

    const-string v1, "id"

    .line 375
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/User;->uid:J

    const-string v1, "first_name"

    .line 376
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    const-string v1, "last_name"

    .line 377
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/api/Api;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    const-string v1, "photo_100"

    .line 378
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const-string v1, "photo_50"

    .line 379
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    return-object v0
.end method

.method public static parseUsers(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    .line 312
    invoke-static {p0, v0}, Lcom/perm/kate/api/User;->parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static parseUsers(Lorg/json/JSONArray;Z)Ljava/util/ArrayList;
    .locals 5

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 321
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 323
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 326
    invoke-static {v3}, Lcom/perm/kate/api/User;->parseFromNotifications(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v3

    goto :goto_1

    .line 328
    :cond_1
    invoke-static {v3}, Lcom/perm/kate/api/User;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/User;

    move-result-object v3

    .line 331
    :goto_1
    iget-object v4, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    .line 333
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static virtualUserIdToGroupId(J)J
    .locals 0

    neg-long p0, p0

    return-wide p0
.end method
