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

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private owner_id:J

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private scrollToTop:Z

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->PAGE_SIZE:I

    .line 28
    const/4 v0, -0x1

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

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    .line 64
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$1;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 226
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$9;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 271
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$10;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback2:Lcom/perm/kate/session/Callback;

    .line 319
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$12;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 350
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$14;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    .line 400
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$15;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/AlbumCommentsActivity$15;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback2:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->confirmRemoveComment(Lcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThreadStep2(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AlbumCommentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    return v0
.end method

.method static synthetic access$1102(Lcom/perm/kate/AlbumCommentsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    return p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->addPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayData()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/AlbumCommentsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->loadMoreStep2(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AlbumCommentsActivity;Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Lcom/perm/kate/api/Comment;
    .param p3, "x3"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AlbumCommentsActivity;->setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AlbumCommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AlbumCommentsActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AlbumCommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/AlbumCommentsActivity;->deleteCommentFromList(Lcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AlbumCommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AlbumCommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/AlbumCommentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->PAGE_SIZE:I

    return v0
.end method

.method static synthetic access$900(Lcom/perm/kate/AlbumCommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AlbumCommentsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private addPhotos(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 288
    :cond_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 285
    .local v0, "p":Lcom/perm/kate/api/Photo;
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private confirmRemoveComment(Lcom/perm/kate/api/Comment;)V
    .locals 6
    .param p1, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 137
    new-instance v2, Lcom/perm/kate/AlbumCommentsActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/AlbumCommentsActivity$3;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;)V

    .line 143
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070037

    .line 144
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 145
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 146
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 147
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 148
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 149
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 150
    return-void
.end method

.method private deleteCommentFromList(Lcom/perm/kate/api/Comment;)V
    .locals 1
    .param p1, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    .line 180
    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 12
    .param p1, "commentTag"    # Lcom/perm/kate/CommentTag;

    .prologue
    const/4 v0, 0x1

    .line 81
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-wide v6, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    iget-wide v8, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    iget-wide v6, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_4

    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    .line 84
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v8, -0x1

    iget-wide v10, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    mul-long/2addr v8, v10

    invoke-virtual {v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    .local v0, "can_remove":Z
    :cond_1
    :goto_1
    iget-object v6, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 86
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-boolean v6, p1, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v6, :cond_5

    .line 88
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0700e0

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :goto_2
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070518

    const/4 v8, 0x7

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 93
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0702bd

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_2
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f07007e

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    if-eqz v0, :cond_3

    .line 96
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070084

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_3
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f07016f

    const/16 v8, 0xd

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/AlbumCommentsActivity$2;

    invoke-direct {v8, p0, v2, p1, v4}, Lcom/perm/kate/AlbumCommentsActivity$2;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 127
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 128
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 129
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v0    # "can_remove":Z
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :catch_0
    move-exception v3

    .line 131
    .local v3, "th":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 132
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 84
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 90
    .restart local v0    # "can_remove":Z
    .restart local v2    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0700df

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    if-nez v1, :cond_0

    .line 304
    new-instance v1, Lcom/perm/kate/AlbumCommentsAdapter;

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/AlbumCommentsAdapter;-><init>(Lcom/perm/kate/BaseActivity;Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    .line 305
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    iget-object v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/AlbumCommentsAdapter;->displayData(Ljava/util/ArrayList;)V

    .line 308
    iget-boolean v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_1
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI()V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/perm/kate/AlbumCommentsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 293
    :cond_0
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$11;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$13;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 347
    invoke-virtual {v0}, Lcom/perm/kate/AlbumCommentsActivity$13;->start()V

    .line 348
    return-void
.end method

.method private loadMoreStep2(Ljava/util/ArrayList;)V
    .locals 14
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
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    const-wide/16 v12, -0x1

    const/4 v2, 0x0

    .line 373
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 374
    const-string v1, ""

    .line 375
    .local v1, "photos":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v9, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v7, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v8, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Comment;

    .line 379
    .local v6, "comment":Lcom/perm/kate/api/Comment;
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/AlbumCommentsActivity;->mPhotos:Ljava/util/HashMap;

    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 380
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 385
    :cond_2
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 386
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 387
    :cond_3
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 390
    .end local v6    # "comment":Lcom/perm/kate/api/Comment;
    :cond_4
    invoke-static {v9}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 391
    invoke-static {v7}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 392
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 393
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/AlbumCommentsActivity;->load_more_callback2:Lcom/perm/kate/session/Callback;

    move-object v3, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 398
    :goto_1
    return-void

    .line 395
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 396
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->displayDataInUI()V

    goto :goto_1
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 216
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AlbumCommentsActivity$8;-><init>(Lcom/perm/kate/AlbumCommentsActivity;)V

    .line 223
    invoke-virtual {v0}, Lcom/perm/kate/AlbumCommentsActivity$8;->start()V

    .line 224
    return-void
.end method

.method private refreshInThreadStep2(Ljava/util/ArrayList;)V
    .locals 14
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
    .local p1, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    const-wide/16 v12, -0x1

    const/4 v2, 0x0

    .line 249
    iput-object p1, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    .line 250
    const-string v1, ""

    .line 251
    .local v1, "photos":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v9, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v7, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v8, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Comment;

    .line 255
    .local v6, "comment":Lcom/perm/kate/api/Comment;
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->pid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_2
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 262
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_3
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    iget-wide v4, v6, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 266
    .end local v6    # "comment":Lcom/perm/kate/api/Comment;
    :cond_4
    invoke-static {v9}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 267
    invoke-static {v7}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 268
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/AlbumCommentsActivity;->callback2:Lcom/perm/kate/session/Callback;

    move-object v3, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getPhotosById(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 269
    return-void
.end method

.method private setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 2
    .param p1, "comment_id"    # Ljava/lang/Long;
    .param p2, "comment"    # Lcom/perm/kate/api/Comment;
    .param p3, "like"    # Z

    .prologue
    .line 183
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$6;

    invoke-direct {v0, p0, p0, p2, p3}, Lcom/perm/kate/AlbumCommentsActivity$6;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;Z)V

    .line 194
    .local v0, "callback_like":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/AlbumCommentsActivity$7;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/perm/kate/AlbumCommentsActivity$7;-><init>(Lcom/perm/kate/AlbumCommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 202
    invoke-virtual {v1}, Lcom/perm/kate/AlbumCommentsActivity$7;->start()V

    .line 203
    return-void
.end method

.method private showLikes(J)V
    .locals 5
    .param p1, "comment_id"    # J

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    const-string v1, "com.perm.kate.item_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 209
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 210
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo_comment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/AlbumCommentsActivity;->setupRefreshButton()V

    .line 46
    const v0, 0x7f0e0079

    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 48
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/AlbumCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/AlbumCommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    .line 51
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 52
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->account_id:J

    iput-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->owner_id:J

    .line 53
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->album_id:J

    const-wide/16 v2, -0x3e8

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const v0, 0x7f07002c

    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/AlbumCommentsActivity;->setHeaderTitle(I)V

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThread()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->state:I

    .line 56
    return-void

    .line 53
    :cond_1
    const v0, 0x7f07002a

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->albumCommentsAdapter:Lcom/perm/kate/AlbumCommentsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/AlbumCommentsAdapter;->Destroy()V

    .line 416
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 417
    return-void
.end method

.method protected onRefreshButton()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/perm/kate/AlbumCommentsActivity;->refreshInThread()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/AlbumCommentsActivity;->scrollToTop:Z

    .line 62
    return-void
.end method

.method protected removeComment(Lcom/perm/kate/api/Comment;)V
    .locals 2
    .param p1, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 153
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/AlbumCommentsActivity;->showProgressBar(Z)V

    .line 154
    new-instance v0, Lcom/perm/kate/AlbumCommentsActivity$4;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/AlbumCommentsActivity$4;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;)V

    .line 168
    .local v0, "callback_delete":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/AlbumCommentsActivity$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/AlbumCommentsActivity$5;-><init>(Lcom/perm/kate/AlbumCommentsActivity;Lcom/perm/kate/api/Comment;Lcom/perm/kate/session/Callback;)V

    .line 173
    invoke-virtual {v1}, Lcom/perm/kate/AlbumCommentsActivity$5;->start()V

    .line 174
    return-void
.end method
