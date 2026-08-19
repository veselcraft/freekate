.class public Lcom/perm/kate/SearchWallActivity;
.super Lcom/perm/kate/BaseActivity;
.source "SearchWallActivity.java"


# instance fields
.field private account_id:J

.field private adapter:Lcom/perm/kate/SearchWallAdapter;

.field private btn_search:Landroid/widget/ImageButton;

.field private callback_load_more:Lcom/perm/kate/session/Callback;

.field private card_style_news:Z

.field private count:I

.field private domain:Ljava/lang/String;

.field private is_me:Z

.field private lv_search_list:Landroid/widget/ListView;

.field private offset:I

.field private old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private owner_id:J

.field private owners_only:Z

.field private pinned_post_id:J

.field private query:Ljava/lang/String;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private search_callback:Lcom/perm/kate/session/Callback;

.field private state:I

.field private tb_search:Landroid/widget/EditText;

.field private wall_messages:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    const/16 v1, 0x14

    .line 52
    iput v1, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    .line 53
    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    .line 55
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    .line 60
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    .line 61
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    .line 168
    new-instance v0, Lcom/perm/kate/SearchWallActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$2;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 196
    new-instance v0, Lcom/perm/kate/SearchWallActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchWallActivity$4;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->search_callback:Lcom/perm/kate/session/Callback;

    .line 244
    new-instance v0, Lcom/perm/kate/SearchWallActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$6;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 275
    new-instance v0, Lcom/perm/kate/SearchWallActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchWallActivity$8;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 304
    new-instance v0, Lcom/perm/kate/SearchWallActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$9;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 321
    new-instance v0, Lcom/perm/kate/SearchWallActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$10;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 453
    new-instance v0, Lcom/perm/kate/SearchWallActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$12;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-void
.end method

.method private CreateContextMenuForComment(Lcom/perm/kate/NewsItemTag;)V
    .locals 4

    .line 493
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f03ae

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00b2

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04dd

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 498
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/SearchWallActivity$14;

    invoke-direct {v3, p0, v0, p1}, Lcom/perm/kate/SearchWallActivity$14;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 521
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 522
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 524
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 525
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchWallActivity;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchWallActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    return p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/SearchWallActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchWallActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    return p0
.end method

.method static synthetic access$1202(Lcom/perm/kate/SearchWallActivity;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    return p1
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchWallActivity;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchWallActivity;->CreateContextMenuForComment(Lcom/perm/kate/NewsItemTag;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/SearchWallActivity;->setLike(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchWallActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/SearchWallActivity;->pinUnpinPost(JJZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchWallActivity;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchWallActivity;->openWallComment(Lcom/perm/kate/NewsItemTag;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/SearchWallActivity;->updatePostLikes(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/perm/kate/SearchWallActivity;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/SearchWallActivity;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchWallActivity;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->search_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SearchWallActivity;->fillItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/SearchWallAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/SearchWallActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    return-object p0
.end method

.method private doSearch()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    .line 184
    new-instance v0, Lcom/perm/kate/SearchWallActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$3;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    .line 193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Z)V
    .locals 3

    const/4 v0, 0x3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_0

    .line 209
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    goto :goto_1

    .line 211
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 212
    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v1, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    div-int/lit8 v1, v1, 0x2

    if-le p2, v1, :cond_2

    const/4 p2, 0x0

    .line 219
    iput p2, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    goto :goto_2

    .line 221
    :cond_2
    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    .line 222
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    .line 224
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result p2

    .line 225
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p2, :cond_3

    if-eqz p1, :cond_4

    .line 228
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    :cond_4
    return-void

    .line 215
    :cond_5
    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 264
    new-instance v0, Lcom/perm/kate/SearchWallActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$7;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    .line 272
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onSearch()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->doSearch()V

    :cond_0
    return-void
.end method

.method private openWallComment(Lcom/perm/kate/NewsItemTag;)V
    .locals 4

    .line 531
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 532
    const-class v1, Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 533
    iget-object v1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.current_photo_pid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 534
    iget-object v1, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.current_owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.comment_type"

    const/4 v2, 0x1

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "last_page"

    .line 536
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "can_post"

    .line 537
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 538
    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->comment_id:Ljava/lang/Long;

    const-string v1, "start_comment_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private pinUnpinPost(JJZ)V
    .locals 9

    .line 581
    new-instance v7, Lcom/perm/kate/SearchWallActivity$16;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    move v3, p5

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/SearchWallActivity$16;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;ZJ)V

    const/4 v0, 0x1

    .line 597
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 598
    new-instance v8, Lcom/perm/kate/SearchWallActivity$17;

    move-object v0, v8

    move v2, p5

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/SearchWallActivity$17;-><init>(Lcom/perm/kate/SearchWallActivity;ZJJLcom/perm/kate/session/Callback;)V

    .line 606
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .line 232
    new-instance v0, Lcom/perm/kate/SearchWallActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$5;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setLike(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 543
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 544
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 546
    new-instance v0, Lcom/perm/kate/SearchWallActivity$15;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/SearchWallActivity$15;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Z)V

    const/4 v7, 0x0

    move v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, v0

    move-object v6, p0

    .line 565
    invoke-static/range {v2 .. v7}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;Z)V

    return-void
.end method

.method private updatePostLikes(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 7

    .line 569
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 570
    iget v2, v1, Lcom/perm/kate/api/WallMessage;->post_type:I

    if-nez v2, :cond_0

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    if-eqz p3, :cond_1

    .line 572
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, v1, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 573
    :cond_1
    iput-boolean p4, v1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    .line 577
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    .line 354
    :try_start_0
    iget-object v4, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 355
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 356
    iget-object v5, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 357
    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 358
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 359
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v1, v12, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 360
    :goto_1
    iget-boolean v9, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 361
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v13

    if-nez v13, :cond_2

    .line 363
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const v14, 0x7f0f041c

    invoke-virtual {v10, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x7f0f0319

    invoke-virtual {v10, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 364
    new-instance v14, Lcom/perm/kate/MenuItemDetails;

    const/16 v15, 0xd

    invoke-direct {v14, v13, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    new-instance v13, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f022e

    invoke-direct {v13, v14, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v13, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f022c

    const/4 v15, 0x2

    invoke-direct {v13, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v9, :cond_3

    .line 369
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f012a

    const/4 v14, 0x3

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 371
    :cond_3
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f0129

    const/4 v14, 0x4

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :goto_2
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a2

    const/16 v14, 0x8

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f02ba

    const/16 v14, 0xf

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a3

    const/16 v14, 0x12

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v9, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f01d9

    const/4 v14, 0x6

    invoke-direct {v9, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-wide v13, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    const-wide/16 v15, -0x1

    cmp-long v9, v13, v2

    if-gez v9, :cond_4

    iget-object v9, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-wide v2, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    cmp-long v9, v13, v2

    if-eqz v9, :cond_4

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v13, v10, Lcom/perm/kate/SearchWallActivity;->account_id:J

    cmp-long v9, v2, v13

    if-eqz v9, :cond_4

    .line 377
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v13, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    mul-long v13, v13, v15

    invoke-virtual {v2, v3, v13, v14}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 379
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f02f2

    const/16 v9, 0x15

    invoke-direct {v2, v3, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 382
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_5
    iget-wide v1, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-lez v3, :cond_6

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-wide v1, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    const-wide/16 v13, 0x0

    cmp-long v3, v1, v13

    if-gez v3, :cond_9

    .line 384
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, v10, Lcom/perm/kate/SearchWallActivity;->account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v13, v10, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    mul-long v13, v13, v15

    invoke-virtual {v1, v2, v13, v14}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 385
    :cond_7
    iget-wide v1, v10, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    cmp-long v3, v6, v1

    if-nez v3, :cond_8

    .line 386
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02ef

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 388
    :cond_8
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f026e

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_9
    :goto_3
    new-instance v13, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v13, v10}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    invoke-static {v12}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v14

    new-instance v15, Lcom/perm/kate/SearchWallActivity$11;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v12

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/SearchWallActivity$11;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/perm/kate/NewsItemTag;)V

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 446
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 448
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    const v3, 0x7f0f03a8

    .line 147
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 148
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 149
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 65
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0110

    .line 66
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f02ad

    .line 67
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 68
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.domain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pinned_post_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    .line 74
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    .line 75
    iget-wide v5, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    cmp-long p1, v5, v1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 76
    iput-wide v3, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    .line 77
    :cond_0
    iget-wide v5, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    const/4 p1, 0x1

    const/4 v0, 0x0

    cmp-long v7, v5, v3

    if-nez v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    const v3, 0x7f09021b

    .line 78
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    .line 79
    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 81
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const v3, 0x7f090325

    .line 82
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    .line 83
    new-instance v4, Lcom/perm/kate/SearchWallActivity$1;

    invoke-direct {v4, p0}, Lcom/perm/kate/SearchWallActivity$1;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v3, 0x7f090091

    .line 95
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->btn_search:Landroid/widget/ImageButton;

    .line 96
    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {p0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    .line 98
    invoke-static {p0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    .line 99
    iget-boolean v4, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    const v0, 0x7f0902ab

    .line 101
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v3, :sswitch_data_0

    const v3, 0x7f0600a2

    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_0
    const v3, 0x7f06001b

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_1
    const v3, 0x7f060064

    .line 111
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_2
    const v3, 0x7f0600a3

    .line 108
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_3
    const v3, 0x7f0600a0

    .line 105
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-static {v0, v3, v4}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 123
    iget-wide v3, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    .line 124
    :goto_2
    new-instance v0, Lcom/perm/kate/SearchWallAdapter;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/SearchWallAdapter;-><init>(Lcom/perm/kate/BaseActivity;I)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    .line 125
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.hashtag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 129
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 131
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1000c7 -> :sswitch_3
        0x7f1000cb -> :sswitch_2
        0x7f1000d3 -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0}, Lcom/perm/kate/SearchWallAdapter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    .line 298
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    .line 301
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    .line 160
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 137
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 139
    invoke-virtual {p0, p1}, Lcom/perm/kate/SearchWallActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    return-void
.end method

.method protected removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 461
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 462
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 463
    new-instance v0, Lcom/perm/kate/SearchWallActivity$13;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/SearchWallActivity$13;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 483
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 484
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 485
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 487
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
