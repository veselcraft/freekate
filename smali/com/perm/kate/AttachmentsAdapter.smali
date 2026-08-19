.class public Lcom/perm/kate/AttachmentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private attachments:Ljava/util/ArrayList;

.field private attachments_objects:Ljava/util/ArrayList;

.field private final forward_messages_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    .line 42
    iput-object p1, p0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    .line 43
    iput-object p3, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method private getChunkDataByType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p2, :cond_0

    const-string p2, "photo"

    .line 225
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const-string p2, "audio"

    .line 227
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "video"

    .line 229
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    const-string p2, "location:"

    .line 231
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    const-string p2, "wall"

    .line 233
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v1, 0x5

    if-ne p2, v1, :cond_5

    .line 235
    iget-object p2, p0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    const-string p2, "doc"

    .line 237
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/16 v1, 0x8

    if-ne p2, v1, :cond_7

    const-string p2, "poll"

    .line 239
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/16 v1, 0x9

    if-ne p2, v1, :cond_8

    const-string p2, "album"

    .line 241
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const/16 v1, 0xa

    if-ne p2, v1, :cond_9

    const-string p2, "audio_playlist"

    .line 243
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    const/16 v1, 0xb

    if-ne p2, v1, :cond_a

    const-string p2, "podcast"

    .line 245
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const/16 v1, 0xc

    if-ne p2, v1, :cond_b

    const-string p2, "story"

    .line 247
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/16 v1, 0xd

    if-ne p2, v1, :cond_c

    const-string p2, "audio_message"

    .line 249
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method private getStubByType(I)I
    .locals 3

    const v0, 0x7f080208

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/16 v2, 0xa

    if-eq p1, v2, :cond_b

    const/16 v2, 0xb

    if-eq p1, v2, :cond_b

    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    const p1, 0x7f0801c1

    return p1

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    const p1, 0x7f080173

    return p1

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    const p1, 0x7f0801fc

    return p1

    :cond_7
    const/16 v1, 0x8

    if-ne p1, v1, :cond_8

    const p1, 0x7f080242

    return p1

    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    return v0

    :cond_9
    const/16 v1, 0xc

    if-ne p1, v1, :cond_a

    return v0

    :cond_a
    const/4 p1, 0x0

    return p1

    .line 257
    :cond_b
    :goto_0
    invoke-static {v1}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 70
    iget-object v3, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0c0029

    move-object/from16 v5, p3

    .line 71
    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 74
    :goto_0
    iget-object v4, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "audio_playlist"

    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v10, 0x4

    const/16 v15, 0xb

    const/16 v5, 0x8

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v6, :cond_1

    const/16 v6, 0xa

    goto/16 :goto_2

    :cond_1
    const-string v6, "photo"

    .line 78
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_2
    const-string v6, "audio_message"

    .line 81
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0xd

    goto/16 :goto_2

    :cond_3
    const-string v6, "audio"

    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_4
    const-string v6, "video"

    .line 85
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_5
    const-string v6, "location:"

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x3

    goto :goto_2

    :cond_6
    const-string v6, "wall"

    .line 89
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x4

    goto :goto_2

    .line 91
    :cond_7
    iget-object v6, v0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x5

    goto :goto_2

    :cond_8
    const-string v6, "doc"

    .line 93
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x6

    goto :goto_2

    :cond_9
    const-string v6, "http"

    .line 95
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "link"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_1

    :cond_a
    const-string v6, "poll"

    .line 97
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x8

    goto :goto_2

    :cond_b
    const-string v6, "album"

    .line 99
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/16 v6, 0x9

    goto :goto_2

    :cond_c
    const-string v6, "podcast"

    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0xb

    goto :goto_2

    :cond_d
    const-string v6, "story"

    .line 103
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/16 v6, 0xc

    goto :goto_2

    :cond_e
    const/4 v6, -0x1

    goto :goto_2

    :cond_f
    :goto_1
    const/4 v6, 0x7

    .line 105
    :goto_2
    invoke-direct {v0, v4, v6}, Lcom/perm/kate/AttachmentsAdapter;->getChunkDataByType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    const-string v14, "_"

    .line 106
    invoke-virtual {v7, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    if-eq v6, v13, :cond_10

    .line 110
    array-length v13, v14

    if-lt v13, v12, :cond_10

    if-eq v6, v5, :cond_10

    .line 112
    :try_start_0
    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :try_start_1
    aget-object v13, v14, v11

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_0
    move-object/from16 v2, v16

    :catch_1
    move-object/from16 v13, v16

    goto :goto_3

    :cond_10
    move-object/from16 v2, v16

    move-object v13, v2

    :goto_3
    const v14, 0x7f090191

    .line 117
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 118
    invoke-direct {v0, v6}, Lcom/perm/kate/AttachmentsAdapter;->getStubByType(I)I

    move-result v5

    invoke-virtual {v14, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v5, 0x7f090353

    .line 120
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f090350

    .line 122
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const-string v8, ""

    .line 123
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f090352

    .line 124
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 125
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_24

    if-eqz v13, :cond_24

    if-nez v6, :cond_13

    .line 129
    iget-object v6, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f0f0265

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 132
    iget-object v1, v2, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, v2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    :goto_4
    move-object/from16 v16, v1

    goto :goto_5

    .line 136
    :cond_11
    :try_start_2
    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 137
    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    :cond_12
    :goto_5
    move-object/from16 v19, v16

    goto/16 :goto_8

    :cond_13
    const-wide/16 v17, 0x0

    if-eq v6, v11, :cond_20

    if-ne v6, v15, :cond_14

    goto/16 :goto_6

    :cond_14
    if-ne v6, v12, :cond_17

    .line 154
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 156
    iget-object v2, v1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v2, v1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-wide v4, v1, Lcom/perm/kate/api/Video;->duration:J

    cmp-long v2, v4, v17

    if-lez v2, :cond_15

    .line 159
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_15
    iget-object v1, v1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    goto :goto_4

    .line 162
    :cond_16
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f051d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_17
    if-ne v6, v10, :cond_18

    .line 165
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f059e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_18
    const/4 v1, 0x6

    if-ne v6, v1, :cond_1a

    const v1, 0x7f0f04a0

    .line 169
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 170
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v5, v6, v9, v10}, Lcom/perm/kate/db/DataHelper;->fetchDoc(JJ)Lcom/perm/kate/api/Document;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 172
    iget-object v1, v1, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 174
    :cond_19
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_1a
    const/16 v1, 0x9

    if-ne v6, v1, :cond_1c

    .line 177
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v1, v6, v7, v9, v10}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(JJ)Lcom/perm/kate/api/Album;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 179
    iget-object v2, v1, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, v1, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 182
    :cond_1b
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1c
    const/16 v1, 0xa

    if-ne v6, v1, :cond_1e

    .line 187
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchAudioAlbum(JJ)Lcom/perm/kate/api/AudioAlbum;

    move-result-object v1

    const v2, 0x7f0f0058

    if-eqz v1, :cond_1d

    .line 189
    iget-object v1, v1, Lcom/perm/kate/api/AudioAlbum;->title:Ljava/lang/String;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 192
    :cond_1d
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1e
    const/16 v1, 0xc

    if-ne v6, v1, :cond_1f

    .line 194
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0495

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1f
    const/16 v1, 0xd

    if-ne v6, v1, :cond_12

    .line 197
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0421

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 142
    :cond_20
    :goto_6
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v1, v7, v8, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const v2, 0x7f0f03f5

    if-eqz v1, :cond_22

    .line 144
    iget-object v6, v1, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v5

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_21
    iget-object v2, v1, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 146
    :goto_7
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-wide v1, v1, Lcom/perm/kate/api/Audio;->duration:J

    cmp-long v4, v1, v17

    if-lez v4, :cond_12

    .line 148
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_22
    if-ne v6, v15, :cond_23

    .line 150
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 152
    :cond_23
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f04ea

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :goto_8
    if-eqz v19, :cond_28

    .line 201
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v18

    const/16 v21, 0x1

    const/16 v22, 0x5a

    const v23, 0x7f080208

    const/16 v24, 0x0

    move-object/from16 v20, v14

    invoke-virtual/range {v18 .. v24}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_9

    :cond_24
    const/4 v2, 0x3

    if-ne v6, v2, :cond_25

    .line 205
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f0248

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_25
    const/4 v2, 0x5

    if-ne v6, v2, :cond_26

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f0f00f0

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_26
    const/4 v2, 0x7

    if-ne v6, v2, :cond_27

    .line 213
    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f0f0317

    invoke-virtual {v2, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_27
    const/16 v1, 0x8

    if-ne v6, v1, :cond_28

    .line 217
    iget-object v1, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v2, 0x7f0f03f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_28
    :goto_9
    return-object v3
.end method
