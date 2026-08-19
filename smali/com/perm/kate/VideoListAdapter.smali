.class public Lcom/perm/kate/VideoListAdapter;
.super Landroid/widget/BaseAdapter;
.source "VideoListAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field public displayDownloadStates:Z

.field public downloadStates:Ljava/util/HashMap;

.field items:Ljava/util/ArrayList;

.field private show_counts_views:Z

.field private videoPreviewClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    .line 27
    iput-boolean v0, p0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 186
    new-instance v0, Lcom/perm/kate/VideoListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoListAdapter$1;-><init>(Lcom/perm/kate/VideoListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/VideoListAdapter;->videoPreviewClick:Landroid/view/View$OnClickListener;

    .line 31
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Video;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f090284

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const v1, 0x7f090288

    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f090287

    .line 129
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09028a

    .line 130
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09030c

    .line 131
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p2, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 134
    iget-object v5, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 135
    iget-object v5, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x8

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_2

    const/4 p2, 0x3

    if-eq v4, p2, :cond_1

    .line 164
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 158
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 159
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0f00de

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 144
    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 145
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    sget-object p1, Lcom/perm/kate/video_cache/VideoCacheService;->currentDownloadId:Ljava/lang/Long;

    if-eqz p1, :cond_5

    iget-wide v4, p2, Lcom/perm/kate/api/Video;->vid:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long v1, v4, p1

    if-nez v1, :cond_5

    .line 148
    sget p1, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 149
    sget p1, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 150
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    div-int/lit16 v0, v0, 0x400

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " KB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    if-nez p2, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    sget p2, Lcom/perm/kate/video_cache/VideoCacheService;->currentProgress:I

    int-to-long v0, p2

    const-wide/16 v4, 0x64

    mul-long v0, v0, v4

    sget p2, Lcom/perm/kate/video_cache/VideoCacheService;->currentLength:I

    int-to-long v4, p2

    div-long/2addr v0, v4

    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const p2, 0x7f0f041a

    .line 141
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    iget-wide v0, p1, Lcom/perm/kate/api/Video;->vid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0c0135

    goto :goto_0

    :cond_0
    const v2, 0x7f0c0138

    :goto_0
    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 50
    :cond_1
    iget-object p3, p0, Lcom/perm/kate/VideoListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Video;

    const p3, 0x7f0903ea

    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 52
    iget-object v1, p1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0903e8

    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 55
    iget-object v1, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const p3, 0x7f0903e9

    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 62
    iget-wide v3, p1, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-boolean p3, p0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    if-nez p3, :cond_4

    const p3, 0x7f090277

    .line 66
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 67
    iget-object v1, p1, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p1, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_2
    const/4 p3, 0x5

    new-array p3, p3, [Ljava/lang/Object;

    .line 75
    iget-wide v3, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p3, v0

    const/4 v1, 0x1

    .line 76
    iget-wide v3, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, p3, v1

    .line 77
    iget-object v1, p1, Lcom/perm/kate/api/Video;->player:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, p3, v3

    .line 78
    iget-wide v4, p1, Lcom/perm/kate/api/Video;->owner_id:J

    iget-wide v6, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v4, v5, v6, v7}, Lcom/perm/kate/api/Video;->getVideoUrl(JJ)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, p3, v4

    const/4 v1, 0x4

    .line 79
    iget-object v5, p1, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    aput-object v5, p3, v1

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p3, 0x7f09019e

    .line 81
    invoke-virtual {p2, p3, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p3, 0x7f0901a6

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 83
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image:Ljava/lang/String;

    const-wide v5, 0x4060400000000000L    # 130.0

    .line 84
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v9

    .line 86
    sget v5, Lcom/perm/kate/KApplication;->screenSize:I

    if-lt v5, v4, :cond_5

    .line 87
    iget-object v1, p1, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    :cond_5
    move-object v6, v1

    .line 89
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    const/4 v8, 0x1

    const v10, 0x7f080208

    const/4 v11, 0x0

    move-object v7, p3

    invoke-virtual/range {v5 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 91
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/perm/kate/VideoListAdapter;->videoPreviewClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-boolean p3, p0, Lcom/perm/kate/VideoListAdapter;->displayDownloadStates:Z

    if-eqz p3, :cond_6

    .line 94
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/VideoListAdapter;->displayDownloadState(Landroid/view/View;Lcom/perm/kate/api/Video;)V

    goto/16 :goto_3

    :cond_6
    const p3, 0x7f0903eb

    .line 96
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/VideoListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0f02f5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/perm/kate/api/Video;->views:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0901b9

    .line 98
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 99
    iget-boolean v1, p0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    .line 100
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    const p3, 0x7f090381

    .line 101
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v1, 0x7f0901b8

    .line 102
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 103
    iget-object v4, p1, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object p3, p1, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 105
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p3

    invoke-virtual {p3}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    :cond_7
    const p3, -0x444445

    .line 107
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const p3, 0x7f0900a3

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 114
    iget-object v1, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/perm/kate/VideoListAdapter;->downloadStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_9

    .line 115
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 117
    :cond_9
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 119
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_4
    return-object p2
.end method

.method public showLikeCounts()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/perm/kate/VideoListAdapter;->show_counts_views:Z

    return-void
.end method
