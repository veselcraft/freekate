.class public Lcom/perm/kate/CommentsSearchActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CommentsSearchActivity.java"


# instance fields
.field private account_id:J

.field private callback_reload:Lcom/perm/kate/session/Callback;

.field private comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

.field private comment_type:I

.field comments:Ljava/util/ArrayList;

.field private content_id:J

.field private content_owner_id:J

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private lv_comment_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field query:Ljava/lang/String;

.field reply_to_cid:Ljava/lang/String;

.field reply_to_user_name:Ljava/lang/String;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private search_OnClickListener:Landroid/view/View$OnClickListener;

.field private state:I

.field tb_search:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 40
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->account_id:J

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/perm/kate/CommentsSearchActivity;->state:I

    .line 85
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsSearchActivity$2;-><init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    .line 385
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$8;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/16 v0, 0x64

    .line 392
    iput v0, p0, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    .line 572
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$12;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 600
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$14;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsSearchActivity$14;-><init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    .line 622
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$15;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->searchClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/CommentsSearchActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/perm/kate/CommentsSearchActivity;->state:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/CommentsSearchActivity;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->sendToFriend(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/perm/kate/CommentsSearchActivity;I)I
    .locals 0

    .line 31
    iput p1, p0, Lcom/perm/kate/CommentsSearchActivity;->state:I

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/CommentsSearchActivity;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/CommentListAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/CommentsSearchActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsSearchActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/perm/kate/CommentsSearchActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/CommentsSearchActivity;ILcom/perm/kate/session/Callback;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->downloadComments(ILcom/perm/kate/session/Callback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/CommentsSearchActivity;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/CommentsSearchActivity;)J
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/CommentsSearchActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/perm/kate/CommentsSearchActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/CommentsSearchActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/CommentsSearchActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsSearchActivity;->reply(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/CommentsSearchActivity;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/CommentsSearchActivity;JLcom/perm/kate/api/Comment;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/CommentsSearchActivity;->editComment(JLcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/CommentsSearchActivity;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/CommentsSearchActivity;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    return p0
.end method

.method static synthetic access$800(Lcom/perm/kate/CommentsSearchActivity;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->replyToWho(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/CommentsSearchActivity;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->copyLink(J)V

    return-void
.end method

.method private copyLink(J)V
    .locals 0

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->getLink(J)Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 157
    iget-wide v3, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    cmp-long v3, v10, v5

    if-ltz v3, :cond_2

    iget v3, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-eq v3, v4, :cond_2

    iget-wide v8, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v3, v8, v5

    if-gez v3, :cond_1

    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v8, v8

    .line 159
    invoke-virtual {v3, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 161
    :goto_1
    iget-object v8, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 162
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 164
    iget-wide v10, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x5

    if-nez v10, :cond_4

    iget v10, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-eq v10, v7, :cond_3

    if-eq v10, v4, :cond_3

    if-eqz v10, :cond_3

    if-eq v10, v11, :cond_3

    if-ne v10, v12, :cond_4

    .line 165
    :cond_3
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f029e

    invoke-direct {v10, v13, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_4
    iget v10, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-eq v10, v7, :cond_5

    if-eq v10, v4, :cond_5

    if-eqz v10, :cond_5

    if-eq v10, v11, :cond_5

    if-ne v10, v12, :cond_7

    .line 168
    :cond_5
    iget-boolean v10, v0, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v10, :cond_6

    .line 169
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f012a

    invoke-direct {v10, v13, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 171
    :cond_6
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f0129

    const/4 v14, 0x6

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_7
    :goto_2
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a2

    const/4 v14, 0x7

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f023a

    const/16 v14, 0x11

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v10, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v13, v10, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    cmp-long v10, v13, v5

    if-lez v10, :cond_8

    .line 176
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f0439

    const/16 v14, 0xf

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_9

    .line 178
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f0319

    invoke-direct {v10, v13, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_9
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f00b2

    const/4 v14, 0x3

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v10, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f01db

    const/16 v14, 0x10

    invoke-direct {v10, v13, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-wide v13, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    iget v10, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-ne v10, v4, :cond_a

    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 182
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v13

    neg-long v13, v13

    invoke-virtual {v10, v2, v13, v14}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v10

    if-nez v10, :cond_c

    :cond_a
    iget-wide v13, v1, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    cmp-long v10, v13, v5

    if-gez v10, :cond_b

    iget-wide v11, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v15, v13, v11

    if-nez v15, :cond_b

    sget-object v11, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 184
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v12

    neg-long v12, v12

    invoke-virtual {v11, v2, v12, v13}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    iget-wide v11, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v13, v11, v5

    if-gez v13, :cond_d

    sget-object v13, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v11, v11

    .line 186
    invoke-virtual {v13, v2, v11, v12}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 188
    :cond_c
    new-instance v11, Lcom/perm/kate/MenuItemDetails;

    const v12, 0x7f0f01ec

    const/16 v13, 0x8

    invoke-direct {v11, v12, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_d
    iget v11, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-eq v11, v4, :cond_e

    iget-wide v11, v1, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    cmp-long v4, v11, v5

    if-gez v4, :cond_f

    :cond_e
    iget-wide v4, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 190
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v5

    neg-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 191
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0f02f2

    const/16 v5, 0x9

    invoke-direct {v2, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    if-eqz v3, :cond_10

    .line 193
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f00ba

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_10
    iget v2, v1, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    if-eq v2, v7, :cond_11

    if-eqz v2, :cond_11

    const/4 v3, 0x2

    if-eq v2, v3, :cond_11

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12

    :cond_11
    iget-wide v2, v1, Lcom/perm/kate/CommentsSearchActivity;->account_id:J

    iget-wide v4, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    .line 196
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f01d7

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_12
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 200
    :cond_13
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 201
    invoke-static {v9}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/CommentsSearchActivity$3;

    invoke-direct {v4, v1, v9, v0, v8}, Lcom/perm/kate/CommentsSearchActivity$3;-><init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 255
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 256
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 258
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private displayData()V
    .locals 2

    .line 108
    :try_start_0
    new-instance v0, Lcom/perm/kate/CommentListAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/perm/kate/CommentListAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    .line 109
    iget-object v1, p0, Lcom/perm/kate/CommentsSearchActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private downloadComments(ILcom/perm/kate/session/Callback;)V
    .locals 14

    move-object v13, p0

    .line 395
    iget v0, v13, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v3, p1

    move-object/from16 v9, p2

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 398
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 400
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    move v3, p1

    move-object/from16 v5, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getNoteComments(Ljava/lang/Long;Ljava/lang/Long;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 402
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    iget-wide v3, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v5, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v6, 0x0

    move v4, p1

    move-object/from16 v7, p2

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 404
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    iget-wide v3, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, p1

    move-object/from16 v11, p2

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 406
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsSearchActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private editComment(JLcom/perm/kate/api/Comment;)V
    .locals 3

    .line 490
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.edit"

    const/4 v2, 0x1

    .line 491
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.cid"

    .line 492
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 493
    iget-wide p1, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.pid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget p1, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const-string p2, "com.perm.kate.comment_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.perm.kate.comment"

    .line 498
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 499
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 360
    iget-object v2, v1, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/CommentsSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 361
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    iget-object v2, v1, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 364
    iget-object v1, v1, Lcom/perm/kate/api/Comment;->thread_comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    .line 365
    iget-object v3, v2, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/CommentsSearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 366
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getCorrectOwnerId()J
    .locals 2

    .line 133
    iget v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 134
    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    neg-long v0, v0

    return-wide v0

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    return-wide v0
.end method

.method private getLink(J)Ljava/lang/String;
    .locals 4

    .line 539
    iget v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string v2, "topic"

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "photo"

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const-string v2, "video"

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const-string v2, "product"

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v2, "wall"

    goto :goto_0

    :cond_4
    const-string v2, ""

    :goto_0
    if-ne v0, v1, :cond_5

    const-string v0, "post"

    goto :goto_1

    :cond_5
    const-string v0, "reply"

    .line 553
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadFromCache()V
    .locals 9

    .line 82
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    iget v3, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    iget-wide v7, p0, Lcom/perm/kate/CommentsSearchActivity;->account_id:J

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchCommentList(JJJJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 589
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$13;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    .line 596
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reloadInThread()V
    .locals 1

    .line 410
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$9;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    .line 417
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reply(Lcom/perm/kate/CommentTag;)V
    .locals 4

    .line 504
    :try_start_0
    iget-wide v0, p1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_cid:Ljava/lang/String;

    .line 505
    iget-object v0, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 506
    iget-object p1, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_user_name:Ljava/lang/String;

    goto :goto_0

    .line 507
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    if-eqz p1, :cond_2

    .line 508
    iget-wide v0, p1, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 510
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 512
    iget-object p1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_user_name:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_1
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v2, -0x1

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 516
    iget-object p1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_user_name:Ljava/lang/String;

    .line 520
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_cid:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/CommentsSearchActivity;->showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 523
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private replyToWho(J)V
    .locals 2

    .line 528
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 529
    const-class v1, Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "comment_id"

    .line 530
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 531
    iget-wide p1, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    const-string v1, "content_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 532
    iget-wide p1, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    const-string v1, "content_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 533
    iget p1, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const-string p2, "content_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comments:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/perm/kate/CommentsSearchActivity;->filter(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 343
    invoke-static {v0}, Lcom/perm/kate/Helper;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 344
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 345
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Comment;

    .line 346
    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 347
    new-instance v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    invoke-direct {v3, v2}, Lcom/perm/kate/data/PageCommentList$CommentData;-><init>(Lcom/perm/kate/api/Comment;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 349
    :cond_0
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$7;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/CommentsSearchActivity$7;-><init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private searchClick()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->tb_search:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 631
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 633
    :cond_0
    iput-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->query:Ljava/lang/String;

    .line 634
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->reloadInThread()V

    .line 636
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->loadFromCache()V

    .line 638
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->requeryOnUiThread()V

    return-void
.end method

.method private sendToFriend(J)V
    .locals 2

    .line 563
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity;->getLink(J)Ljava/lang/String;

    move-result-object p1

    .line 564
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 565
    const-class v0, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.perm.kate.only_members"

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.perm.kate.new_message"

    const/4 v1, 0x1

    .line 567
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "shared_text"

    .line 568
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showLikes(J)V
    .locals 2

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_id"

    .line 267
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide p1

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 271
    iget p1, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const-string p1, "topic_comment"

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "photo_comment"

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "video_comment"

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    const-string p1, "market_comment"

    goto :goto_0

    :cond_3
    const-string p1, "comment"

    :goto_0
    const-string p2, "com.perm.kate.item_type"

    .line 281
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 122
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 123
    iget-wide v1, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->getCorrectOwnerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget v1, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const-string v2, "com.perm.kate.comment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.perm.kate.reply_to_cid"

    .line 126
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.reply_to_user_name"

    .line 127
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 128
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method confirmRemoveComment(Ljava/lang/Long;J)V
    .locals 1

    .line 287
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/CommentsSearchActivity$4;-><init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/lang/Long;J)V

    .line 293
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 294
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 295
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 p3, 0x0

    .line 296
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 298
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 299
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 140
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 53
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0049

    .line 54
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0239

    .line 55
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f09020d

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p1, 0x7f090325

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/CommentsSearchActivity;->tb_search:Landroid/widget/EditText;

    .line 60
    new-instance v0, Lcom/perm/kate/CommentsSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsSearchActivity$1;-><init>(Lcom/perm/kate/CommentsSearchActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.current_owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/CommentsSearchActivity;->content_owner_id:J

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.current_photo_pid"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentsSearchActivity;->content_id:J

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.comment_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_type:I

    const p1, 0x7f090091

    .line 75
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->search_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/CommentsSearchActivity;->displayData()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/perm/kate/CommentsSearchActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->Destroy()V

    .line 486
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected removeComment(Ljava/lang/Long;J)V
    .locals 0

    const/4 p2, 0x1

    .line 303
    invoke-virtual {p0, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 304
    new-instance p2, Lcom/perm/kate/CommentsSearchActivity$5;

    invoke-direct {p2, p0, p0, p1}, Lcom/perm/kate/CommentsSearchActivity$5;-><init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 321
    new-instance p3, Lcom/perm/kate/CommentsSearchActivity$6;

    invoke-direct {p3, p0, p1, p2}, Lcom/perm/kate/CommentsSearchActivity$6;-><init>(Lcom/perm/kate/CommentsSearchActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 337
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 7

    .line 422
    new-instance v6, Lcom/perm/kate/CommentsSearchActivity$10;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/CommentsSearchActivity$10;-><init>(Lcom/perm/kate/CommentsSearchActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V

    .line 452
    new-instance p2, Lcom/perm/kate/CommentsSearchActivity$11;

    invoke-direct {p2, p0, p3, p1, v6}, Lcom/perm/kate/CommentsSearchActivity$11;-><init>(Lcom/perm/kate/CommentsSearchActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 479
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
