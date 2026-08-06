.class public Lcom/perm/kate/AlbumCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumCommentsAdapter.java"


# instance fields
.field private attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field private big_photos:Z

.field private groupCache:Lcom/perm/utils/GroupCache;

.field private hint:Ljava/lang/String;

.field private mActivity:Lcom/perm/kate/BaseActivity;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "activity"    # Lcom/perm/kate/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perm/kate/BaseActivity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/perm/kate/api/Photo;>;"
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 31
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 33
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->big_photos:Z

    .line 202
    new-instance v0, Lcom/perm/kate/AlbumCommentsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsAdapter$1;-><init>(Lcom/perm/kate/AlbumCommentsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 213
    new-instance v0, Lcom/perm/kate/AlbumCommentsAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsAdapter$2;-><init>(Lcom/perm/kate/AlbumCommentsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    .line 41
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v0, :cond_0

    const/16 v6, 0x9b

    .line 42
    .local v6, "photo_offset":I
    :goto_0
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    iget-boolean v2, p0, Lcom/perm/kate/AlbumCommentsAdapter;->big_photos:Z

    const/4 v4, 0x1

    const/16 v7, 0x8

    move v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 44
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    iput-boolean v3, v0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->hint:Ljava/lang/String;

    .line 46
    return-void

    .line 41
    .end local v6    # "photo_offset":I
    :cond_0
    const/16 v6, 0x5f

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumCommentsAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    .line 222
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 223
    return-void
.end method

.method public displayData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AlbumCommentsAdapter;->notifyDataSetChanged()V

    .line 54
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    iget-wide v0, v0, Lcom/perm/kate/api/Comment;->cid:J

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 48
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 78
    if-nez p2, :cond_2

    .line 79
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/LayoutInflater;

    .line 80
    .local v32, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030020

    const/4 v3, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    .line 84
    .end local v32    # "inflater":Landroid/view/LayoutInflater;
    .local v47, "vi":Landroid/view/View;
    :goto_0
    const v2, 0x7f0e006f

    :try_start_0
    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 85
    .local v4, "img_comment_photo":Landroid/widget/ImageView;
    const v2, 0x7f0e0070

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 86
    .local v43, "tv_comment_name":Landroid/widget/TextView;
    const v2, 0x7f0e0071

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 87
    .local v42, "tv_comment_message":Landroid/widget/TextView;
    const-string v37, ""

    .line 88
    .local v37, "name":Ljava/lang/String;
    const-string v30, ""

    .line 89
    .local v30, "full_name":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/AlbumCommentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/perm/kate/api/Comment;

    .line 90
    .local v27, "comment":Lcom/perm/kate/api/Comment;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 91
    .local v45, "uid":Ljava/lang/Long;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v46

    .line 93
    .local v46, "user":Lcom/perm/kate/api/User;
    if-eqz v46, :cond_3

    .line 94
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 95
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 94
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 96
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 114
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :goto_1
    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/AlbumCommentsAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 117
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 118
    .local v36, "message":Ljava/lang/String;
    new-instance v26, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    .local v26, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static/range {v26 .. v26}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 125
    const/16 v2, 0x8

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v2, 0x7f0e026f

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 133
    const v2, 0x7f0e0075

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 134
    .local v10, "tv_posts_news_like_count":Landroid/widget/TextView;
    const v2, 0x7f0e0073

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 135
    .local v9, "likes_view":Landroid/view/View;
    const v2, 0x7f0e0074

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 136
    .local v11, "likes_heart":Landroid/widget/ImageView;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/perm/kate/api/Comment;->like_count:I

    move/from16 v33, v0

    .line 137
    .local v33, "like_count":I
    move-object/from16 v0, v27

    iget-boolean v8, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 138
    .local v8, "like":Z
    move/from16 v0, v33

    int-to-long v6, v0

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 140
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 141
    .local v28, "comment_id":Ljava/lang/Long;
    new-instance v29, Lcom/perm/kate/CommentTag;

    invoke-direct/range {v29 .. v29}, Lcom/perm/kate/CommentTag;-><init>()V

    .line 142
    .local v29, "ctag":Lcom/perm/kate/CommentTag;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v29

    iput-wide v2, v0, Lcom/perm/kate/CommentTag;->comment_id:J

    .line 143
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    .line 144
    move-object/from16 v0, v29

    iput-boolean v8, v0, Lcom/perm/kate/CommentTag;->like:Z

    .line 145
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    .line 146
    move-object/from16 v0, v47

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    const v2, 0x7f0e0076

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    .line 150
    .local v44, "tv_message_ago":Landroid/widget/TextView;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/perm/kate/api/Comment;->date:J

    move-wide/from16 v34, v0

    .line 151
    .local v34, "long_date":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v0, v34

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 152
    .local v25, "ago_text":Ljava/lang/String;
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    const v2, 0x7f0e0082

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 156
    .local v20, "photo_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0084

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 157
    .local v21, "links_container":Landroid/widget/LinearLayout;
    const v2, 0x7f0e0086

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 158
    .local v22, "audio_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0087

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 159
    .local v23, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    invoke-virtual/range {v12 .. v24}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 162
    const v2, 0x7f0e0072

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 163
    .local v39, "reply":Landroid/widget/TextView;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8

    .line 164
    const-string v40, ""

    .line 165
    .local v40, "reply_name":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v46

    .line 167
    .restart local v46    # "user":Lcom/perm/kate/api/User;
    if-eqz v46, :cond_0

    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 174
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const v5, 0x7f0703b8

    invoke-virtual {v3, v5}, Lcom/perm/kate/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    .end local v40    # "reply_name":Ljava/lang/String;
    :goto_4
    const v2, 0x7f0e0077

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 182
    .local v14, "photoImageView":Landroid/widget/ImageView;
    const/16 v38, 0x0

    .line 183
    .local v38, "photo":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "photo":Lcom/perm/kate/api/Photo;
    check-cast v38, Lcom/perm/kate/api/Photo;

    .line 185
    .restart local v38    # "photo":Lcom/perm/kate/api/Photo;
    :cond_1
    if-eqz v38, :cond_a

    .line 186
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v2, :cond_9

    const/16 v16, 0x104

    .line 187
    .local v16, "resample_size":I
    :goto_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v12

    move-object/from16 v0, v38

    iget-object v13, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const/4 v15, 0x1

    const v17, 0x7f020144

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 188
    move-object/from16 v0, v38

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v8    # "like":Z
    .end local v9    # "likes_view":Landroid/view/View;
    .end local v10    # "tv_posts_news_like_count":Landroid/widget/TextView;
    .end local v11    # "likes_heart":Landroid/widget/ImageView;
    .end local v14    # "photoImageView":Landroid/widget/ImageView;
    .end local v16    # "resample_size":I
    .end local v20    # "photo_container":Landroid/view/ViewGroup;
    .end local v21    # "links_container":Landroid/widget/LinearLayout;
    .end local v22    # "audio_container":Landroid/view/ViewGroup;
    .end local v23    # "gift_container":Landroid/view/ViewGroup;
    .end local v25    # "ago_text":Ljava/lang/String;
    .end local v26    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "comment":Lcom/perm/kate/api/Comment;
    .end local v28    # "comment_id":Ljava/lang/Long;
    .end local v29    # "ctag":Lcom/perm/kate/CommentTag;
    .end local v30    # "full_name":Ljava/lang/String;
    .end local v33    # "like_count":I
    .end local v34    # "long_date":J
    .end local v36    # "message":Ljava/lang/String;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "photo":Lcom/perm/kate/api/Photo;
    .end local v39    # "reply":Landroid/widget/TextView;
    .end local v42    # "tv_comment_message":Landroid/widget/TextView;
    .end local v43    # "tv_comment_name":Landroid/widget/TextView;
    .end local v44    # "tv_message_ago":Landroid/widget/TextView;
    .end local v45    # "uid":Ljava/lang/Long;
    :goto_6
    return-object v47

    .line 82
    .end local v47    # "vi":Landroid/view/View;
    :cond_2
    move-object/from16 v47, p2

    .restart local v47    # "vi":Landroid/view/View;
    goto/16 :goto_0

    .line 99
    .restart local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .restart local v27    # "comment":Lcom/perm/kate/api/Comment;
    .restart local v30    # "full_name":Ljava/lang/String;
    .restart local v37    # "name":Ljava/lang/String;
    .restart local v42    # "tv_comment_message":Landroid/widget/TextView;
    .restart local v43    # "tv_comment_name":Landroid/widget/TextView;
    .restart local v45    # "uid":Ljava/lang/Long;
    .restart local v46    # "user":Lcom/perm/kate/api/User;
    :cond_3
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const-string v30, ""

    goto/16 :goto_1

    .line 103
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v31

    .line 104
    .local v31, "g":Lcom/perm/kate/api/Group;
    if-eqz v31, :cond_5

    .line 105
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 106
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 107
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 106
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 195
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v27    # "comment":Lcom/perm/kate/api/Comment;
    .end local v30    # "full_name":Ljava/lang/String;
    .end local v31    # "g":Lcom/perm/kate/api/Group;
    .end local v37    # "name":Ljava/lang/String;
    .end local v42    # "tv_comment_message":Landroid/widget/TextView;
    .end local v43    # "tv_comment_name":Landroid/widget/TextView;
    .end local v45    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v41

    .line 196
    .local v41, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    invoke-static/range {v41 .. v41}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 109
    .end local v41    # "th":Ljava/lang/Throwable;
    .restart local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .restart local v27    # "comment":Lcom/perm/kate/api/Comment;
    .restart local v30    # "full_name":Ljava/lang/String;
    .restart local v31    # "g":Lcom/perm/kate/api/Group;
    .restart local v37    # "name":Ljava/lang/String;
    .restart local v42    # "tv_comment_message":Landroid/widget/TextView;
    .restart local v43    # "tv_comment_name":Landroid/widget/TextView;
    .restart local v45    # "uid":Ljava/lang/Long;
    :cond_5
    :try_start_1
    const-string v30, ""

    .line 110
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 127
    .end local v31    # "g":Lcom/perm/kate/api/Group;
    .restart local v26    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v36    # "message":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v42

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 170
    .restart local v8    # "like":Z
    .restart local v9    # "likes_view":Landroid/view/View;
    .restart local v10    # "tv_posts_news_like_count":Landroid/widget/TextView;
    .restart local v11    # "likes_heart":Landroid/widget/ImageView;
    .restart local v20    # "photo_container":Landroid/view/ViewGroup;
    .restart local v21    # "links_container":Landroid/widget/LinearLayout;
    .restart local v22    # "audio_container":Landroid/view/ViewGroup;
    .restart local v23    # "gift_container":Landroid/view/ViewGroup;
    .restart local v25    # "ago_text":Ljava/lang/String;
    .restart local v28    # "comment_id":Ljava/lang/Long;
    .restart local v29    # "ctag":Lcom/perm/kate/CommentTag;
    .restart local v33    # "like_count":I
    .restart local v34    # "long_date":J
    .restart local v39    # "reply":Landroid/widget/TextView;
    .restart local v40    # "reply_name":Ljava/lang/String;
    .restart local v44    # "tv_message_ago":Landroid/widget/TextView;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v31

    .line 171
    .restart local v31    # "g":Lcom/perm/kate/api/Group;
    if-eqz v31, :cond_0

    .line 172
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    goto/16 :goto_3

    .line 177
    .end local v31    # "g":Lcom/perm/kate/api/Group;
    .end local v40    # "reply_name":Ljava/lang/String;
    :cond_8
    const/16 v2, 0x8

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 186
    .restart local v14    # "photoImageView":Landroid/widget/ImageView;
    .restart local v38    # "photo":Lcom/perm/kate/api/Photo;
    :cond_9
    const/16 v16, 0x82

    goto/16 :goto_5

    .line 191
    :cond_a
    const v2, 0x7f020144

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method
