.class public Lcom/perm/kate/AlbumCommentsAdapter;
.super Landroid/widget/BaseAdapter;
.source "AlbumCommentsAdapter.java"


# instance fields
.field private attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field private groupCache:Lcom/perm/utils/GroupCache;

.field private hint:Ljava/lang/String;

.field private mActivity:Lcom/perm/kate/BaseActivity;

.field private mItems:Ljava/util/ArrayList;

.field private mPhotos:Ljava/util/HashMap;

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Ljava/util/HashMap;)V
    .locals 8

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 32
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 203
    new-instance v0, Lcom/perm/kate/AlbumCommentsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsAdapter$1;-><init>(Lcom/perm/kate/AlbumCommentsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 214
    new-instance v0, Lcom/perm/kate/AlbumCommentsAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsAdapter$2;-><init>(Lcom/perm/kate/AlbumCommentsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    .line 39
    iput-object p2, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    .line 41
    sget-boolean p1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x9b

    const/16 v6, 0x9b

    goto :goto_0

    :cond_0
    const/16 p1, 0x5f

    const/16 v6, 0x5f

    .line 42
    :goto_0
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v2

    .line 43
    new-instance p1, Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x8

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p1, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f0236

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsAdapter;->hint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumCommentsAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    .line 223
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    return-void
.end method

.method public displayData(Ljava/util/ArrayList;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Comment;

    iget-wide v0, p1, Lcom/perm/kate/api/Comment;->cid:J

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 81
    iget-object v2, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c0022

    move-object/from16 v4, p3

    .line 82
    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    const v3, 0x7f09017e

    .line 86
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f09035d

    .line 87
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    const v4, 0x7f09035c

    .line 88
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/TextView;

    .line 91
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/AlbumCommentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/perm/kate/api/Comment;

    .line 92
    iget-wide v4, v13, Lcom/perm/kate/api/Comment;->from_id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, " "

    const-string v15, ""

    const-wide/16 v16, 0x0

    cmp-long v6, v4, v16

    if-lez v6, :cond_2

    .line 94
    :try_start_1
    iget-object v6, v1, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v6, v4, v5}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v5, v10, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 97
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/16 v18, 0x1

    move-object v6, v3

    move-object v0, v10

    move/from16 v10, v18

    .line 96
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 98
    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 101
    :cond_1
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, v1, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v0, v4, v5}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v10, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v7, 0x1

    const/16 v8, 0x5a

    .line 109
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v0, 0x1

    move-object v6, v3

    move-object/from16 v18, v10

    move v10, v0

    .line 108
    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    move-object/from16 v0, v18

    goto :goto_2

    .line 112
    :cond_3
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v0, v15

    .line 116
    :goto_2
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/perm/kate/AlbumCommentsAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, v13, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 119
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    invoke-static {v4}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 123
    iget-object v5, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 124
    iget-object v5, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    invoke-static {v5, v4}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/16 v5, 0x8

    if-eqz v4, :cond_4

    .line 126
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    .line 128
    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    :goto_3
    iget-object v4, v1, Lcom/perm/kate/AlbumCommentsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f090186

    .line 131
    iget-wide v6, v13, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const v3, 0x7f0903a0

    .line 134
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/TextView;

    const v3, 0x7f0901b9

    .line 135
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v3, 0x7f0901b8

    .line 136
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/ImageView;

    .line 137
    iget v3, v13, Lcom/perm/kate/api/Comment;->like_count:I

    .line 138
    iget-boolean v4, v13, Lcom/perm/kate/api/Comment;->user_like:Z

    int-to-long v6, v3

    const/4 v12, 0x1

    move v8, v4

    .line 139
    invoke-static/range {v6 .. v12}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 141
    iget-wide v6, v13, Lcom/perm/kate/api/Comment;->cid:J

    .line 142
    new-instance v3, Lcom/perm/kate/CommentTag;

    invoke-direct {v3}, Lcom/perm/kate/CommentTag;-><init>()V

    .line 143
    iput-wide v6, v3, Lcom/perm/kate/CommentTag;->comment_id:J

    .line 144
    iput-object v0, v3, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    .line 145
    iput-boolean v4, v3, Lcom/perm/kate/CommentTag;->like:Z

    .line 146
    iput-object v13, v3, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    .line 147
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f09038c

    .line 150
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 151
    iget-wide v3, v13, Lcom/perm/kate/api/Comment;->date:J

    .line 152
    iget-object v6, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    invoke-static {v6, v3, v4}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f09026e

    .line 156
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/view/ViewGroup;

    const v0, 0x7f0901bd

    .line 157
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Landroid/widget/LinearLayout;

    const v0, 0x7f09004a

    .line 158
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v29, v0

    check-cast v29, Landroid/view/ViewGroup;

    const v0, 0x7f090158

    .line 159
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/view/ViewGroup;

    .line 160
    iget-object v0, v1, Lcom/perm/kate/AlbumCommentsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget-object v3, v13, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const/16 v31, 0x0

    move-object/from16 v19, v0

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v19 .. v31}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f09029c

    .line 163
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 164
    iget-wide v3, v13, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    cmp-long v6, v3, v16

    if-eqz v6, :cond_7

    cmp-long v5, v3, v16

    if-lez v5, :cond_5

    .line 167
    iget-object v5, v1, Lcom/perm/kate/AlbumCommentsAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v5, v3, v4}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_4

    .line 171
    :cond_5
    iget-object v5, v1, Lcom/perm/kate/AlbumCommentsAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v5, v3, v4}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 173
    iget-object v15, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 175
    :cond_6
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mActivity:Lcom/perm/kate/BaseActivity;

    const v5, 0x7f0f0438

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 178
    :cond_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    const v0, 0x7f09026d

    .line 182
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 184
    iget-object v3, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    iget-wide v4, v13, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    .line 185
    iget-object v3, v1, Lcom/perm/kate/AlbumCommentsAdapter;->mPhotos:Ljava/util/HashMap;

    iget-wide v5, v13, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    move-object v10, v3

    goto :goto_6

    :cond_8
    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_a

    .line 187
    sget-boolean v3, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v3, :cond_9

    const/16 v3, 0x104

    const/16 v7, 0x104

    goto :goto_7

    :cond_9
    const/16 v3, 0x82

    const/16 v7, 0x82

    .line 188
    :goto_7
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    iget-object v4, v10, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const/4 v6, 0x1

    const v8, 0x7f080209

    const/4 v9, 0x0

    move-object v5, v0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 189
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 190
    iget-object v3, v1, Lcom/perm/kate/AlbumCommentsAdapter;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    :cond_a
    const v3, 0x7f080209

    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_8
    return-object v2
.end method
