.class public Lcom/perm/kate/SearchWallAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchWallAdapter.java"


# instance fields
.field private activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field big_photos:Z

.field card_style_news:Z

.field collapse_news:Z

.field groupCache:Lcom/perm/utils/GroupCache;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;

.field old_style_news:Z

.field open_news:Ljava/util/HashSet;

.field userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;I)V
    .locals 11

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 33
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 34
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    .line 36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/SearchWallAdapter;->open_news:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    .line 244
    new-instance v2, Lcom/perm/kate/SearchWallAdapter$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/SearchWallAdapter$1;-><init>(Lcom/perm/kate/SearchWallAdapter;)V

    iput-object v2, p0, Lcom/perm/kate/SearchWallAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 43
    iput-object p1, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 46
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v2, :cond_0

    .line 47
    sget v2, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    move v6, v2

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 49
    :goto_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 51
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move v8, p1

    .line 54
    :goto_2
    new-instance p1, Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v5, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v7

    const/16 v9, 0x14

    move-object v3, p1

    move v10, p2

    invoke-direct/range {v3 .. v10}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p1, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 55
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "key_collapse_news"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    .line 58
    iget-object p1, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    .line 60
    iget-object p1, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchWallAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    const/4 v0, 0x0

    .line 272
    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    return-void
.end method

.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 67
    iget-object v1, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public fillView(Landroid/view/View;Landroid/content/Context;Lcom/perm/kate/api/WallMessage;)V
    .locals 31

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p3

    .line 74
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/perm/kate/NewsItemTag;

    if-nez v15, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v14, v15, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    if-nez v14, :cond_1

    return-void

    .line 80
    :cond_1
    invoke-static {v14}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 82
    invoke-static/range {p3 .. p3}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 84
    iget-wide v1, v9, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 85
    iget-wide v1, v9, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 86
    iget-object v7, v9, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 87
    iget-wide v1, v9, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 88
    iget-wide v10, v9, Lcom/perm/kate/api/WallMessage;->date:J

    .line 91
    iput-object v13, v15, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 92
    iput-object v12, v15, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 93
    iget-boolean v2, v9, Lcom/perm/kate/api/WallMessage;->user_like:Z

    iput-boolean v2, v15, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 94
    iput-object v7, v15, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 95
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    .line 98
    iget-wide v2, v9, Lcom/perm/kate/api/WallMessage;->from_id:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    const-string v6, ""

    cmp-long v16, v2, v4

    if-lez v16, :cond_3

    .line 99
    :try_start_1
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v2, v6

    move-object v3, v2

    :goto_0
    move-object/from16 v16, v2

    move-object v2, v3

    goto :goto_1

    .line 105
    :cond_3
    iget-object v4, v8, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v4, v2, v3}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 107
    iget-object v3, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 108
    iget-object v2, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v2, v6

    move-object/from16 v16, v2

    .line 112
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, v8, Lcom/perm/kate/SearchWallAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object v1, v14

    move-object/from16 v17, v12

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    const v1, 0x7f0902cd

    .line 114
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    .line 116
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903a1

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    if-eqz v7, :cond_7

    .line 119
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 120
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v7, v8, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v12, v7, v1}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 123
    iget-boolean v7, v8, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    if-eqz v7, :cond_5

    .line 124
    iget-object v7, v8, Lcom/perm/kate/SearchWallAdapter;->open_news:Ljava/util/HashSet;

    const/4 v0, 0x0

    move-object v1, v12

    const/4 v0, 0x4

    move-object v3, v7

    move-object v7, v4

    move-wide v4, v10

    move-object/from16 v6, p0

    move-object/from16 v23, v7

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/text/SpannableStringBuilder;Landroid/view/View;Ljava/util/HashSet;JLandroid/widget/BaseAdapter;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_2

    :cond_5
    move-object/from16 v23, v4

    const/4 v0, 0x4

    .line 126
    :goto_2
    iget-object v1, v8, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v12}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 127
    iget v2, v9, Lcom/perm/kate/api/WallMessage;->post_type:I

    if-ne v2, v0, :cond_6

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const v4, 0x7f0f04dd

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 129
    invoke-virtual {v1, v3, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x21

    invoke-virtual {v1, v4, v3, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    :goto_3
    move-object/from16 v2, v23

    .line 132
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    goto :goto_4

    :cond_7
    move-object v2, v4

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 134
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_4
    iget-wide v2, v9, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 137
    iget-object v3, v9, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 138
    iget-object v12, v8, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    iget-object v4, v8, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v16, 0x0

    const/4 v6, 0x0

    move-wide v0, v10

    move-object v10, v14

    move-object v11, v2

    move-object/from16 v19, v17

    move-object/from16 v20, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v15

    move-object v7, v15

    move-object v15, v3

    move-object/from16 v17, v6

    invoke-static/range {v10 .. v17}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 139
    iput-object v2, v7, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 140
    iput-object v3, v7, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 142
    iget-object v2, v8, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 143
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget v2, v9, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 148
    iget-wide v10, v9, Lcom/perm/kate/api/WallMessage;->comment_count:J

    const/4 v6, 0x0

    .line 149
    invoke-static {v4, v10, v11, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 151
    iget v6, v9, Lcom/perm/kate/api/WallMessage;->like_count:I

    int-to-long v10, v6

    .line 152
    iget-boolean v12, v7, Lcom/perm/kate/NewsItemTag;->i_like:Z

    iget-object v13, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v14, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    iget-object v15, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 154
    iget v6, v9, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    int-to-long v10, v6

    .line 155
    iget-boolean v6, v9, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    const/4 v12, 0x0

    invoke-static {v4, v10, v11, v12, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZZ)V

    goto :goto_5

    :cond_8
    const/4 v12, 0x0

    .line 163
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    .line 164
    :goto_5
    iget-wide v10, v9, Lcom/perm/kate/api/WallMessage;->id:J

    .line 165
    iput-wide v10, v7, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 166
    iget-object v6, v9, Lcom/perm/kate/api/WallMessage;->comment_id:Ljava/lang/Long;

    iput-object v6, v7, Lcom/perm/kate/NewsItemTag;->comment_id:Ljava/lang/Long;

    const v6, 0x7f09004a

    move-object/from16 v15, p1

    const/4 v14, 0x0

    .line 167
    invoke-virtual {v15, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    const v10, 0x7f090158

    .line 168
    invoke-virtual {v15, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v21, v10

    check-cast v21, Landroid/view/ViewGroup;

    .line 169
    iget-object v10, v8, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v11, 0x0

    iget-object v13, v9, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    iget-object v12, v8, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    move-object/from16 v17, v12

    move-object v12, v7

    move-object/from16 v16, v13

    move-object v13, v4

    move-object/from16 v14, v20

    move-object/from16 v15, v19

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v6

    invoke-virtual/range {v10 .. v22}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 173
    iget-wide v5, v9, Lcom/perm/kate/api/WallMessage;->signer_id:J

    const v3, 0x7f0902d1

    move-object/from16 v10, p1

    .line 174
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 175
    iget-object v3, v8, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-wide/from16 v24, v5

    move-object/from16 v27, v3

    invoke-static/range {v24 .. v30}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0902db

    .line 177
    invoke-virtual {v10, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 178
    iget-object v5, v9, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-static {v5, v3, v6}, Lcom/perm/kate/NewsCursorAdapter;->displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_e

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 183
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/4 v6, 0x0

    if-eqz v3, :cond_9

    .line 184
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v5, 0x7f0f0273

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 188
    iput-boolean v6, v7, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    const/4 v0, 0x3

    if-ne v2, v0, :cond_c

    .line 190
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 191
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v1, 0x7f0f02d3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 194
    :cond_b
    iput-object v5, v7, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, v7, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_6

    .line 197
    :cond_c
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const/16 v1, 0x8

    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    :cond_d
    iput-object v5, v7, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 200
    iput-boolean v6, v7, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    .line 203
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    const/16 v1, 0x8

    .line 204
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    :cond_f
    iput-object v5, v7, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 206
    iput-boolean v6, v7, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    :goto_6
    const/4 v0, 0x2

    if-ge v2, v0, :cond_10

    .line 210
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    const v3, 0x7f09040c

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 211
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f09040d

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 212
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v1, 0x7f09040e

    iget-boolean v6, v7, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 214
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 215
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 217
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v1, v7, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 219
    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v1, 0x7f090407

    iget-object v3, v7, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_10
    const/4 v0, 0x4

    if-ne v2, v0, :cond_11

    const-string v0, "reply"

    .line 223
    iput-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    goto :goto_7

    :cond_11
    const-string v0, "post"

    .line 225
    iput-object v0, v7, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 226
    :goto_7
    iget-object v0, v9, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-static {v0, v4}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    .line 228
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, p1, Lcom/perm/kate/api/WallMessage;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 234
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    iget-boolean v1, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0c00fc

    goto :goto_0

    :cond_0
    const v1, 0x7f0c00fb

    :goto_0
    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object p1

    .line 235
    iget-boolean p2, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0902ad

    .line 236
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 238
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p0, v0, p3}, Lcom/perm/kate/SearchWallAdapter;->getNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 262
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    .line 263
    iget-object p3, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p0, p2, p3, p1}, Lcom/perm/kate/SearchWallAdapter;->fillView(Landroid/view/View;Landroid/content/Context;Lcom/perm/kate/api/WallMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 265
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 253
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
