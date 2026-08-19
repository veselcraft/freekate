.class public Lcom/perm/kate/CommentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CommentsActivity.java"


# static fields
.field static grouped_pref_name:Ljava/lang/String;


# instance fields
.field private account_id:J

.field private addAttachmentClick:Landroid/view/View$OnClickListener;

.field private callback_last_page:Lcom/perm/kate/session/Callback;

.field private callback_refresh:Lcom/perm/kate/session/Callback;

.field private callback_reload:Lcom/perm/kate/session/Callback;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field can_post:Z

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

.field private comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

.field private comment_type:I

.field private content_id:J

.field private content_owner_id:J

.field editText:Landroid/widget/EditText;

.field is_grouped:Z

.field private last_page:Z

.field list:Lcom/perm/kate/data/PageCommentList;

.field private listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private lv_comment_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field removed_posts:I

.field replyCids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field replyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field reply_to_cid:Ljava/lang/String;

.field reply_to_user_name:Ljava/lang/String;

.field sendButton:Landroid/widget/ImageButton;

.field private sendClick:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 962
    const-string v0, "comments_grouped"

    sput-object v0, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 54
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    .line 64
    invoke-static {}, Lcom/perm/kate/CommentsActivity;->isGrouped()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    .line 129
    new-instance v0, Lcom/perm/kate/CommentsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$2;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

    .line 135
    new-instance v0, Lcom/perm/kate/CommentsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$3;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    .line 158
    new-instance v0, Lcom/perm/kate/CommentsActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$4;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_refresh:Lcom/perm/kate/session/Callback;

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    .line 479
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    .line 538
    new-instance v0, Lcom/perm/kate/CommentsActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$13;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 549
    const/16 v0, 0x23

    iput v0, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    .line 725
    new-instance v0, Lcom/perm/kate/CommentsActivity$18;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$18;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    .line 748
    new-instance v0, Lcom/perm/kate/CommentsActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$19;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->sendClick:Landroid/view/View$OnClickListener;

    .line 783
    new-instance v0, Lcom/perm/kate/CommentsActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$21;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->addAttachmentClick:Landroid/view/View$OnClickListener;

    .line 790
    new-instance v0, Lcom/perm/kate/CommentsActivity$22;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$22;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 873
    new-instance v0, Lcom/perm/kate/CommentsActivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$25;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentsActivity;ILcom/perm/kate/session/Callback;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->downloadComments(ILcom/perm/kate/session/Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/CommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->replyToWho(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/CommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->copyLink(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/CommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->sendToFriend(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/CommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->removeRecentComments(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/CommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/CommentListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->scrollToEnd()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/CommentsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/CommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->downloadLastPage()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_refresh:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->send(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->enableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/CommentsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->showMyStickersActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/CommentsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    return v0
.end method

.method static synthetic access$400(Lcom/perm/kate/CommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/CommentsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->reply(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/CommentsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/CommentsActivity;JLcom/perm/kate/api/Comment;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentsActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/CommentsActivity;->editComment(JLcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 898
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 900
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 901
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 902
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 903
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 904
    return-void
.end method

.method private checkLastPageSupport()V
    .locals 2

    .prologue
    .line 744
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    if-eqz v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Last page not supported for this comment type yet. See downloadLastPage() method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    return-void
.end method

.method private clearEditText()V
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 895
    :cond_0
    return-void
.end method

.method private confirmRemoveRecentComments(J)V
    .locals 13
    .param p1, "spammer_id"    # J

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    .line 436
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 437
    .local v0, "account_id":J
    cmp-long v7, p1, v0

    if-nez v7, :cond_1

    move v3, v6

    .line 438
    .local v3, "is_me":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 477
    :cond_0
    :goto_1
    return-void

    .line 437
    .end local v3    # "is_me":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 442
    .restart local v3    # "is_me":Z
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 445
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 446
    .local v4, "me":Ljava/lang/Long;
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-virtual {v7, v4, v8, v9}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 457
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f030043

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 458
    .local v5, "view":Landroid/view/View;
    const v7, 0x7f0e00e6

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/CommentsActivity$9;

    invoke-direct {v8, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$9;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    const v7, 0x7f0e00e7

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/CommentsActivity$10;

    invoke-direct {v8, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$10;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0701ec

    .line 471
    invoke-virtual {v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 472
    invoke-virtual {v7, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f070067

    .line 473
    invoke-virtual {v7, v8, v12}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v7

    .line 474
    invoke-virtual {v7}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 475
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 476
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method private copyLink(J)V
    .locals 1
    .param p1, "reply_to_cid"    # J

    .prologue
    .line 948
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->getLink(J)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    .line 950
    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 12
    .param p1, "commentTag"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 252
    if-nez p1, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    :try_start_0
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 255
    .local v2, "me":Ljava/lang/Long;
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_2

    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_2

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_11

    :cond_2
    const/4 v0, 0x1

    .line 256
    .local v0, "can_remove":Z
    :goto_1
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v5

    .line 257
    .local v5, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v3, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-boolean v7, p0, Lcom/perm/kate/CommentsActivity;->can_post:Z

    if-eqz v7, :cond_4

    .line 259
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    .line 260
    :cond_3
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070244

    const/4 v9, 0x4

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_4
    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_6

    .line 263
    :cond_5
    iget-boolean v7, p1, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v7, :cond_12

    .line 264
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0700e0

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_6
    :goto_2
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070518

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0701df

    const/16 v9, 0x11

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v8, v7, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_7

    .line 271
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0703b9

    const/16 v9, 0xf

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 273
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f0702bd

    const/4 v9, 0x2

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_8
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07007e

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070179

    const/16 v9, 0x10

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 277
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_b

    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v10, p1, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v7, v8, v10

    if-nez v7, :cond_b

    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 279
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 280
    :cond_a
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07018d

    const/16 v9, 0x8

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_b
    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_d

    :cond_c
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 282
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v8

    neg-long v8, v8

    invoke-virtual {v7, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 283
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07029a

    const/16 v9, 0x9

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_d
    if-eqz v0, :cond_e

    .line 285
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f070084

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_e
    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eqz v7, :cond_f

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_f

    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_10

    :cond_f
    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    iget-wide v10, p1, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v7, v8, v10

    if-eqz v7, :cond_10

    .line 288
    new-instance v7, Lcom/perm/kate/MenuItemDetails;

    const v8, 0x7f07016f

    const/16 v9, 0xd

    invoke-direct {v7, v8, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_10
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 292
    new-instance v7, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v9, Lcom/perm/kate/CommentsActivity$5;

    invoke-direct {v9, p0, v3, p1, v5}, Lcom/perm/kate/CommentsActivity$5;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 346
    .local v6, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 347
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 348
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 349
    .end local v0    # "can_remove":Z
    .end local v1    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "me":Ljava/lang/Long;
    .end local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :catch_0
    move-exception v4

    .line 350
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 351
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 255
    .end local v4    # "th":Ljava/lang/Throwable;
    .restart local v2    # "me":Ljava/lang/Long;
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 266
    .restart local v0    # "can_remove":Z
    .restart local v3    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v5    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
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
    .line 181
    :try_start_0
    new-instance v1, Lcom/perm/kate/CommentListAdapter;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p0}, Lcom/perm/kate/CommentListAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    .line 182
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayFromCache()V
    .locals 10

    .prologue
    .line 122
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v8, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->fetchCommentList(JJJJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    .local v0, "old_comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Comment;>;"
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/data/PageCommentList;->initFromCache(Ljava/util/ArrayList;)V

    .line 124
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    .line 125
    return-void
.end method

.method private downloadComments(ILcom/perm/kate/session/Callback;)V
    .locals 14
    .param p1, "offset"    # I
    .param p2, "c"    # Lcom/perm/kate/session/Callback;

    .prologue
    .line 552
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 553
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-object/from16 v7, p2

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-nez v0, :cond_2

    .line 555
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 556
    :cond_2
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 557
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    move v3, p1

    move-object/from16 v5, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getNoteComments(Ljava/lang/Long;Ljava/lang/Long;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 558
    :cond_3
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 559
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v6, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v7, 0x0

    move v5, p1

    move-object/from16 v8, p2

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 560
    :cond_4
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 561
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v9, p1

    move-object/from16 v12, p2

    move-object v13, p0

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 562
    :cond_5
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 563
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p2

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0
.end method

.method private downloadLastPage()V
    .locals 14

    .prologue
    .line 717
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 719
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    move-object v13, p0

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 720
    :cond_0
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 722
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 723
    :cond_1
    return-void
.end method

.method private editComment(JLcom/perm/kate/api/Comment;)V
    .locals 5
    .param p1, "comment_id"    # J
    .param p3, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 702
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    const-string v1, "com.perm.kate.cid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 705
    const-string v1, "com.perm.kate.pid"

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const-string v1, "com.perm.kate.owner_id"

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 709
    const-string v1, "com.perm.kate.comment_type"

    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v1, "com.perm.kate.comment"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 711
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/CommentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 712
    return-void
.end method

.method private enableFieldAndButtonsInUI(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 818
    new-instance v0, Lcom/perm/kate/CommentsActivity$23;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/CommentsActivity$23;-><init>(Lcom/perm/kate/CommentsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 823
    return-void
.end method

.method private getCorrectOwnerId()J
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 222
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    neg-long v0, v0

    .line 223
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    goto :goto_0
.end method

.method private getLink(J)Ljava/lang/String;
    .locals 7
    .param p1, "reply_to_cid"    # J

    .prologue
    const/4 v4, 0x4

    .line 928
    const-string v1, ""

    .line 929
    .local v1, "type":Ljava/lang/String;
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-ne v2, v4, :cond_1

    .line 930
    const-string v1, "topic"

    .line 940
    :cond_0
    :goto_0
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-ne v2, v4, :cond_5

    const-string v0, "post"

    .line 943
    .local v0, "reply":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/perm/kate/KApplication;->getInstanceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 944
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    return-object v2

    .line 931
    .end local v0    # "reply":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-nez v2, :cond_2

    .line 932
    const-string v1, "photo"

    goto :goto_0

    .line 933
    :cond_2
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 934
    const-string v1, "video"

    goto :goto_0

    .line 935
    :cond_3
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 936
    const-string v1, "product"

    goto :goto_0

    .line 937
    :cond_4
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 938
    const-string v1, "wall"

    goto :goto_0

    .line 940
    :cond_5
    const-string v0, "reply"

    goto :goto_1
.end method

.method public static isGrouped()Z
    .locals 3

    .prologue
    .line 969
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 623
    new-instance v0, Lcom/perm/kate/CommentsActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$15;-><init>(Lcom/perm/kate/CommentsActivity;)V

    .line 629
    invoke-virtual {v0}, Lcom/perm/kate/CommentsActivity$15;->start()V

    .line 630
    return-void
.end method

.method private reloadInThread()V
    .locals 1

    .prologue
    .line 610
    new-instance v0, Lcom/perm/kate/CommentsActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$14;-><init>(Lcom/perm/kate/CommentsActivity;)V

    .line 619
    invoke-virtual {v0}, Lcom/perm/kate/CommentsActivity$14;->start()V

    .line 620
    return-void
.end method

.method private removeRecentComments(J)V
    .locals 1
    .param p1, "spammer_id"    # J

    .prologue
    .line 481
    new-instance v0, Lcom/perm/kate/CommentsActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$11;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    .line 504
    invoke-virtual {v0}, Lcom/perm/kate/CommentsActivity$11;->start()V

    .line 506
    return-void
.end method

.method private reply(Lcom/perm/kate/CommentTag;)V
    .locals 12
    .param p1, "commentTag"    # Lcom/perm/kate/CommentTag;

    .prologue
    .line 827
    :try_start_0
    iget v7, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 828
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 829
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_0
    iget-wide v8, p1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    .line 834
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 835
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    iput-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    .line 848
    :cond_1
    :goto_0
    const-string v4, ""

    .line 849
    .local v4, "text":Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 850
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 851
    .local v6, "user_name":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 852
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 836
    .end local v4    # "text":Ljava/lang/String;
    .end local v6    # "user_name":Ljava/lang/String;
    :cond_3
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    if-eqz v7, :cond_1

    .line 837
    iget-object v7, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v2, v7, Lcom/perm/kate/api/Comment;->from_id:J

    .line 838
    .local v2, "from_id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_4

    .line 839
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v7, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 840
    .local v1, "from_user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_1

    .line 841
    iget-object v7, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    iput-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 867
    .end local v1    # "from_user":Lcom/perm/kate/api/User;
    .end local v2    # "from_id":J
    :catch_0
    move-exception v5

    .line 868
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 869
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 871
    .end local v5    # "th":Ljava/lang/Throwable;
    :goto_2
    return-void

    .line 843
    .restart local v2    # "from_id":J
    :cond_4
    :try_start_1
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v8, -0x1

    mul-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 844
    .local v0, "from_group":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_1

    .line 845
    iget-object v7, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iput-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    goto :goto_0

    .line 854
    .end local v0    # "from_group":Lcom/perm/kate/api/Group;
    .end local v2    # "from_id":J
    .restart local v4    # "text":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 855
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 859
    :goto_3
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 860
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    new-instance v8, Lcom/perm/kate/CommentsActivity$24;

    invoke-direct {v8, p0}, Lcom/perm/kate/CommentsActivity$24;-><init>(Lcom/perm/kate/CommentsActivity;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v7, v8, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 858
    :cond_6
    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private replyToWho(J)V
    .locals 5
    .param p1, "reply_to_cid"    # J

    .prologue
    .line 918
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 919
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 920
    const-string v1, "comment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 921
    const-string v1, "content_id"

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 922
    const-string v1, "content_owner_id"

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 923
    const-string v1, "content_type"

    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 925
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread(Z)V

    .line 510
    return-void
.end method

.method private requeryOnUiThread(Z)V
    .locals 1
    .param p1, "scroll_to_end"    # Z

    .prologue
    .line 513
    new-instance v0, Lcom/perm/kate/CommentsActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/CommentsActivity$12;-><init>(Lcom/perm/kate/CommentsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 522
    return-void
.end method

.method private scrollToEnd()V
    .locals 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 607
    return-void
.end method

.method private send(Ljava/lang/Integer;)V
    .locals 9
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, 0x1

    .line 756
    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, "text":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 758
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0702df

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 781
    :goto_0
    return-void

    .line 761
    :cond_0
    iget v5, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 762
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 763
    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 764
    .local v1, "reply_to_cid2":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 765
    .local v2, "reply_to_user_name2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[post"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 762
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 767
    .end local v1    # "reply_to_cid2":Ljava/lang/String;
    .end local v2    # "reply_to_user_name2":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[post"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 769
    .end local v0    # "i":I
    :cond_2
    move-object v4, v3

    .line 770
    .local v4, "text2":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/perm/kate/CommentsActivity;->enableFieldAndButtonsInUI(Z)V

    .line 771
    invoke-virtual {p0, v8}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 772
    new-instance v5, Lcom/perm/kate/CommentsActivity$20;

    invoke-direct {v5, p0, v4, p1}, Lcom/perm/kate/CommentsActivity$20;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    invoke-virtual {v5}, Lcom/perm/kate/CommentsActivity$20;->start()V

    goto/16 :goto_0
.end method

.method private sendToFriend(J)V
    .locals 5
    .param p1, "reply_to_cid"    # J

    .prologue
    .line 953
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->getLink(J)Ljava/lang/String;

    move-result-object v1

    .line 954
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 955
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 956
    const-string v2, "com.perm.kate.only_members"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    const-string v2, "com.perm.kate.new_message"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 958
    const-string v2, "shared_text"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 959
    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 960
    return-void
.end method

.method private static setGrouped(Z)V
    .locals 2
    .param p0, "grouped"    # Z

    .prologue
    .line 965
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    return-void
.end method

.method private showLikes(J)V
    .locals 7
    .param p1, "commentId"    # J

    .prologue
    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const-string v2, "com.perm.kate.item_id"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 360
    const-string v2, "com.perm.kate.owner_id"

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 363
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 364
    const-string v1, "topic_comment"

    .line 373
    .local v1, "item_type":Ljava/lang/String;
    :goto_0
    const-string v2, "com.perm.kate.item_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0, v0}, Lcom/perm/kate/CommentsActivity;->startActivity(Landroid/content/Intent;)V

    .line 376
    return-void

    .line 365
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_0
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-nez v2, :cond_1

    .line 366
    const-string v1, "photo_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 367
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 368
    const-string v1, "video_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_2
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 370
    const-string v1, "market_comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0

    .line 372
    .end local v1    # "item_type":Ljava/lang/String;
    :cond_3
    const-string v1, "comment"

    .restart local v1    # "item_type":Ljava/lang/String;
    goto :goto_0
.end method

.method private showMyStickersActivity()V
    .locals 2

    .prologue
    .line 907
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 908
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 909
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/CommentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 910
    return-void
.end method

.method private showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "reply_to_cid"    # Ljava/lang/String;
    .param p2, "reply_to_user_name"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const-string v3, "com.perm.kate.pid"

    iget-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v3, "com.perm.kate.owner_id"

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v3, "com.perm.kate.comment_type"

    iget v4, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    const-string v3, "com.perm.kate.reply_to_cid"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "com.perm.kate.reply_to_user_name"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "text":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 207
    .local v2, "user_name":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 208
    goto :goto_0

    .line 209
    .end local v2    # "user_name":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_1
    const-string v3, "text"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget v3, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 213
    const-string v3, "com.perm.kate.replyCids"

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 214
    const-string v3, "com.perm.kate.replyUsers"

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 216
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/CommentsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 217
    return-void
.end method


# virtual methods
.method confirmRemoveComment(Ljava/lang/Long;J)V
    .locals 6
    .param p1, "commentId"    # Ljava/lang/Long;
    .param p2, "spammer_id"    # J

    .prologue
    .line 379
    new-instance v2, Lcom/perm/kate/CommentsActivity$6;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/perm/kate/CommentsActivity$6;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;J)V

    .line 385
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070037

    .line 386
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 387
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 388
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 389
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 390
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 391
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 392
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 579
    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 580
    const/16 v1, 0x38

    const v2, 0x7f07018b

    invoke-interface {p1, v4, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 581
    const v1, 0x7f0700c3

    invoke-interface {p1, v4, v5, v6, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 582
    .local v0, "x":Landroid/view/MenuItem;
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 583
    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 584
    return v5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 228
    if-nez p1, :cond_0

    .line 229
    if-ne p2, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->clearEditText()V

    .line 233
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    .line 236
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 237
    if-ne p2, v1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V

    .line 245
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v0}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages()V

    .line 248
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v2, 0x7f030044

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->setContentView(I)V

    .line 70
    const v2, 0x7f0701d2

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->setHeaderTitle(I)V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->setupMenuButton()V

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->setupRefreshButton()V

    .line 73
    const v2, 0x7f0e0079

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 74
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "com.perm.kate.current_owner_id"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    .line 76
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "com.perm.kate.current_photo_pid"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    .line 77
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "com.perm.kate.comment_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    .line 78
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "last_page"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    .line 80
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "can_post"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/CommentsActivity;->can_post:Z

    .line 82
    iget-boolean v2, p0, Lcom/perm/kate/CommentsActivity;->can_post:Z

    if-nez v2, :cond_0

    .line 83
    const v2, 0x7f0e00e8

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->checkLastPageSupport()V

    .line 88
    new-instance v2, Lcom/perm/kate/CommentsActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/CommentsActivity$1;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v2, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    .line 94
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

    invoke-virtual {v2, v4}, Lcom/perm/kate/data/PageCommentList;->addEventsListener(Lcom/perm/kate/data/NotifyObject$EventsListener;)V

    .line 95
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-boolean v4, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    iput-boolean v4, v2, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->displayData()V

    .line 101
    :try_start_0
    iget-boolean v2, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    if-nez v2, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->displayFromCache()V

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const v2, 0x7f0e00ec

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/CommentsActivity;->sendButton:Landroid/widget/ImageButton;

    .line 110
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->sendButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->sendClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v2, 0x7f0e00ea

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->addAttachmentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v2, 0x7f0e00eb

    invoke-virtual {p0, v2}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    .line 113
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v4, 0x7f0a00cc

    if-ne v2, v4, :cond_2

    .line 114
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    const v4, 0x7f0201e9

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 115
    :cond_2
    new-instance v2, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v2}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/CommentsActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 116
    iget v2, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_3

    .line 117
    .local v1, "show_stickers":Z
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const v3, 0x7f0e00e9

    invoke-virtual {p0, v3}, Lcom/perm/kate/CommentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/CommentsActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v2, p0, v3, v4, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 118
    iget-object v2, p0, Lcom/perm/kate/CommentsActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 119
    return-void

    .line 104
    .end local v1    # "show_stickers":Z
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/CommentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v1, v3

    .line 116
    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->Destroy()V

    .line 698
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 699
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 589
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 602
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 591
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V

    goto :goto_1

    .line 594
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->scrollToEnd()V

    goto :goto_1

    .line 597
    :sswitch_2
    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    if-nez v1, :cond_0

    :goto_2
    iput-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    .line 598
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    invoke-static {v0}, Lcom/perm/kate/CommentsActivity;->setGrouped(Z)V

    .line 599
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    iput-boolean v1, v0, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    .line 600
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    goto :goto_0

    .line 597
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 589
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x17 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 568
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 570
    invoke-virtual {p0, p1}, Lcom/perm/kate/CommentsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 571
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    .line 915
    return-void
.end method

.method protected removeComment(Ljava/lang/Long;J)V
    .locals 2
    .param p1, "commentId"    # Ljava/lang/Long;
    .param p2, "spammer_id"    # J

    .prologue
    .line 395
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/CommentsActivity;->showProgressBar(Z)V

    .line 396
    new-instance v0, Lcom/perm/kate/CommentsActivity$7;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/CommentsActivity$7;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 413
    .local v0, "callback_delete":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/CommentsActivity$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/CommentsActivity$8;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 429
    invoke-virtual {v1}, Lcom/perm/kate/CommentsActivity$8;->start()V

    .line 431
    invoke-direct {p0, p2, p3}, Lcom/perm/kate/CommentsActivity;->confirmRemoveRecentComments(J)V

    .line 432
    return-void
.end method

.method setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 6
    .param p1, "comment_id"    # Ljava/lang/Long;
    .param p2, "comment"    # Lcom/perm/kate/api/Comment;
    .param p3, "like"    # Z

    .prologue
    .line 634
    new-instance v0, Lcom/perm/kate/CommentsActivity$16;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/CommentsActivity$16;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V

    .line 664
    .local v0, "callback_like":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/CommentsActivity$17;

    invoke-direct {v1, p0, p3, p1, v0}, Lcom/perm/kate/CommentsActivity$17;-><init>(Lcom/perm/kate/CommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 691
    invoke-virtual {v1}, Lcom/perm/kate/CommentsActivity$17;->start()V

    .line 692
    return-void
.end method
