.class public Lcom/perm/kate/AlbumCommentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AlbumCommentsActivity.java"


# instance fields
.field private PAGE_SIZE:I

.field private account_id:J

.field private albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

.field private album_id:J

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback2:Lcom/perm/kate/session/Callback;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private load_more_callback2:Lcom/perm/kate/session/Callback;

.field private lv_comment_list:Landroid/widget/ListView;

.field private mItems:Ljava/util/ArrayList;

.field private mPhotos:Ljava/util/HashMap;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private owner_id:J

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollToTop:Z

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$89mISS03g7ezdTEnAqbiyMneMhI(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    const/16 v0, 0x64

    .line 26
    iput v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->PAGE_SIZE:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    .line 34
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    .line 64
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$1;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$9;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 272
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$10;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback2:Lcom/perm/kate/session/Callback;

    .line 315
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$11;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 346
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$13;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$13;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    .line 397
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$14;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback2:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->confirmRemoveComment(Lcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThreadStep2(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AlbumCommentsActivity;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    return p0
.end method

.method static synthetic access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    return p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->addPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/AlbumCommentsActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->loadMoreStep2(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AlbumCommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AlbumCommentsActivity;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AlbumCommentsActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->deleteCommentFromList(Lcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AlbumCommentsActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/AlbumCommentsActivity;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->PAGE_SIZE:I

    return p0
.end method

.method static synthetic access$900(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private addPhotos(Ljava/util/ArrayList;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 286
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private confirmRemoveComment(Lcom/perm/kate/api/Comment;)V
    .locals 2

    .line 137
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AlbumCommentsActivity$3;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V

    .line 143
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 144
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f05a7

    .line 145
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v1, 0x0

    .line 146
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 148
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private deleteCommentFromList(Lcom/perm/kate/api/Comment;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    iget-wide v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-gez v7, :cond_1

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide/16 v5, -0x1

    iget-wide v7, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    mul-long v7, v7, v5

    invoke-virtual {v2, v0, v7, v8}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 85
    :goto_1
    iget-object v1, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    iget-boolean v3, p1, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v3, :cond_3

    .line 88
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f012a

    const/4 v6, 0x5

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 90
    :cond_3
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f0129

    const/4 v6, 0x6

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f05a2

    const/4 v6, 0x7

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 93
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f0319

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_4
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f00b2

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 96
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f00ba

    invoke-direct {v0, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_5
    new-instance v0, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f01d7

    const/16 v5, 0xd

    invoke-direct {v0, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lcom/perm/kate/AlbumCommentsActivity$2;

    invoke-direct {v5, p0, v2, p1, v1}, Lcom/perm/kate/AlbumCommentsActivity$2;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 131
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private displayData()V
    .locals 2

    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lcom/perm/kate/AlbumCommentsAdapter;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AlbumCommentsAdapter;-><init>(Lcom/perm/kate/BaseActivity;Ljava/util/HashMap;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    .line 301
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AlbumCommentsAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 304
    iget-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 306
    iput-boolean v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 310
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private displayDataInUI()V
    .locals 1

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 334
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$12;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadMoreStep2(Ljava/util/ArrayList;)V
    .locals 10

    .line 369
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 372
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v3, ""

    move-object v5, v3

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Comment;

    .line 375
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 376
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 382
    :cond_2
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 383
    iget-wide v3, v3, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_3
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v8, -0x1

    mul-long v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    iget-wide v3, v3, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long v3, v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 387
    :cond_4
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 388
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 389
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 390
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback2:Lcom/perm/kate/session/Callback;

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 392
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 393
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    :goto_1
    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 216
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$8;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 223
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshInThreadStep2(Ljava/util/ArrayList;)V
    .locals 10

    .line 249
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    .line 251
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ""

    move-object v5, v3

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Comment;

    .line 255
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 256
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v3, Lcom/perm/kate/api/Comment;->pid:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 262
    :cond_2
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 263
    iget-wide v3, v3, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_3
    iget-wide v6, v3, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v8, -0x1

    mul-long v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    iget-wide v3, v3, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long v3, v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 267
    :cond_4
    invoke-static {p1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 268
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 269
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback2:Lcom/perm/kate/session/Callback;

    move-object v9, p0

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 1

    .line 183
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$6;

    invoke-direct {v0, p0, p0, p2, p3}, Lcom/perm/kate/AlbumCommentsActivity$6;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;Z)V

    .line 194
    new-instance p2, Lcom/perm/kate/AlbumCommentsActivity$7;

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/perm/kate/AlbumCommentsActivity$7;-><init>(Lcom/perm/kate/AlbumCommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 202
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showLikes(J)V
    .locals 2

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_id"

    .line 208
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    iget-wide p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.perm.kate.item_type"

    const-string p2, "photo_comment"

    .line 210
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0023

    .line 44
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09020d

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    .line 53
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    const-wide/16 v2, -0x3e8

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const p1, 0x7f0f0043

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0041

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThread()V

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0}, Lcom/perm/kate/AlbumCommentsAdapter;->Destroy()V

    .line 413
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThread()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    return-void
.end method

.method protected removeComment(Lcom/perm/kate/api/Comment;)V
    .locals 2

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 154
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/AlbumCommentsActivity$4;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;)V

    .line 168
    new-instance v1, Lcom/perm/kate/AlbumCommentsActivity$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/AlbumCommentsActivity$5;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;Lcom/perm/kate/session/Callback;)V

    .line 173
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
