.class public Lcom/perm/kate/VideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field public displayDownloadStates:Z

.field public downloadStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;"
        }
    .end annotation
.end field

.field private show_counts_views:Z

.field private videoPreviewClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    .line 25
    iput-boolean v1, p0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    .line 26
    iput-boolean v1, p0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 172
    new-instance v0, Lcom/perm/kate/VideoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoListAdapter$1;-><init>(Lcom/perm/kate/VideoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->videoPreviewClick:Landroid/view/View$OnClickListener;

    .line 30
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoListAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Video;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "video"    # Lcom/perm/kate/api/Video;

    .prologue
    .line 113
    const v11, 0x7f0e009e

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 114
    .local v4, "progress":Landroid/widget/ProgressBar;
    const v11, 0x7f0e009f

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 115
    .local v6, "progressDetails":Landroid/widget/LinearLayout;
    const v11, 0x7f0e00a0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 116
    .local v5, "progressCurrent":Landroid/widget/TextView;
    const v11, 0x7f0e00a1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 117
    .local v7, "progressPersent":Landroid/widget/TextView;
    const v11, 0x7f0e00a2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 118
    .local v9, "status":Landroid/widget/TextView;
    const/4 v8, 0x0

    .line 119
    .local v8, "state":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "pair_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 122
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 150
    :pswitch_0
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    :cond_1
    :goto_0
    return-void

    .line 124
    :pswitch_1
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 125
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    const v11, 0x7f07039f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 130
    :pswitch_2
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    sget-object v11, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz v11, :cond_1

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/perm/kate/api/Video;->vid:J

    sget-object v11, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v12, v14

    if-nez v11, :cond_1

    .line 134
    sget v11, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 135
    sget v11, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 136
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " KB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "x":Ljava/lang/String;
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v12, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    if-nez v12, :cond_2

    const-wide/16 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "percent":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    .end local v3    # "percent":Ljava/lang/String;
    :cond_2
    sget v12, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    int-to-long v12, v12

    const-wide/16 v14, 0x64

    mul-long/2addr v12, v14

    sget v14, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    int-to-long v14, v14

    div-long/2addr v12, v14

    goto :goto_1

    .line 144
    .end local v10    # "x":Ljava/lang/String;
    :pswitch_3
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    const v11, 0x7f0700a2

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {p0}, Lcom/perm/kate/VideoListAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->vid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 44
    move-object/from16 v23, p2

    .line 46
    .local v23, "view":Landroid/view/View;
    if-nez v23, :cond_0

    .line 47
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    if-eqz v4, :cond_2

    const v4, 0x7f030115

    :goto_0
    const/4 v9, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v7, v4, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v23

    .line 48
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/perm/kate/api/Video;

    .line 49
    .local v22, "video":Lcom/perm/kate/api/Video;
    const v4, 0x7f0e0351

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 50
    .local v20, "tv_video_title":Landroid/widget/TextView;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v4, 0x7f0e0352

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 53
    .local v18, "tv_video_artist":Landroid/widget/TextView;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 54
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    :goto_1
    const v4, 0x7f0e0353

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 60
    .local v19, "tv_video_duration":Landroid/widget/TextView;
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->duration:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 63
    .local v16, "tags":[Ljava/lang/Object;
    const/4 v4, 0x0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->vid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v16, v4

    .line 64
    const/4 v4, 0x1

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->owner_id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v16, v4

    .line 65
    const/4 v4, 0x2

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    aput-object v7, v16, v4

    .line 66
    const/4 v4, 0x3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->owner_id:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->vid:J

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Lcom/perm/kate/api/Video;->getVideoUrl(JJ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v4

    .line 67
    const/4 v4, 0x4

    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    aput-object v7, v16, v4

    .line 68
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    const v4, 0x7f0e028f

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    const v4, 0x7f0e0350

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 71
    .local v6, "iv_video_pic":Landroid/widget/ImageView;
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    .line 72
    .local v5, "url":Ljava/lang/String;
    const-wide v24, 0x4060400000000000L    # 130.0

    invoke-static/range {v24 .. v25}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    .line 74
    .local v8, "resample_size":I
    sget v4, Lcom/perm/kate/KApplication;->screenSize:I

    const/4 v7, 0x3

    if-lt v4, v7, :cond_1

    .line 75
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    .line 77
    :cond_1
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const v9, 0x7f020143

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 79
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/VideoListAdapter;->videoPreviewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    if-eqz v4, :cond_4

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/VideoListAdapter;->displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    .line 100
    :goto_2
    const v4, 0x7f0e009c

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 101
    .local v11, "cached_icon":Landroid/view/View;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->owner_id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/perm/kate/api/Video;->vid:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 102
    .local v15, "pair_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "iv_video_pic":Landroid/widget/ImageView;
    .end local v8    # "resample_size":I
    .end local v11    # "cached_icon":Landroid/view/View;
    .end local v15    # "pair_id":Ljava/lang/String;
    .end local v16    # "tags":[Ljava/lang/Object;
    .end local v18    # "tv_video_artist":Landroid/widget/TextView;
    .end local v19    # "tv_video_duration":Landroid/widget/TextView;
    .end local v20    # "tv_video_title":Landroid/widget/TextView;
    .end local v22    # "video":Lcom/perm/kate/api/Video;
    :goto_3
    return-object v23

    .line 47
    :cond_2
    const v4, 0x7f030118

    goto/16 :goto_0

    .line 57
    .restart local v18    # "tv_video_artist":Landroid/widget/TextView;
    .restart local v20    # "tv_video_title":Landroid/widget/TextView;
    .restart local v22    # "video":Lcom/perm/kate/api/Video;
    :cond_3
    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 106
    .end local v18    # "tv_video_artist":Landroid/widget/TextView;
    .end local v20    # "tv_video_title":Landroid/widget/TextView;
    .end local v22    # "video":Lcom/perm/kate/api/Video;
    :catch_0
    move-exception v17

    .line 107
    .local v17, "th":Ljava/lang/Throwable;
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 84
    .end local v17    # "th":Ljava/lang/Throwable;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "iv_video_pic":Landroid/widget/ImageView;
    .restart local v8    # "resample_size":I
    .restart local v16    # "tags":[Ljava/lang/Object;
    .restart local v18    # "tv_video_artist":Landroid/widget/TextView;
    .restart local v19    # "tv_video_duration":Landroid/widget/TextView;
    .restart local v20    # "tv_video_title":Landroid/widget/TextView;
    .restart local v22    # "video":Lcom/perm/kate/api/Video;
    :cond_4
    const v4, 0x7f0e0359

    :try_start_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 85
    .local v21, "tv_video_views":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    const v9, 0x7f07029f

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    iget v7, v0, Lcom/perm/kate/api/Video;->views:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v4, 0x7f0e0073

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 87
    .local v14, "likes_view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_6

    .line 88
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v4, 0x7f0e035a

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 90
    .local v12, "like_count_text":Landroid/widget/TextView;
    const v4, 0x7f0e0074

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 91
    .local v13, "likes_heart":Landroid/widget/ImageView;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 93
    const v4, 0x7f020118

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 95
    :cond_5
    const v4, 0x7f020117

    invoke-virtual {v13, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 97
    .end local v12    # "like_count_text":Landroid/widget/TextView;
    .end local v13    # "likes_heart":Landroid/widget/ImageView;
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 105
    .end local v14    # "likes_view":Landroid/view/View;
    .end local v21    # "tv_video_views":Landroid/widget/TextView;
    .restart local v11    # "cached_icon":Landroid/view/View;
    .restart local v15    # "pair_id":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public showLikeCounts()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    .line 40
    return-void
.end method
