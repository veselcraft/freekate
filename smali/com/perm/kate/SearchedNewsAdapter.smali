.class public Lcom/perm/kate/SearchedNewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedNewsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field private big_photos:Z

.field private collapse_news:Z

.field private group_cache:Lcom/perm/utils/GroupCache;

.field items:Ljava/util/ArrayList;

.field open_news:Ljava/util/HashSet;

.field private user_cache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 9

    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    .line 33
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Lcom/perm/utils/GroupCache;

    .line 34
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->big_photos:Z

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->open_news:Ljava/util/HashSet;

    .line 208
    new-instance v0, Lcom/perm/kate/SearchedNewsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedNewsAdapter$1;-><init>(Lcom/perm/kate/SearchedNewsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 40
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    .line 41
    invoke-direct {p0, p2}, Lcom/perm/kate/SearchedNewsAdapter;->addDataInternal(Lcom/perm/kate/api/Newsfeed;)V

    .line 43
    new-instance p2, Lcom/perm/kate/AttachmentsHelper;

    move-object v2, p1

    check-cast v2, Lcom/perm/kate/BaseActivity;

    iget-boolean v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->big_photos:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x14

    const/4 v8, 0x3

    move-object v1, p2

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p2, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 44
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedNewsAdapter;)Lcom/perm/utils/UserCache;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchedNewsAdapter;)Lcom/perm/utils/GroupCache;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Lcom/perm/utils/GroupCache;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchedNewsAdapter;)Landroid/app/Activity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private addDataInternal(Lcom/perm/kate/api/Newsfeed;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 55
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 59
    iget-object v2, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    iget-object v2, v2, Lcom/perm/utils/UserCache;->user_cache:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 62
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 63
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Lcom/perm/utils/GroupCache;

    iget-object v1, v1, Lcom/perm/utils/GroupCache;->group_cache:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/perm/kate/api/Group;->gid:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private displayOnlineState(Landroid/view/View;J)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    invoke-virtual {v0, p2, p3}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object p2

    if-eqz p2, :cond_1

    const p3, 0x7f09019c

    .line 203
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 204
    iget-object p2, p2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addData(Lcom/perm/kate/api/Newsfeed;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchedNewsAdapter;->addDataInternal(Lcom/perm/kate/api/Newsfeed;)V

    .line 49
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    .line 281
    iget-object v1, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v1}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 282
    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    return-void
.end method

.method public displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 231
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v6

    const/4 v7, 0x1

    move-object v2, p6

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Lcom/perm/utils/GroupCache;

    invoke-virtual {p2, p3, p4}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 238
    iget-object p6, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_0

    .line 241
    :cond_1
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    const-string p6, ""

    invoke-virtual {p2, p6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result p6

    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    :goto_0
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-virtual {p2, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const p2, 0x7f090186

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x0

    .line 252
    iput-object v0, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 253
    iput-object v0, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_3

    .line 254
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const-string v2, ""

    .line 256
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Lcom/perm/utils/GroupCache;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 259
    iget-object v2, p2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 260
    :cond_0
    iput-object p2, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    goto :goto_0

    .line 262
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    :cond_2
    iput-object p2, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    .line 267
    :goto_0
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz p4, :cond_4

    .line 272
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_4

    .line 273
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 276
    :cond_4
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/NewsItem;

    iget-wide v0, p1, Lcom/perm/kate/api/NewsItem;->post_id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v8, p0

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 93
    :try_start_0
    iget-object v2, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0c00fb

    move-object/from16 v4, p3

    .line 94
    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    new-instance v3, Lcom/perm/kate/ViewHolder;

    invoke-direct {v3}, Lcom/perm/kate/ViewHolder;-><init>()V

    .line 96
    new-instance v4, Lcom/perm/kate/NewsItemTag;

    invoke-direct {v4}, Lcom/perm/kate/NewsItemTag;-><init>()V

    const v5, 0x7f0903a2

    .line 97
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    const v5, 0x7f09039e

    .line 98
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    const v5, 0x7f0903a1

    .line 99
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v5, 0x7f090186

    .line 100
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const v5, 0x7f0903a0

    .line 102
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    const v5, 0x7f09039f

    .line 103
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    const v5, 0x7f0900d6

    .line 104
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v5, 0x7f090410

    .line 105
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    const v5, 0x7f090412

    .line 106
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->views_text:Landroid/widget/TextView;

    const v5, 0x7f09026e

    .line 107
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    const v5, 0x7f0901bd

    .line 108
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const v5, 0x7f0901b9

    .line 109
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v5, 0x7f0901b8

    .line 110
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const v5, 0x7f09025d

    .line 111
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    const v5, 0x7f09025e

    .line 112
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    const v5, 0x7f0900de

    .line 113
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    const v5, 0x7f09029f

    .line 114
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v5, 0x7f09029e

    .line 115
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->repost_icon:Landroid/widget/ImageView;

    const v5, 0x7f0903d6

    .line 116
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v3, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    .line 117
    iput-object v3, v4, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 118
    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v9, v2

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto/16 :goto_7

    .line 121
    :cond_0
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/perm/kate/NewsItemTag;

    .line 122
    iget-object v3, v4, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v9, p2

    :goto_0
    move-object v15, v3

    move-object v12, v4

    .line 126
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/SearchedNewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/perm/kate/api/NewsItem;

    if-nez v14, :cond_1

    return-object v9

    .line 131
    :cond_1
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->from_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    iget-object v4, v8, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Lcom/perm/utils/UserCache;

    invoke-virtual {v4, v2, v3}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    move-object v3, v1

    move-object v7, v2

    goto :goto_2

    :cond_3
    move-object v3, v1

    move-object v7, v3

    .line 137
    :goto_2
    iget-wide v4, v14, Lcom/perm/kate/api/NewsItem;->from_id:J

    iget-object v6, v8, Lcom/perm/kate/SearchedNewsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/SearchedNewsAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 139
    iget-wide v1, v14, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v14, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    invoke-virtual {v8, v15, v1, v12, v2}, Lcom/perm/kate/SearchedNewsAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    const v1, 0x7f0902cd

    .line 141
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v13, 0x8

    .line 143
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v1, v14, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    const/4 v10, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 145
    new-instance v11, Landroid/text/SpannableStringBuilder;

    iget-object v1, v14, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    invoke-static {v11, v1, v0}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 147
    iget-boolean v1, v8, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v7, "reply"

    if-eqz v1, :cond_4

    :try_start_4
    iget-object v1, v14, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    iget-object v3, v8, Lcom/perm/kate/SearchedNewsAdapter;->open_news:Ljava/util/HashSet;

    iget-wide v4, v14, Lcom/perm/kate/api/NewsItem;->date:J

    move-object v1, v11

    move-object/from16 v6, p0

    move-object v13, v7

    move-object v7, v12

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/text/SpannableStringBuilder;Landroid/view/View;Ljava/util/HashSet;JLandroid/widget/BaseAdapter;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_3

    :cond_4
    move-object v13, v7

    .line 149
    :goto_3
    iget-object v1, v14, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    const v3, 0x7f0f04dd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {v11, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 152
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x21

    invoke-virtual {v11, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 154
    :cond_5
    iget-object v1, v15, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, v15, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    goto :goto_4

    .line 157
    :cond_6
    iget-object v0, v15, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :goto_4
    iget-object v0, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->date:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v2, v15, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget v0, v14, Lcom/perm/kate/api/NewsItem;->comment_count:I

    int-to-long v2, v0

    invoke-static {v15, v2, v3, v10}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 164
    iget-boolean v0, v14, Lcom/perm/kate/api/NewsItem;->user_like:Z

    iput-boolean v0, v12, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 165
    iget v2, v14, Lcom/perm/kate/api/NewsItem;->like_count:I

    int-to-long v2, v2

    iget-object v4, v15, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v5, v15, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    iget-object v6, v15, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const/16 v22, 0x1

    move-wide/from16 v16, v2

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 167
    iget v0, v14, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    int-to-long v2, v0

    iget-boolean v0, v14, Lcom/perm/kate/api/NewsItem;->user_reposted:Z

    invoke-static {v15, v2, v3, v10, v0}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZZ)V

    .line 169
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 170
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 171
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->source_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 172
    iget-object v0, v14, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    iput-object v0, v12, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 173
    iget-object v2, v14, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    iput-object v2, v12, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    const-string v2, "post"

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "copy"

    iget-object v2, v12, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 178
    :cond_7
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->comment_id:J

    iput-wide v2, v12, Lcom/perm/kate/NewsItemTag;->_id:J

    goto :goto_6

    .line 176
    :cond_8
    :goto_5
    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->post_id:J

    iput-wide v2, v12, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 180
    :goto_6
    iget-object v0, v14, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    const v2, 0x7f09004a

    .line 181
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/view/ViewGroup;

    const v2, 0x7f090158

    .line 182
    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/view/ViewGroup;

    .line 183
    iget-object v10, v8, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v11, 0x0

    iget-wide v2, v14, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v14, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    iget-object v5, v15, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    iget-object v6, v15, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const/16 v22, 0x0

    move-object v13, v15

    move-object v7, v14

    move-object v14, v2

    move-object v2, v15

    move-object v15, v3

    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    invoke-virtual/range {v10 .. v22}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v0, 0x7f0902db

    .line 186
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 187
    iget-object v3, v7, Lcom/perm/kate/api/NewsItem;->copyright_name:Ljava/lang/String;

    iget-object v4, v8, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    invoke-static {v3, v0, v4}, Lcom/perm/kate/NewsCursorAdapter;->displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 189
    iget-wide v3, v7, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-direct {v8, v9, v3, v4}, Lcom/perm/kate/SearchedNewsAdapter;->displayOnlineState(Landroid/view/View;J)V

    const v0, 0x7f0902d1

    .line 191
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, v7, Lcom/perm/kate/api/NewsItem;->views:Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v9, p2

    .line 194
    :goto_7
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    return-object v9
.end method
