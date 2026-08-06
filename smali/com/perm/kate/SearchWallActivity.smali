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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    .line 47
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    .line 51
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    .line 52
    iput v1, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    .line 54
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    .line 59
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    .line 60
    iput-boolean v1, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    .line 167
    new-instance v0, Lcom/perm/kate/SearchWallActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$2;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    .line 195
    new-instance v0, Lcom/perm/kate/SearchWallActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchWallActivity$4;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->search_callback:Lcom/perm/kate/session/Callback;

    .line 247
    new-instance v0, Lcom/perm/kate/SearchWallActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$6;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 278
    new-instance v0, Lcom/perm/kate/SearchWallActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/SearchWallActivity$8;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 307
    new-instance v0, Lcom/perm/kate/SearchWallActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$9;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 324
    new-instance v0, Lcom/perm/kate/SearchWallActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$10;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 455
    new-instance v0, Lcom/perm/kate/SearchWallActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$12;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-void
.end method

.method private CreateContextMenuForComment(Lcom/perm/kate/NewsItemTag;)V
    .locals 7
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 495
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07034a

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f07007e

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 499
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/perm/kate/SearchWallActivity$14;

    invoke-direct {v6, p0, v1, p1}, Lcom/perm/kate/SearchWallActivity$14;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 518
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 519
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 520
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v2

    .line 522
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 523
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/SearchWallActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/SearchWallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    return v0
.end method

.method static synthetic access$1002(Lcom/perm/kate/SearchWallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/SearchWallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    return v0
.end method

.method static synthetic access$1202(Lcom/perm/kate/SearchWallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/perm/kate/SearchWallActivity;->offset:I

    return p1
.end method

.method static synthetic access$1300(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/SearchWallActivity;Lcom/perm/kate/NewsItemTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/SearchWallActivity;->CreateContextMenuForComment(Lcom/perm/kate/NewsItemTag;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/SearchWallActivity;->setLike(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/SearchWallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Z

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/SearchWallActivity;->pinUnpinPost(JJZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/SearchWallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/lang/Long;
    .param p3, "x3"    # Ljava/lang/Long;
    .param p4, "x4"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/SearchWallActivity;->updatePostLikes(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    return-void
.end method

.method static synthetic access$2102(Lcom/perm/kate/SearchWallActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/perm/kate/SearchWallActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/SearchWallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/SearchWallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget v0, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->search_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/SearchWallActivity;->fillItems(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/kate/SearchWallAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/SearchWallActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private doSearch()V
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    .line 183
    new-instance v0, Lcom/perm/kate/SearchWallActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$3;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    .line 192
    invoke-virtual {v0}, Lcom/perm/kate/SearchWallActivity$3;->start()V

    .line 193
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Z)V
    .locals 7
    .param p2, "first"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "_wall_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    const/4 v6, 0x3

    .line 206
    if-eqz p1, :cond_5

    .line 207
    if-eqz p2, :cond_4

    .line 208
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    .line 217
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/perm/kate/SearchWallActivity;->count:I

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_6

    .line 218
    const/4 v4, 0x0

    iput v4, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    .line 221
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    .line 223
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v1

    .line 224
    .local v1, "res1":Z
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result v2

    .line 226
    .local v2, "res2":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    .line 227
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    .line 229
    :cond_2
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsersOnlineState(Ljava/util/ArrayList;)Z

    move-result v3

    .line 230
    .local v3, "res3":Z
    if-eqz v3, :cond_3

    .line 231
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    .line 232
    .end local v1    # "res1":Z
    .end local v2    # "res2":Z
    .end local v3    # "res3":Z
    :cond_3
    :goto_1
    return-void

    .line 210
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 211
    .local v0, "m":Lcom/perm/kate/api/WallMessage;
    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    .end local v0    # "m":Lcom/perm/kate/api/WallMessage;
    :cond_5
    iput v6, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    goto :goto_1

    .line 220
    :cond_6
    iput v6, p0, Lcom/perm/kate/SearchWallActivity;->state:I

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/perm/kate/SearchWallActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$7;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    .line 275
    invoke-virtual {v0}, Lcom/perm/kate/SearchWallActivity$7;->start()V

    .line 276
    return-void
.end method

.method private onSearch()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->query:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->doSearch()V

    .line 179
    :cond_0
    return-void
.end method

.method private pinUnpinPost(JJZ)V
    .locals 9
    .param p1, "wall_owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "pin"    # Z

    .prologue
    .line 566
    new-instance v0, Lcom/perm/kate/SearchWallActivity$16;

    move-object v1, p0

    move-object v2, p0

    move v3, p5

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/SearchWallActivity$16;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;ZJ)V

    .line 582
    .local v0, "pin_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/SearchWallActivity;->showProgressBar(Z)V

    .line 583
    new-instance v1, Lcom/perm/kate/SearchWallActivity$17;

    move-object v2, p0

    move v3, p5

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, v0

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/SearchWallActivity$17;-><init>(Lcom/perm/kate/SearchWallActivity;ZJJLcom/perm/kate/session/Callback;)V

    .line 591
    invoke-virtual {v1}, Lcom/perm/kate/SearchWallActivity$17;->start()V

    .line 592
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .prologue
    .line 235
    new-instance v0, Lcom/perm/kate/SearchWallActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallActivity$5;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/SearchWallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method private setLike(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "ownerId"    # Ljava/lang/String;
    .param p3, "like"    # Z

    .prologue
    .line 528
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 529
    .local v4, "owner_id":Ljava/lang/Long;
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 531
    .local v3, "post_id":Ljava/lang/Long;
    new-instance v0, Lcom/perm/kate/SearchWallActivity$15;

    move-object v1, p0

    move-object v2, p0

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/SearchWallActivity$15;-><init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 550
    .local v0, "callback_like":Lcom/perm/kate/session/Callback;
    invoke-static {p3, v4, v3, v0, p0}, Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 551
    return-void
.end method

.method private updatePostLikes(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 6
    .param p1, "post_id"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "likes"    # Ljava/lang/Long;
    .param p4, "like"    # Z

    .prologue
    .line 554
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity;->wall_messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 555
    .local v0, "m":Lcom/perm/kate/api/WallMessage;
    iget v2, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 556
    if-eqz p3, :cond_1

    .line 557
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 558
    :cond_1
    iput-boolean p4, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    .line 562
    .end local v0    # "m":Lcom/perm/kate/api/WallMessage;
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->requeryOnUiThread()V

    .line 563
    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 22
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 356
    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 357
    .local v6, "post_id":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 358
    .local v8, "long_post_id":J
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 359
    .local v7, "wall_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "post_owner_id":Ljava/lang/String;
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 361
    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v3, v18, v20

    if-gez v3, :cond_7

    :cond_0
    const/4 v2, 0x1

    .line 362
    .local v2, "can_remove":Z
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 363
    .local v13, "i_like":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v5, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v3

    if-nez v3, :cond_1

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0703a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/SearchWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0702bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/SearchWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, "open_title":Ljava/lang/String;
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const/16 v4, 0xd

    invoke-direct {v3, v15, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v15    # "open_title":Ljava/lang/String;
    :cond_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701d2

    const/4 v11, 0x1

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701d0

    const/4 v11, 0x2

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    if-nez v13, :cond_8

    .line 371
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700e0

    const/4 v11, 0x3

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070518

    const/16 v11, 0x8

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070261

    const/16 v11, 0xf

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070519

    const/16 v11, 0x12

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070171

    const/4 v11, 0x6

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v3, v18, v20

    if-gez v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v20, v0

    cmp-long v3, v18, v20

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    move-wide/from16 v20, v0

    cmp-long v3, v18, v20

    if-eqz v3, :cond_2

    .line 379
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v14

    .line 380
    .local v14, "is_moder":Z
    if-eqz v14, :cond_2

    .line 381
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07029a

    const/16 v11, 0x15

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v14    # "is_moder":Z
    :cond_2
    if-eqz v2, :cond_3

    .line 384
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070084

    const/4 v11, 0x7

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v3, v18, v20

    if-lez v3, :cond_4

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v3, v18, v20

    if-gez v3, :cond_6

    .line 386
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v3, v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 387
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    move-wide/from16 v18, v0

    cmp-long v3, v8, v18

    if-nez v3, :cond_9

    .line 388
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070297

    const/16 v11, 0x1a

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_6
    :goto_2
    new-instance v18, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-static {v5}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v19

    new-instance v3, Lcom/perm/kate/SearchWallActivity$11;

    move-object/from16 v4, p0

    move-object/from16 v11, p1

    invoke-direct/range {v3 .. v11}, Lcom/perm/kate/SearchWallActivity$11;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/perm/kate/NewsItemTag;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v17

    .line 446
    .local v17, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v12

    .line 447
    .local v12, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 448
    invoke-virtual {v12}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 453
    .end local v2    # "can_remove":Z
    .end local v5    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v6    # "post_id":Ljava/lang/String;
    .end local v7    # "wall_owner_id":Ljava/lang/String;
    .end local v8    # "long_post_id":J
    .end local v10    # "post_owner_id":Ljava/lang/String;
    .end local v12    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v13    # "i_like":Z
    .end local v17    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_3
    return-void

    .line 361
    .restart local v6    # "post_id":Ljava/lang/String;
    .restart local v7    # "wall_owner_id":Ljava/lang/String;
    .restart local v8    # "long_post_id":J
    .restart local v10    # "post_owner_id":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 373
    .restart local v2    # "can_remove":Z
    .restart local v5    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v13    # "i_like":Z
    :cond_8
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700df

    const/4 v11, 0x4

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 449
    .end local v2    # "can_remove":Z
    .end local v5    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v6    # "post_id":Ljava/lang/String;
    .end local v7    # "wall_owner_id":Ljava/lang/String;
    .end local v8    # "long_post_id":J
    .end local v10    # "post_owner_id":Ljava/lang/String;
    .end local v13    # "i_like":Z
    :catch_0
    move-exception v16

    .line 450
    .local v16, "th":Ljava/lang/Throwable;
    invoke-static/range {v16 .. v16}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 451
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 390
    .end local v16    # "th":Ljava/lang/Throwable;
    .restart local v2    # "can_remove":Z
    .restart local v5    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v6    # "post_id":Ljava/lang/String;
    .restart local v7    # "wall_owner_id":Ljava/lang/String;
    .restart local v8    # "long_post_id":J
    .restart local v10    # "post_owner_id":Ljava/lang/String;
    .restart local v13    # "i_like":Z
    :cond_9
    :try_start_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070214

    const/16 v11, 0x19

    invoke-direct {v3, v4, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    .line 146
    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const v3, 0x7f070343

    invoke-interface {p1, v1, v4, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 147
    .local v0, "x":Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 148
    iget-boolean v1, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 149
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v10, 0x0

    .line 64
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v3, 0x7f0300f4

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->setContentView(I)V

    .line 66
    const v3, 0x7f070253

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->setHeaderTitle(I)V

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->setupMenuButton()V

    .line 68
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->setupRefreshButton()V

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->setButtonsBg()V

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "com.perm.kate.owner_id"

    invoke-virtual {v3, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "com.perm.kate.domain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v6, "pinned_post_id"

    invoke-virtual {v3, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->pinned_post_id:J

    .line 73
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    .line 74
    iget-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->domain:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 75
    iget-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    iput-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    .line 76
    :cond_0
    iget-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    iget-wide v8, p0, Lcom/perm/kate/SearchWallActivity;->account_id:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->is_me:Z

    .line 77
    const v3, 0x7f0e0305

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    .line 78
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 79
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 80
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    const v3, 0x7f0e0303

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    .line 82
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    new-instance v6, Lcom/perm/kate/SearchWallActivity$1;

    invoke-direct {v6, p0}, Lcom/perm/kate/SearchWallActivity$1;-><init>(Lcom/perm/kate/SearchWallActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 94
    const v3, 0x7f0e01a1

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->btn_search:Landroid/widget/ImageButton;

    .line 95
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->btn_search:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-static {p0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    .line 97
    invoke-static {p0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    .line 98
    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 100
    const v3, 0x7f0e0317

    invoke-virtual {p0, v3}, Lcom/perm/kate/SearchWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "root_layout":Landroid/view/View;
    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v3, :sswitch_data_0

    .line 116
    const v3, 0x7f0c005a

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    .end local v1    # "root_layout":Landroid/view/View;
    :cond_1
    :goto_1
    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity;->card_style_news:Z

    iget-boolean v5, p0, Lcom/perm/kate/SearchWallActivity;->old_style_news:Z

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-static {v3, v5, v6}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 122
    iget-wide v6, p0, Lcom/perm/kate/SearchWallActivity;->owner_id:J

    cmp-long v3, v6, v10

    if-lez v3, :cond_4

    move v2, v4

    .line 123
    .local v2, "source":I
    :goto_2
    new-instance v3, Lcom/perm/kate/SearchWallAdapter;

    invoke-direct {v3, p0, v2}, Lcom/perm/kate/SearchWallAdapter;-><init>(Lcom/perm/kate/BaseActivity;I)V

    iput-object v3, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    .line 124
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.hashtag"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "_hashtag":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 128
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    .line 132
    :cond_2
    return-void

    .end local v0    # "_hashtag":Ljava/lang/String;
    .end local v2    # "source":I
    :cond_3
    move v3, v5

    .line 76
    goto/16 :goto_0

    .line 104
    .restart local v1    # "root_layout":Landroid/view/View;
    :sswitch_0
    const v3, 0x7f0c0059

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 107
    :sswitch_1
    const v3, 0x7f0c005b

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 110
    :sswitch_2
    const v3, 0x7f0c003a

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 113
    :sswitch_3
    const v3, 0x7f0c000f

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 122
    .end local v1    # "root_layout":Landroid/view/View;
    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    .line 102
    :sswitch_data_0
    .sparse-switch
        0x7f0a00c0 -> :sswitch_0
        0x7f0a00c2 -> :sswitch_1
        0x7f0a00c6 -> :sswitch_2
        0x7f0a00cc -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/SearchWallAdapter;->destroy()V

    .line 300
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/SearchWallActivity;->adapter:Lcom/perm/kate/SearchWallAdapter;

    .line 301
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/SearchWallActivity;->lv_search_list:Landroid/widget/ListView;

    .line 304
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 305
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 154
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 159
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 156
    :pswitch_0
    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/SearchWallActivity;->owners_only:Z

    .line 157
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    goto :goto_0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/perm/kate/SearchWallActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 139
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/perm/kate/SearchWallActivity;->onSearch()V

    .line 165
    return-void
.end method

.method protected removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "postOwnerId"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 464
    .local v0, "post_id":Ljava/lang/Long;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 465
    .local v1, "wall_owner_id":Ljava/lang/Long;
    new-instance v2, Lcom/perm/kate/SearchWallActivity$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/perm/kate/SearchWallActivity$13;-><init>(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 485
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070039

    .line 486
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 487
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 488
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 489
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 490
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 491
    return-void
.end method
