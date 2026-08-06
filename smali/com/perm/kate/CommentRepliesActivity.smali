.class public Lcom/perm/kate/CommentRepliesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CommentRepliesActivity.java"


# instance fields
.field private account_id:J

.field private callback_next:Lcom/perm/kate/session/Callback;

.field private callback_reload:Lcom/perm/kate/session/Callback;

.field commentDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/PageCommentList$CommentData;",
            ">;"
        }
    .end annotation
.end field

.field private comment_id:J

.field private comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

.field private comment_type:I

.field private content_id:J

.field private content_owner_id:J

.field private lv_comment_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field requested_comment:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 33
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    .line 60
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentRepliesActivity$1;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    .line 94
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentRepliesActivity$2;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_next:Lcom/perm/kate/session/Callback;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    .line 330
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$8;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 337
    const/16 v0, 0x1e

    iput v0, p0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    .line 339
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentRepliesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_next:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_id:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/CommentRepliesActivity;ILcom/perm/kate/session/Callback;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/perm/kate/session/Callback;
    .param p3, "x3"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/CommentRepliesActivity;->downloadComments(ILcom/perm/kate/session/Callback;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/CommentRepliesActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p1, "x1"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentRepliesActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/CommentRepliesActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/CommentRepliesActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/CommentListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/CommentRepliesActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;
    .param p1, "x1"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentRepliesActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/CommentRepliesActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentRepliesActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 12
    .param p1, "commentTag"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_0
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 153
    .local v2, "me":Ljava/lang/Long;
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_b

    :cond_2
    const/4 v0, 0x1

    .line 154
    .local v0, "can_remove":Z
    :goto_1
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 155
    .local v5, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v3, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 158
    :cond_3
    iget-boolean v7, p1, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v7, :cond_c

    .line 159
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0700e0

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_4
    :goto_2
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070518

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 165
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0702bd

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_5
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07007e

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_6

    iget-wide v8, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    :cond_6
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 168
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 169
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07029a

    const/16 v9, 0x9

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_7
    if-eqz v0, :cond_8

    .line 171
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070084

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_8
    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    iget v7, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_a

    :cond_9
    iget-wide v8, p0, Lcom/perm/kate/CommentRepliesActivity;->account_id:J

    iget-wide v10, p1, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_a

    .line 174
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07016f

    const/16 v9, 0xd

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 178
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/CommentRepliesActivity$3;

    invoke-direct {v9, p0, v3, p1, v5}, Lcom/perm/kate/CommentRepliesActivity$3;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 217
    .local v6, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 218
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 219
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 220
    .end local v0    # "can_remove":Z
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "me":Ljava/lang/Long;
    .end local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :catch_0
    move-exception v4

    .line 221
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 222
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 153
    .end local v4    # "th":Ljava/lang/Throwable;
    .restart local v2    # "me":Ljava/lang/Long;
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 161
    .restart local v0    # "can_remove":Z
    .restart local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    :try_start_1
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0700df

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method private displayData()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    new-instance v1, Lcom/perm/kate/CommentListAdapter;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p0}, Lcom/perm/kate/CommentListAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V

    iput-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    .line 133
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private downloadComments(ILcom/perm/kate/session/Callback;J)V
    .locals 19
    .param p1, "offset"    # I
    .param p2, "c"    # Lcom/perm/kate/session/Callback;
    .param p3, "start_comment_id"    # J

    .prologue
    .line 342
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/perm/kate/CommentRepliesActivity;->requested_comment:J

    .line 343
    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 344
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    const/4 v9, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p0

    invoke-virtual/range {v4 .. v12}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-nez v4, :cond_2

    .line 346
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p0

    invoke-virtual/range {v4 .. v11}, Lcom/perm/kate/session/Session;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 349
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move/from16 v9, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p0

    invoke-virtual/range {v5 .. v13}, Lcom/perm/kate/session/Session;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 350
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 351
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move/from16 v13, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p0

    invoke-virtual/range {v5 .. v17}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 352
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 353
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/perm/kate/CommentRepliesActivity;->page_size:I

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move/from16 v7, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p0

    invoke-virtual/range {v4 .. v11}, Lcom/perm/kate/session/Session;->getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private getCorrectOwnerId()J
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 144
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    neg-long v0, v0

    .line 145
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    goto :goto_0
.end method

.method private reloadInThread()V
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$9;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    .line 363
    invoke-virtual {v0}, Lcom/perm/kate/CommentRepliesActivity$9;->start()V

    .line 364
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentRepliesActivity$7;-><init>(Lcom/perm/kate/CommentRepliesActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentRepliesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method private showLikes(J)V
    .locals 7
    .param p1, "commentId"    # J

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    const-string v2, "com.perm.kate.item_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 231
    const-string v2, "com.perm.kate.owner_id"

    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->getCorrectOwnerId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 234
    iget v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 235
    const-string v1, "topic_comment"

    .line 244
    .local v1, "item_type":Ljava/lang/String;
    :goto_0
    const-string v2, "com.perm.kate.item_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentRepliesActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void

    .line 236
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    if-nez v2, :cond_1

    .line 237
    const-string v1, "photo_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 238
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 239
    const-string v1, "video_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 240
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 241
    const-string v1, "market_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 243
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_3
    const-string v1, "comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method confirmRemoveComment(Ljava/lang/Long;)V
    .locals 6
    .param p1, "commentId"    # Ljava/lang/Long;

    .prologue
    .line 250
    new-instance v2, Lcom/perm/kate/CommentRepliesActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/CommentRepliesActivity$4;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/lang/Long;)V

    .line 256
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070037

    .line 257
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 258
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 259
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 260
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 261
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 263
    return-void
.end method

.method public deleteComment(J)V
    .locals 5
    .param p1, "commentId"    # J

    .prologue
    .line 266
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 267
    .local v0, "comment":Lcom/perm/kate/data/PageCommentList$CommentData;
    iget-object v2, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v2, Lcom/perm/kate/api/Comment;->cid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 268
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 271
    .end local v0    # "comment":Lcom/perm/kate/data/PageCommentList$CommentData;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    .line 37
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f030044

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->setContentView(I)V

    .line 39
    const v1, 0x7f0703b7

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->setHeaderTitle(I)V

    .line 40
    const v1, 0x7f0e0079

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 41
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/CommentRepliesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 43
    iget-object v1, p0, Lcom/perm/kate/CommentRepliesActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/CommentRepliesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "comment_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_id:J

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/CommentRepliesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_owner_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/CommentRepliesActivity;->content_owner_id:J

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/CommentRepliesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/CommentRepliesActivity;->content_id:J

    .line 47
    invoke-virtual {p0}, Lcom/perm/kate/CommentRepliesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_type:I

    .line 48
    const v1, 0x7f0e00e8

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->displayData()V

    .line 52
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/CommentRepliesActivity;->reloadInThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/CommentRepliesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/perm/kate/CommentRepliesActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->Destroy()V

    .line 432
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 433
    return-void
.end method

.method protected removeComment(Ljava/lang/Long;)V
    .locals 2
    .param p1, "commentId"    # Ljava/lang/Long;

    .prologue
    .line 274
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentRepliesActivity;->showProgressBar(Z)V

    .line 275
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$5;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/CommentRepliesActivity$5;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 292
    .local v0, "callback_delete":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/CommentRepliesActivity$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/CommentRepliesActivity$6;-><init>(Lcom/perm/kate/CommentRepliesActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 308
    invoke-virtual {v1}, Lcom/perm/kate/CommentRepliesActivity$6;->start()V

    .line 309
    return-void
.end method

.method setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 6
    .param p1, "comment_id"    # Ljava/lang/Long;
    .param p2, "comment"    # Lcom/perm/kate/api/Comment;
    .param p3, "like"    # Z

    .prologue
    .line 368
    new-instance v0, Lcom/perm/kate/CommentRepliesActivity$10;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/CommentRepliesActivity$10;-><init>(Lcom/perm/kate/CommentRepliesActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V

    .line 398
    .local v0, "callback_like":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/CommentRepliesActivity$11;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/perm/kate/CommentRepliesActivity$11;-><init>(Lcom/perm/kate/CommentRepliesActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 425
    invoke-virtual {v1}, Lcom/perm/kate/CommentRepliesActivity$11;->start()V

    .line 426
    return-void
.end method
