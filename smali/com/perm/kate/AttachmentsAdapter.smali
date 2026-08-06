.class public Lcom/perm/kate/AttachmentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AttachmentsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private final album_str:Ljava/lang/String;

.field private attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private attachments_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final audio_str:Ljava/lang/String;

.field private final doc_str:Ljava/lang/String;

.field private final forward_messages_str:Ljava/lang/String;

.field private final link_str:Ljava/lang/String;

.field private final location_str:Ljava/lang/String;

.field private final photo_str:Ljava/lang/String;

.field private final poll_str:Ljava/lang/String;

.field private final video_str:Ljava/lang/String;

.field private final wall_str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const-string v0, "photo"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->photo_str:Ljava/lang/String;

    .line 25
    const-string v0, "audio"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->audio_str:Ljava/lang/String;

    .line 26
    const-string v0, "video"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->video_str:Ljava/lang/String;

    .line 27
    const-string v0, "location:"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->location_str:Ljava/lang/String;

    .line 28
    const-string v0, "wall"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->wall_str:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    .line 30
    const-string v0, "doc"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->doc_str:Ljava/lang/String;

    .line 31
    const-string v0, "poll"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->poll_str:Ljava/lang/String;

    .line 32
    const-string v0, "link"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->link_str:Ljava/lang/String;

    .line 33
    const-string v0, "album"

    iput-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->album_str:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    .line 38
    iput-object p3, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments_objects:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method private getChunkDataByType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 191
    if-nez p2, :cond_1

    .line 192
    const-string v0, "photo"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 209
    .end local p1    # "item":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 193
    .restart local p1    # "item":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 194
    const-string v0, "audio"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 196
    const-string v0, "video"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 197
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 198
    const-string v0, "location:"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 199
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 200
    const-string v0, "wall"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 201
    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    .line 202
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 203
    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7

    .line 204
    const-string v0, "doc"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 205
    :cond_7
    const/16 v0, 0x8

    if-ne p2, v0, :cond_8

    .line 206
    const-string v0, "poll"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 207
    :cond_8
    const/16 v0, 0x9

    if-ne p2, v0, :cond_0

    .line 208
    const-string v0, "album"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getStubByType(I)I
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    const v0, 0x7f020143

    .line 213
    if-nez p1, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    if-ne p1, v1, :cond_2

    .line 216
    invoke-static {v1}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v0

    goto :goto_0

    .line 217
    :cond_2
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 219
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 220
    const v0, 0x7f020111

    goto :goto_0

    .line 221
    :cond_3
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 223
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 225
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    .line 226
    const v0, 0x7f0200c0

    goto :goto_0

    .line 227
    :cond_4
    const/4 v1, 0x7

    if-ne p1, v1, :cond_5

    .line 228
    const v0, 0x7f020138

    goto :goto_0

    .line 229
    :cond_5
    const/16 v1, 0x8

    if-ne p1, v1, :cond_6

    .line 230
    const v0, 0x7f020175

    goto :goto_0

    .line 231
    :cond_6
    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    .line 233
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 56
    const-wide/16 v0, -0x1

    .line 57
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 26
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    if-nez p2, :cond_4

    .line 64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 65
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030027

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v2, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 68
    .end local v14    # "inflater":Landroid/view/LayoutInflater;
    .local v23, "vi":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 69
    .local v15, "item":Ljava/lang/String;
    const/16 v21, -0x1

    .line 70
    .local v21, "type":I
    const-string v2, "photo"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    const/16 v21, 0x0

    .line 90
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/perm/kate/AttachmentsAdapter;->getChunkDataByType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "chunk":Ljava/lang/String;
    const-string v2, "_"

    invoke-virtual {v10, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 92
    .local v13, "ids":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 93
    .local v16, "owner_id":Ljava/lang/Long;
    const/4 v12, 0x0

    .line 95
    .local v12, "id":Ljava/lang/Long;
    const/4 v2, 0x3

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    array-length v2, v13

    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    const/16 v2, 0x8

    move/from16 v0, v21

    if-eq v0, v2, :cond_1

    .line 97
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 98
    const/4 v2, 0x1

    aget-object v2, v13, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    .line 102
    :cond_1
    :goto_2
    const v2, 0x7f0e0088

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 103
    .local v4, "iv_attachments_icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/perm/kate/AttachmentsAdapter;->getStubByType(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 105
    const v2, 0x7f0e0089

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 106
    .local v19, "tv_attachments_title":Landroid/widget/TextView;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const v2, 0x7f0e008a

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 108
    .local v18, "tv_attachments_artist":Landroid/widget/TextView;
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const v2, 0x7f0e008b

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 110
    .local v20, "tv_video_duration":Landroid/widget/TextView;
    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, "pic_url":Ljava/lang/String;
    if-eqz v16, :cond_1a

    if-eqz v12, :cond_1a

    .line 113
    if-nez v21, :cond_10

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f07020b

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v17

    .line 116
    .local v17, "p":Lcom/perm/kate/api/Photo;
    if-eqz v17, :cond_f

    .line 117
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 167
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 168
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const v7, 0x7f020143

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 187
    :cond_3
    :goto_4
    return-object v23

    .line 67
    .end local v3    # "pic_url":Ljava/lang/String;
    .end local v4    # "iv_attachments_icon":Landroid/widget/ImageView;
    .end local v10    # "chunk":Ljava/lang/String;
    .end local v12    # "id":Ljava/lang/Long;
    .end local v13    # "ids":[Ljava/lang/String;
    .end local v15    # "item":Ljava/lang/String;
    .end local v16    # "owner_id":Ljava/lang/Long;
    .end local v18    # "tv_attachments_artist":Landroid/widget/TextView;
    .end local v19    # "tv_attachments_title":Landroid/widget/TextView;
    .end local v20    # "tv_video_duration":Landroid/widget/TextView;
    .end local v21    # "type":I
    .end local v23    # "vi":Landroid/view/View;
    :cond_4
    move-object/from16 v23, p2

    .restart local v23    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 72
    .restart local v15    # "item":Ljava/lang/String;
    .restart local v21    # "type":I
    :cond_5
    const-string v2, "audio"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 73
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 74
    :cond_6
    const-string v2, "video"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 75
    const/16 v21, 0x2

    goto/16 :goto_1

    .line 76
    :cond_7
    const-string v2, "location:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 77
    const/16 v21, 0x3

    goto/16 :goto_1

    .line 78
    :cond_8
    const-string v2, "wall"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 79
    const/16 v21, 0x4

    goto/16 :goto_1

    .line 80
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->forward_messages_str:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 81
    const/16 v21, 0x5

    goto/16 :goto_1

    .line 82
    :cond_a
    const-string v2, "doc"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 83
    const/16 v21, 0x6

    goto/16 :goto_1

    .line 84
    :cond_b
    const-string v2, "http"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "link"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 85
    :cond_c
    const/16 v21, 0x7

    goto/16 :goto_1

    .line 86
    :cond_d
    const-string v2, "poll"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 87
    const/16 v21, 0x8

    goto/16 :goto_1

    .line 88
    :cond_e
    const-string v2, "album"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    const/16 v21, 0x9

    goto/16 :goto_1

    .line 121
    .restart local v3    # "pic_url":Ljava/lang/String;
    .restart local v4    # "iv_attachments_icon":Landroid/widget/ImageView;
    .restart local v10    # "chunk":Ljava/lang/String;
    .restart local v12    # "id":Ljava/lang/Long;
    .restart local v13    # "ids":[Ljava/lang/String;
    .restart local v16    # "owner_id":Ljava/lang/Long;
    .restart local v17    # "p":Lcom/perm/kate/api/Photo;
    .restart local v18    # "tv_attachments_artist":Landroid/widget/TextView;
    .restart local v19    # "tv_attachments_title":Landroid/widget/TextView;
    .restart local v20    # "tv_video_duration":Landroid/widget/TextView;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments_objects:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/perm/kate/api/Photo;

    move-object/from16 v17, v0

    .line 122
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 125
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    :cond_10
    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_12

    .line 126
    const/4 v3, 0x0

    .line 127
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAudio(JJ)Lcom/perm/kate/api/Audio;

    move-result-object v9

    .line 128
    .local v9, "a":Lcom/perm/kate/api/Audio;
    if-eqz v9, :cond_11

    .line 129
    iget-object v2, v9, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v2, v9, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-wide v6, v9, Lcom/perm/kate/api/Audio;->duration:J

    const-wide/16 v24, 0x0

    cmp-long v2, v6, v24

    if-lez v2, :cond_2

    .line 132
    iget-wide v6, v9, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 134
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f07003c

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 135
    .end local v9    # "a":Lcom/perm/kate/api/Audio;
    :cond_12
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_15

    .line 136
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchVideo(JJ)Lcom/perm/kate/api/Video;

    move-result-object v22

    .line 137
    .local v22, "v":Lcom/perm/kate/api/Video;
    if-eqz v22, :cond_14

    .line 138
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/perm/kate/api/Video;->duration:J

    const-wide/16 v24, 0x0

    cmp-long v2, v6, v24

    if-lez v2, :cond_13

    .line 141
    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_13
    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    goto/16 :goto_3

    .line 144
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070505

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 145
    .end local v22    # "v":Lcom/perm/kate/api/Video;
    :cond_15
    const/4 v2, 0x4

    move/from16 v0, v21

    if-ne v0, v2, :cond_16

    .line 146
    const/4 v3, 0x0

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070513

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 148
    :cond_16
    const/4 v2, 0x6

    move/from16 v0, v21

    if-ne v0, v2, :cond_18

    .line 149
    const/4 v3, 0x0

    .line 150
    const v2, 0x7f070409

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchDoc(JJ)Lcom/perm/kate/api/Document;

    move-result-object v11

    .line 152
    .local v11, "doc":Lcom/perm/kate/api/Document;
    if-eqz v11, :cond_17

    .line 153
    iget-object v2, v11, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 155
    :cond_17
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 156
    .end local v11    # "doc":Lcom/perm/kate/api/Document;
    :cond_18
    const/16 v2, 0x9

    move/from16 v0, v21

    if-ne v0, v2, :cond_2

    .line 157
    const/4 v3, 0x0

    .line 158
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(JJ)Lcom/perm/kate/api/Album;

    move-result-object v9

    .line 159
    .local v9, "a":Lcom/perm/kate/api/Album;
    if-eqz v9, :cond_19

    .line 160
    iget-object v2, v9, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v2, v9, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 163
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070128

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 170
    .end local v9    # "a":Lcom/perm/kate/api/Album;
    :cond_1a
    const/4 v2, 0x3

    move/from16 v0, v21

    if-ne v0, v2, :cond_1b

    .line 171
    const/4 v3, 0x0

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0701ed

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 174
    :cond_1b
    const/4 v2, 0x5

    move/from16 v0, v21

    if-ne v0, v2, :cond_1c

    .line 175
    const/4 v3, 0x0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f070415

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 178
    :cond_1c
    const/4 v2, 0x7

    move/from16 v0, v21

    if-ne v0, v2, :cond_1d

    .line 179
    const/4 v3, 0x0

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0702bb

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->attachments:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 182
    :cond_1d
    const/16 v2, 0x8

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 183
    const/4 v3, 0x0

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f070387

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 123
    .restart local v17    # "p":Lcom/perm/kate/api/Photo;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 99
    .end local v3    # "pic_url":Ljava/lang/String;
    .end local v4    # "iv_attachments_icon":Landroid/widget/ImageView;
    .end local v17    # "p":Lcom/perm/kate/api/Photo;
    .end local v18    # "tv_attachments_artist":Landroid/widget/TextView;
    .end local v19    # "tv_attachments_title":Landroid/widget/TextView;
    .end local v20    # "tv_video_duration":Landroid/widget/TextView;
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method
