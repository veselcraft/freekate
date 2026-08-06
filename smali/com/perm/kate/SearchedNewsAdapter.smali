.class public Lcom/perm/kate/SearchedNewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchedNewsAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field private big_photos:Z

.field private collapse_news:Z

.field private gray_color:I

.field private group_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/api/Group;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/NewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private user_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/perm/kate/api/Newsfeed;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newsfeed"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Ljava/util/HashMap;

    .line 31
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->big_photos:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z

    .line 196
    new-instance v0, Lcom/perm/kate/SearchedNewsAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchedNewsAdapter$1;-><init>(Lcom/perm/kate/SearchedNewsAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 37
    iput-object p1, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    .line 38
    invoke-direct {p0, p2}, Lcom/perm/kate/SearchedNewsAdapter;->addDataInternal(Lcom/perm/kate/api/Newsfeed;)V

    .line 39
    const/4 v3, 0x0

    .line 40
    .local v3, "left_pane_offset":I
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    move-object v1, p1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-boolean v2, p0, Lcom/perm/kate/SearchedNewsAdapter;->big_photos:Z

    const/16 v6, 0x14

    const/4 v7, 0x3

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 41
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getReadMoreColor(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->gray_color:I

    .line 42
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchedNewsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchedNewsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchedNewsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchedNewsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchedNewsAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchedNewsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private addDataInternal(Lcom/perm/kate/api/Newsfeed;)V
    .locals 6
    .param p1, "newsfeed"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 51
    if-nez p1, :cond_1

    .line 63
    :cond_0
    return-void

    .line 53
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 55
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 56
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 57
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_3
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->groups:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 61
    .local v0, "g":Lcom/perm/kate/api/Group;
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/perm/kate/api/Group;->gid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private displayOnlineState(Landroid/view/View;J)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "from_id"    # J

    .prologue
    .line 189
    iget-object v2, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 190
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 191
    const v2, 0x7f0e022b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    .local v0, "onlineView":Landroid/view/View;
    iget-object v2, v1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .end local v0    # "onlineView":Landroid/view/View;
    :cond_0
    return-void

    .line 192
    .restart local v0    # "onlineView":Landroid/view/View;
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public addData(Lcom/perm/kate/api/Newsfeed;)V
    .locals 0
    .param p1, "newsfeed"    # Lcom/perm/kate/api/Newsfeed;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchedNewsAdapter;->addDataInternal(Lcom/perm/kate/api/Newsfeed;)V

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/SearchedNewsAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iput-object v1, p0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    .line 269
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 270
    iput-object v1, p0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 271
    return-void
.end method

.method public displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 9
    .param p1, "h"    # Lcom/perm/kate/ViewHolder;
    .param p2, "user_name"    # Ljava/lang/String;
    .param p3, "source_id_long"    # J
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "url_photo"    # Ljava/lang/String;

    .prologue
    .line 217
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 219
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    move-object v1, p6

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 234
    :goto_0
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const v1, 0x7f0e026f

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 236
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Ljava/util/HashMap;

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Group;

    .line 225
    .local v7, "g":Lcom/perm/kate/api/Group;
    if-eqz v7, :cond_1

    .line 226
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v7, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v2, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V
    .locals 10
    .param p1, "h"    # Lcom/perm/kate/ViewHolder;
    .param p2, "copy_owner_id"    # Ljava/lang/Long;
    .param p3, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p4, "copy_text"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 240
    iput-object v3, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 241
    iput-object v3, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    .line 242
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 243
    const-string v1, ""

    .line 244
    .local v1, "original_name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->group_cache:Ljava/util/HashMap;

    const-wide/16 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Group;

    .line 246
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 247
    iget-object v1, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 248
    :cond_0
    iput-object v0, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 255
    .end local v0    # "g":Lcom/perm/kate/api/Group;
    :goto_0
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .end local v1    # "original_name":Ljava/lang/String;
    :goto_1
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 261
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_2
    return-void

    .line 250
    .restart local v1    # "original_name":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/User;

    .line 251
    .local v2, "u":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_2

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    :cond_2
    iput-object v2, p3, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    goto :goto_0

    .line 258
    .end local v1    # "original_name":Ljava/lang/String;
    .end local v2    # "u":Lcom/perm/kate/api/User;
    :cond_3
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_4
    iget-object v3, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-wide/16 v0, 0x0

    .line 81
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchedNewsAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/NewsItem;

    iget-wide v0, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    const/16 v30, 0x0

    .line 90
    .local v30, "v":Landroid/view/View;
    if-nez p2, :cond_0

    .line 91
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/LayoutInflater;

    .line 92
    .local v24, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0300e0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 93
    new-instance v4, Lcom/perm/kate/ViewHolder;

    invoke-direct {v4}, Lcom/perm/kate/ViewHolder;-><init>()V

    .line 94
    .local v4, "h":Lcom/perm/kate/ViewHolder;
    new-instance v28, Lcom/perm/kate/NewsItemTag;

    invoke-direct/range {v28 .. v28}, Lcom/perm/kate/NewsItemTag;-><init>()V

    .line 95
    .local v28, "tag":Lcom/perm/kate/NewsItemTag;
    const v3, 0x7f0e0270

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    .line 96
    const v3, 0x7f0e026e

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    .line 97
    const v3, 0x7f0e026c

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0e026f

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    .line 99
    const v3, 0x7f0e0085

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    .line 100
    const v3, 0x7f0e0075

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    .line 101
    const v3, 0x7f0e02b9

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    .line 102
    const v3, 0x7f0e01ef

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    .line 103
    const v3, 0x7f0e0082

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    .line 104
    const v3, 0x7f0e0084

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    .line 105
    const v3, 0x7f0e0073

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    .line 106
    const v3, 0x7f0e0074

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    .line 107
    const v3, 0x7f0e02b5

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    .line 108
    const v3, 0x7f0e02b4

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    .line 109
    const v3, 0x7f0e02b3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    .line 110
    const v3, 0x7f0e02ba

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    .line 111
    const v3, 0x7f0e02bb

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    .line 112
    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 113
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    .end local v24    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/SearchedNewsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/perm/kate/api/NewsItem;

    .line 122
    .local v25, "item":Lcom/perm/kate/api/NewsItem;
    if-nez v25, :cond_1

    move-object/from16 v31, v30

    .line 185
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v25    # "item":Lcom/perm/kate/api/NewsItem;
    .end local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    .end local v30    # "v":Landroid/view/View;
    .local v31, "v":Landroid/view/View;
    :goto_1
    return-object v31

    .line 115
    .end local v31    # "v":Landroid/view/View;
    .restart local v30    # "v":Landroid/view/View;
    :cond_0
    move-object/from16 v30, p2

    .line 116
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/perm/kate/NewsItemTag;

    .line 117
    .restart local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    goto :goto_0

    .line 124
    .restart local v25    # "item":Lcom/perm/kate/api/NewsItem;
    :cond_1
    const/4 v5, 0x0

    .line 125
    .local v5, "user_name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 126
    .local v9, "user_photo":Ljava/lang/String;
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->user_cache:Ljava/util/HashMap;

    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/User;

    move-object/from16 v23, v3

    .line 127
    .local v23, "from_user":Lcom/perm/kate/api/User;
    :goto_2
    if-eqz v23, :cond_2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 132
    :cond_2
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchedNewsAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/SearchedNewsAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->copy_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/perm/kate/api/NewsItem;->copy_text:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v3, v1, v6}, Lcom/perm/kate/SearchedNewsAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 137
    new-instance v26, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 138
    .local v26, "preview":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v3, v6}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 139
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->collapse_news:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v6, "reply"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/perm/kate/SearchedNewsAdapter;->gray_color:I

    move-object/from16 v0, v26

    invoke-static {v3, v0, v6}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 141
    :cond_3
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    const-string v6, "reply"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    const v7, 0x7f07044b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 143
    .local v27, "reply_title":Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 144
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 146
    .end local v27    # "reply_title":Ljava/lang/String;
    :cond_4
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .end local v26    # "preview":Landroid/text/SpannableStringBuilder;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->date:J

    invoke-static {v3, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "ago_text":Ljava/lang/String;
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object/from16 v0, v25

    iget v3, v0, Lcom/perm/kate/api/NewsItem;->comment_count:I

    int-to-long v6, v3

    const/4 v3, 0x1

    invoke-static {v4, v6, v7, v3}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 156
    move-object/from16 v0, v25

    iget-boolean v3, v0, Lcom/perm/kate/api/NewsItem;->user_like:Z

    move-object/from16 v0, v28

    iput-boolean v3, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 157
    move-object/from16 v0, v25

    iget v3, v0, Lcom/perm/kate/api/NewsItem;->like_count:I

    int-to-long v10, v3

    move-object/from16 v0, v28

    iget-boolean v12, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    iget-object v13, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v14, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    iget-object v15, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const/16 v16, 0x1

    invoke-static/range {v10 .. v16}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 159
    move-object/from16 v0, v25

    iget v3, v0, Lcom/perm/kate/api/NewsItem;->reposts_count:I

    int-to-long v6, v3

    const/4 v3, 0x1

    invoke-static {v4, v6, v7, v3}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 161
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 162
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 163
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->source_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 164
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->type:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 165
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/perm/kate/api/NewsItem;->text:Ljava/lang/String;

    move-object/from16 v0, v28

    iput-object v3, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 166
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->date:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/perm/kate/NewsItemTag;->date:J

    .line 167
    const-string v3, "post"

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "copy"

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 168
    :cond_5
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 172
    :goto_4
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/perm/kate/api/NewsItem;->attachments:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 173
    .local v16, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    const v3, 0x7f0e0086

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 174
    .local v20, "audio_container":Landroid/view/ViewGroup;
    const v3, 0x7f0e0087

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup;

    .line 175
    .local v21, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchedNewsAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v11, 0x0

    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->post_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchedNewsAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v12, v28

    move-object v13, v4

    invoke-virtual/range {v10 .. v22}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 178
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->from_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v6, v7}, Lcom/perm/kate/SearchedNewsAdapter;->displayOnlineState(Landroid/view/View;J)V

    .line 180
    const v3, 0x7f0e02b6

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .end local v2    # "ago_text":Ljava/lang/String;
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "user_name":Ljava/lang/String;
    .end local v9    # "user_photo":Ljava/lang/String;
    .end local v16    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v20    # "audio_container":Landroid/view/ViewGroup;
    .end local v21    # "gift_container":Landroid/view/ViewGroup;
    .end local v23    # "from_user":Lcom/perm/kate/api/User;
    .end local v25    # "item":Lcom/perm/kate/api/NewsItem;
    .end local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    :goto_5
    move-object/from16 v31, v30

    .line 185
    .end local v30    # "v":Landroid/view/View;
    .restart local v31    # "v":Landroid/view/View;
    goto/16 :goto_1

    .line 126
    .end local v31    # "v":Landroid/view/View;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v5    # "user_name":Ljava/lang/String;
    .restart local v9    # "user_photo":Ljava/lang/String;
    .restart local v25    # "item":Lcom/perm/kate/api/NewsItem;
    .restart local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    .restart local v30    # "v":Landroid/view/View;
    :cond_6
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 149
    .restart local v23    # "from_user":Lcom/perm/kate/api/User;
    :cond_7
    iget-object v3, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 181
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "user_name":Ljava/lang/String;
    .end local v9    # "user_photo":Ljava/lang/String;
    .end local v23    # "from_user":Lcom/perm/kate/api/User;
    .end local v25    # "item":Lcom/perm/kate/api/NewsItem;
    .end local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    :catch_0
    move-exception v29

    .line 182
    .local v29, "th":Ljava/lang/Throwable;
    invoke-static/range {v29 .. v29}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 183
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 170
    .end local v29    # "th":Ljava/lang/Throwable;
    .restart local v2    # "ago_text":Ljava/lang/String;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v5    # "user_name":Ljava/lang/String;
    .restart local v9    # "user_photo":Ljava/lang/String;
    .restart local v23    # "from_user":Lcom/perm/kate/api/User;
    .restart local v25    # "item":Lcom/perm/kate/api/NewsItem;
    .restart local v28    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_8
    :try_start_1
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/perm/kate/api/NewsItem;->comment_id:J

    move-object/from16 v0, v28

    iput-wide v6, v0, Lcom/perm/kate/NewsItemTag;->_id:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
