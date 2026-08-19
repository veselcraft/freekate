.class public Lcom/perm/kate/CommentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CommentsActivity.java"


# static fields
.field static grouped_pref_name:Ljava/lang/String; = "comments_grouped"


# instance fields
.field private account_id:J

.field private addAttachmentClick:Landroid/view/View$OnClickListener;

.field private callback_get_comment:Lcom/perm/kate/session/Callback;

.field private callback_last_page:Lcom/perm/kate/session/Callback;

.field private callback_refresh:Lcom/perm/kate/session/Callback;

.field private callback_reload:Lcom/perm/kate/session/Callback;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field can_post:Z

.field commentDatas:Ljava/util/ArrayList;

.field private comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

.field private comment_type:I

.field private content_id:J

.field private content_owner_id:J

.field editText:Landroid/widget/EditText;

.field is_grouped:Z

.field public is_new:Z

.field is_sorted:Z

.field is_sorted_by_date:Z

.field private last_page:Z

.field list:Lcom/perm/kate/data/PageCommentList;

.field private listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private lv_comment_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field page_size:I

.field private parent_comment_id:J

.field removed_posts:I

.field replyCids:Ljava/util/ArrayList;

.field replyUsers:Ljava/util/ArrayList;

.field reply_to_cid:Ljava/lang/String;

.field reply_to_user_name:Ljava/lang/String;

.field sendButton:Landroid/widget/ImageButton;

.field private sendClick:Landroid/view/View$OnClickListener;

.field private start_comment_id:Ljava/lang/Long;

.field stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

.field private stickerHintsView:Landroid/view/View;

.field private stickerHintsWindow:Landroid/widget/PopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 65
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    .line 75
    invoke-static {}, Lcom/perm/kate/CommentsActivity;->isGrouped()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    .line 83
    iput-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_sorted_by_date:Z

    .line 174
    new-instance v1, Lcom/perm/kate/CommentsActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/CommentsActivity$3;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

    .line 180
    new-instance v1, Lcom/perm/kate/CommentsActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/CommentsActivity$4;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    .line 206
    new-instance v1, Lcom/perm/kate/CommentsActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/CommentsActivity$5;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->callback_refresh:Lcom/perm/kate/session/Callback;

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    .line 575
    iput v0, p0, Lcom/perm/kate/CommentsActivity;->removed_posts:I

    .line 636
    new-instance v0, Lcom/perm/kate/CommentsActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$14;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/16 v0, 0x23

    .line 649
    iput v0, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    .line 884
    new-instance v0, Lcom/perm/kate/CommentsActivity$21;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$21;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_get_comment:Lcom/perm/kate/session/Callback;

    .line 964
    new-instance v0, Lcom/perm/kate/CommentsActivity$23;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$23;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    .line 987
    new-instance v0, Lcom/perm/kate/CommentsActivity$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$24;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->sendClick:Landroid/view/View$OnClickListener;

    .line 1041
    new-instance v0, Lcom/perm/kate/CommentsActivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$26;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->addAttachmentClick:Landroid/view/View$OnClickListener;

    .line 1053
    new-instance v0, Lcom/perm/kate/CommentsActivity$27;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CommentsActivity$27;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 1144
    new-instance v0, Lcom/perm/kate/CommentsActivity$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$30;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 1321
    new-instance v0, Lcom/perm/kate/CommentsActivity$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$31;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentsActivity;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->parent_comment_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/CommentsActivity;IJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/CommentsActivity;->downloadComments(IJLcom/perm/kate/session/Callback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->showLikes(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/CommentsActivity;JLcom/perm/kate/api/Comment;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/CommentsActivity;->editComment(JLcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/CommentsActivity;JJ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/CommentsActivity;->replyToWho(JJ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->copyLink(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->sendToFriend(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->removeRecentComments(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/CommentsActivity;)J
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/CommentListAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->scrollToEnd()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->displayContextMenu(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->checkStickerHints(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/CommentsActivity;J)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->showAllReplies(J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/CommentsActivity;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/perm/kate/CommentsActivity;->callback_reload:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/CommentsActivity;)Ljava/lang/Long;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/perm/kate/CommentsActivity;->start_comment_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->downloadCommentById()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->downloadLastPage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/perm/kate/CommentsActivity;->callback_refresh:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/api/Comment;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->downloadParentCommentById(Lcom/perm/kate/api/Comment;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/CommentsActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->send(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/CommentsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/perm/kate/CommentsActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/CommentsActivity;JJ)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/CommentsActivity;->refreshReplyInThread(JJ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->enableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->showMyStickersActivity()V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/CommentsActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->hideStickerHints()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/CommentsActivity;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/CommentsActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/CommentsActivity;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/CommentsActivity;)J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/perm/kate/CommentsActivity;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/CommentsActivity;Lcom/perm/kate/CommentTag;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->reply(Lcom/perm/kate/CommentTag;)V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 1169
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1171
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 1172
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1173
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 1174
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private checkLastPageSupport()V
    .locals 2

    .line 983
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Last page not supported for this comment type yet. See downloadLastPage() method."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private checkStickerHints(Ljava/lang/String;)V
    .locals 2

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/perm/kate/StickerHints;->getShowStickerHints()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1271
    :cond_0
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 1274
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    invoke-static {p1, v0, v1}, Lcom/perm/kate/StickerHints;->get(Ljava/lang/String;J)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1275
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 1276
    invoke-direct {p0, p1}, Lcom/perm/kate/CommentsActivity;->showStickerHints([I)V

    goto :goto_0

    .line 1278
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->hideStickerHints()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1280
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1281
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private clearEditText()V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 1165
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private confirmRemoveRecentComments(J)V
    .locals 6

    .line 532
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_2

    return-void

    .line 541
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 542
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 553
    :cond_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0047

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09009e

    .line 554
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/perm/kate/CommentsActivity$10;

    invoke-direct {v4, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$10;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f09009c

    .line 560
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/perm/kate/CommentsActivity$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$11;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0247

    .line 567
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 568
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f0086

    .line 569
    invoke-virtual {p1, p2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 571
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 572
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private copyLink(J)V
    .locals 0

    .line 1230
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->getLink(J)Ljava/lang/String;

    move-result-object p1

    .line 1231
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private createStickerHintsPopup()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1331
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsView:Landroid/view/View;

    const v1, 0x7f090114

    .line 1332
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1333
    new-instance v1, Lcom/perm/kate/smile/StickerAdapter;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v5, v4, [I

    invoke-direct {v1, v2, v3, v5}, Lcom/perm/kate/smile/StickerAdapter;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V

    iput-object v1, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 1334
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1336
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsView:Landroid/view/View;

    const-wide v2, 0x4052c00000000000L    # 75.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v0, v1, v3, v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/CommentTag;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    return-void

    .line 315
    :cond_0
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 316
    iget-wide v3, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-wide v11, v1, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    cmp-long v3, v9, v11

    if-eqz v3, :cond_2

    cmp-long v3, v11, v6

    if-ltz v3, :cond_2

    iget v3, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eq v3, v5, :cond_2

    iget-wide v9, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v3, v9, v6

    if-gez v3, :cond_1

    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v9, v9

    .line 318
    invoke-virtual {v3, v2, v9, v10}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 320
    :goto_1
    iget-object v9, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    if-eqz v9, :cond_3

    iget-boolean v9, v9, Lcom/perm/kate/api/Comment;->deleted:Z

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    .line 321
    :cond_3
    iget-object v9, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    invoke-static {v9, v8}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    .line 322
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 324
    iget-boolean v11, v1, Lcom/perm/kate/CommentsActivity;->can_post:Z

    const/4 v12, 0x2

    const/4 v13, 0x5

    if-eqz v11, :cond_5

    .line 325
    iget v11, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eq v11, v8, :cond_4

    if-eq v11, v5, :cond_4

    if-eqz v11, :cond_4

    if-eq v11, v12, :cond_4

    if-ne v11, v13, :cond_5

    .line 326
    :cond_4
    new-instance v11, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f029e

    invoke-direct {v11, v14, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v11, 0x10

    const v14, 0x7f0f01db

    if-eqz v4, :cond_6

    .line 328
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v2, v14, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v9

    goto/16 :goto_4

    .line 330
    :cond_6
    iget v4, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eq v4, v8, :cond_7

    if-eq v4, v5, :cond_7

    if-eqz v4, :cond_7

    if-eq v4, v12, :cond_7

    if-ne v4, v13, :cond_9

    .line 332
    :cond_7
    iget-boolean v4, v0, Lcom/perm/kate/CommentTag;->like:Z

    if-nez v4, :cond_8

    .line 333
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v15, 0x7f0f012a

    invoke-direct {v4, v15, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 335
    :cond_8
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v15, 0x7f0f0129

    const/4 v13, 0x6

    invoke-direct {v4, v15, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_9
    :goto_2
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f05a2

    const/4 v15, 0x7

    invoke-direct {v4, v13, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f023a

    const/16 v15, 0x11

    invoke-direct {v4, v13, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    iget v4, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-ne v4, v8, :cond_a

    .line 340
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f0411

    const/16 v15, 0x12

    invoke-direct {v4, v13, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_a
    iget-object v4, v0, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v14, v4, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    cmp-long v4, v14, v6

    if-lez v4, :cond_b

    .line 342
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f0439

    const/16 v15, 0xf

    invoke-direct {v4, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 344
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f0319

    invoke-direct {v4, v14, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_c
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f00b2

    const/4 v15, 0x3

    invoke-direct {v4, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v4, v0, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 347
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f01da

    const/16 v15, 0x13

    invoke-direct {v4, v14, v15}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_d
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v13, 0x7f0f01db

    invoke-direct {v4, v13, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    iget-wide v13, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    iget v4, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-ne v4, v5, :cond_e

    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v13

    neg-long v13, v13

    invoke-virtual {v4, v2, v13, v14}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_e
    iget-wide v13, v1, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    cmp-long v4, v13, v6

    move-object v11, v9

    if-gez v4, :cond_f

    iget-wide v8, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v15, v13, v8

    if-nez v15, :cond_f

    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v13

    neg-long v13, v13

    invoke-virtual {v8, v2, v13, v14}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v8

    if-nez v8, :cond_11

    :cond_f
    iget-wide v8, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v13, v8, v6

    if-gez v13, :cond_12

    sget-object v13, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    neg-long v8, v8

    .line 354
    invoke-virtual {v13, v2, v8, v9}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_3

    :cond_10
    move-object v11, v9

    .line 356
    :cond_11
    :goto_3
    new-instance v8, Lcom/perm/kate/MenuItemDetails;

    const v9, 0x7f0f01ec

    const/16 v13, 0x8

    invoke-direct {v8, v9, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_12
    iget v8, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-eq v8, v5, :cond_13

    iget-wide v8, v1, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    cmp-long v5, v8, v6

    if-gez v5, :cond_14

    :cond_13
    iget-wide v5, v0, Lcom/perm/kate/CommentTag;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    .line 358
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v6

    neg-long v6, v6

    invoke-virtual {v5, v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 359
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f0f02f2

    const/16 v6, 0x9

    invoke-direct {v2, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v3, :cond_15

    .line 361
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f00ba

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_15
    iget v2, v1, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_16

    if-eqz v2, :cond_16

    if-eq v2, v12, :cond_16

    const/4 v3, 0x5

    if-ne v2, v3, :cond_17

    :cond_16
    iget-wide v2, v1, Lcom/perm/kate/CommentsActivity;->account_id:J

    iget-wide v5, v0, Lcom/perm/kate/CommentTag;->user_id:J

    cmp-long v7, v2, v5

    if-eqz v7, :cond_17

    .line 364
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f01d7

    const/16 v5, 0xd

    invoke-direct {v2, v3, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_17
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_18

    return-void

    .line 369
    :cond_18
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    invoke-static {v10}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v5, Lcom/perm/kate/CommentsActivity$6;

    invoke-direct {v5, v1, v10, v0, v11}, Lcom/perm/kate/CommentsActivity$6;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/util/ArrayList;Lcom/perm/kate/CommentTag;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x1

    .line 431
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 432
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 434
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 435
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private displayData()V
    .locals 2

    .line 229
    :try_start_0
    new-instance v0, Lcom/perm/kate/CommentListAdapter;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/perm/kate/CommentListAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    .line 230
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayFromCache()V
    .locals 11

    .line 165
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 166
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    iget v5, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v9, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/db/DataHelper;->fetchCommentList(JJJJ)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "ca_fetchCommentList"

    const/4 v4, 0x0

    .line 167
    invoke-static {v0, v1, v3, v4}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 168
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    invoke-virtual {v0, v2}, Lcom/perm/kate/data/PageCommentList;->initFromCache(Ljava/util/ArrayList;)V

    .line 169
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return-void
.end method

.method private downloadCommentById()V
    .locals 9

    .line 880
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 881
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->start_comment_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/perm/kate/CommentsActivity;->callback_get_comment:Lcom/perm/kate/session/Callback;

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getWallComment(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private downloadComments(IJLcom/perm/kate/session/Callback;)V
    .locals 14

    move-object v13, p0

    .line 652
    iget v0, v13, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 653
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    move-wide/from16 v7, p2

    move-object/from16 v9, p4

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 655
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getPhotoComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 657
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    move v3, p1

    move-object/from16 v5, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getNoteComments(Ljava/lang/Long;Ljava/lang/Long;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 659
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    iget-wide v3, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v5, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v6, 0x0

    move v4, p1

    move-object/from16 v7, p4

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/session/Session;->getVideoComments(JLjava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 661
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v3, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, p1

    move-object/from16 v11, p4

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 663
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, v13, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v13, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v4, v13, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v5, 0x0

    move v3, p1

    move-object/from16 v6, p4

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getMarketComments(Ljava/lang/Long;Ljava/lang/Long;IILjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private downloadLastPage()V
    .locals 15

    .line 956
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 958
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v5, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    move-object v14, p0

    invoke-virtual/range {v2 .. v14}, Lcom/perm/kate/session/Session;->getGroupTopicComments(JJIIIIZLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 959
    :cond_0
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 961
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    iget v6, p0, Lcom/perm/kate/CommentsActivity;->page_size:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    iget-object v11, p0, Lcom/perm/kate/CommentsActivity;->callback_last_page:Lcom/perm/kate/session/Callback;

    move-object v12, p0

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->getWallComments(Ljava/lang/Long;Ljava/lang/Long;IIZLjava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method private downloadParentCommentById(Lcom/perm/kate/api/Comment;)V
    .locals 7

    .line 915
    new-instance v5, Lcom/perm/kate/CommentsActivity$22;

    invoke-direct {v5, p0, p0, p1}, Lcom/perm/kate/CommentsActivity$22;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Lcom/perm/kate/api/Comment;)V

    .line 950
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    iget-wide v3, p1, Lcom/perm/kate/api/Comment;->parent_stack:J

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getWallComment(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private editComment(JLcom/perm/kate/api/Comment;)V
    .locals 3

    .line 867
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.edit"

    const/4 v2, 0x1

    .line 868
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.cid"

    .line 869
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 870
    iget-wide p1, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.pid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 872
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 874
    iget p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const-string p2, "com.perm.kate.comment_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.perm.kate.comment"

    .line 875
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 876
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private enableFieldAndButtonsInUI(Z)V
    .locals 1

    .line 1089
    new-instance v0, Lcom/perm/kate/CommentsActivity$28;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/CommentsActivity$28;-><init>(Lcom/perm/kate/CommentsActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getCorrectOwnerId()J
    .locals 2

    .line 269
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 270
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    neg-long v0, v0

    return-wide v0

    .line 271
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    return-wide v0
.end method

.method private getLink(J)Ljava/lang/String;
    .locals 4

    .line 1211
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

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

    .line 1225
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private hideStickerHints()V
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public static isGrouped()Z
    .locals 3

    .line 1251
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

    .line 751
    new-instance v0, Lcom/perm/kate/CommentsActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$16;-><init>(Lcom/perm/kate/CommentsActivity;)V

    .line 757
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshReplyInThread(JJ)V
    .locals 9

    .line 762
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 764
    :cond_0
    new-instance v8, Lcom/perm/kate/CommentsActivity$17;

    invoke-direct {v8, p0, p0, p3, p4}, Lcom/perm/kate/CommentsActivity$17;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;J)V

    .line 782
    new-instance v0, Lcom/perm/kate/CommentsActivity$18;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/perm/kate/CommentsActivity$18;-><init>(Lcom/perm/kate/CommentsActivity;JJLcom/perm/kate/session/Callback;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reloadInThread()V
    .locals 1

    .line 736
    new-instance v0, Lcom/perm/kate/CommentsActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$15;-><init>(Lcom/perm/kate/CommentsActivity;)V

    .line 747
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private removeRecentComments(J)V
    .locals 1

    .line 577
    new-instance v0, Lcom/perm/kate/CommentsActivity$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/CommentsActivity$12;-><init>(Lcom/perm/kate/CommentsActivity;J)V

    .line 600
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reply(Lcom/perm/kate/CommentTag;)V
    .locals 4

    .line 1098
    :try_start_0
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1101
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1104
    :cond_0
    iget-wide v0, p1, Lcom/perm/kate/CommentTag;->comment_id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    .line 1105
    iget-object v0, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1106
    iget-object p1, p1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    goto :goto_0

    .line 1107
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    if-eqz p1, :cond_3

    .line 1108
    iget-wide v0, p1, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 1110
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1112
    iget-object p1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    goto :goto_0

    .line 1114
    :cond_2
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v2, -0x1

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1116
    iget-object p1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    :cond_3
    :goto_0
    const-string p1, ""

    .line 1120
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1121
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, ", "

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1122
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1125
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1126
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_2

    .line 1129
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1131
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/perm/kate/CommentsActivity$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$29;-><init>(Lcom/perm/kate/CommentsActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1140
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private replyToWho(JJ)V
    .locals 2

    .line 1189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1190
    const-class v1, Lcom/perm/kate/CommentRepliesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "comment_id"

    .line 1191
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    iget-wide p1, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const-string v1, "content_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1193
    iget-wide p1, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-string v1, "content_owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1194
    iget p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const-string p2, "content_type"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "parent_comment_id"

    .line 1195
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 1

    const/4 v0, 0x0

    .line 605
    invoke-direct {p0, v0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread(Z)V

    return-void
.end method

.method private requeryOnUiThread(Z)V
    .locals 1

    .line 609
    new-instance v0, Lcom/perm/kate/CommentsActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/CommentsActivity$13;-><init>(Lcom/perm/kate/CommentsActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scrollToEnd()V
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->commentDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private send(Ljava/lang/Integer;)V
    .locals 10

    .line 1016
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    iget v1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 1018
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "],"

    const-string v5, "|"

    const-string v6, "[post"

    const-string v7, ","

    if-ge v1, v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1020
    iget-object v8, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1021
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v7, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/perm/kate/CommentsActivity;->reply_to_cid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/perm/kate/CommentsActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    :cond_1
    invoke-direct {p0, v2}, Lcom/perm/kate/CommentsActivity;->enableFieldAndButtonsInUI(Z)V

    const/4 v1, 0x1

    .line 1027
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1028
    new-instance v1, Lcom/perm/kate/CommentsActivity$25;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/CommentsActivity$25;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private sendToFriend(J)V
    .locals 2

    .line 1235
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/CommentsActivity;->getLink(J)Ljava/lang/String;

    move-result-object p1

    .line 1236
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 1237
    const-class v0, Lcom/perm/kate/MembersActivity;

    invoke-virtual {p2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v0, "com.perm.kate.only_members"

    const/4 v1, 0x0

    .line 1238
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.perm.kate.new_message"

    const/4 v1, 0x1

    .line 1239
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "shared_text"

    .line 1240
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1241
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static setGrouped(Z)V
    .locals 2

    .line 1247
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/CommentsActivity;->grouped_pref_name:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showAllReplies(J)V
    .locals 4

    .line 1200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1201
    const-class v1, Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1202
    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-string v3, "com.perm.kate.current_owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1203
    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const-string v3, "com.perm.kate.current_photo_pid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1204
    iget v1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const-string v2, "com.perm.kate.comment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "parent_comment_id"

    .line 1205
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showLikes(J)V
    .locals 2

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 441
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_id"

    .line 443
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 444
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide p1

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 447
    iget p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

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

    .line 457
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showMyStickersActivity()V
    .locals 2

    .line 1178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1179
    const-class v1, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 1180
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showNewCommentActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 245
    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->getCorrectOwnerId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    iget v1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const-string v2, "com.perm.kate.comment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.perm.kate.reply_to_cid"

    .line 250
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.reply_to_user_name"

    .line 251
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const-string v4, ", "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string p2, "text"

    .line 259
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    .line 261
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    const-string p2, "com.perm.kate.replyCids"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 262
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    const-string p2, "com.perm.kate.replyUsers"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_2
    const/4 p1, 0x0

    .line 264
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showStickerHints([I)V
    .locals 5

    .line 1300
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1304
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_fullscreen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    .line 1307
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->createStickerHintsPopup()V

    .line 1308
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1309
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    const-wide v3, 0x405b800000000000L    # 110.0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1317
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    iput-object p1, v0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    .line 1318
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method confirmRemoveComment(Ljava/lang/Long;J)V
    .locals 1

    .line 463
    new-instance v0, Lcom/perm/kate/CommentsActivity$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/CommentsActivity$7;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;J)V

    .line 469
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 470
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 471
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 p3, 0x0

    .line 472
    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 474
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 475
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 681
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x38

    const/16 v2, 0x3e8

    const v3, 0x7f0f01ea

    .line 682
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 683
    iget-boolean v1, p0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const v1, 0x7f0f010c

    .line 684
    invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 685
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 686
    iget-boolean v4, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 687
    iget-boolean v4, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    xor-int/2addr v4, v3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    const v4, 0x7f0f0486

    .line 689
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 690
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 691
    iget-boolean v4, p0, Lcom/perm/kate/CommentsActivity;->is_sorted_by_date:Z

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 692
    iget-boolean v4, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    xor-int/2addr v4, v3

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_0
    const/4 v1, 0x2

    const v4, 0x7f0f0487

    .line 695
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 696
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 697
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 276
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_2

    .line 279
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 280
    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 281
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->clearEditText()V

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_0

    const-string v3, "comment_id"

    .line 285
    invoke-virtual {p3, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "parent_comment_id"

    .line 286
    invoke-virtual {p3, v5, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    move-wide v5, v3

    :goto_0
    cmp-long v7, v3, v1

    if-eqz v7, :cond_1

    cmp-long v7, v5, v1

    if-eqz v7, :cond_1

    .line 288
    iget-wide v7, p0, Lcom/perm/kate/CommentsActivity;->parent_comment_id:J

    cmp-long v9, v7, v1

    if-nez v9, :cond_1

    .line 289
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/perm/kate/CommentsActivity;->refreshReplyInThread(JJ)V

    goto :goto_1

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    :cond_2
    :goto_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_3

    .line 296
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V

    :cond_3
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 304
    sget p1, Lcom/perm/kate/smile/SmileKeyboard;->NO_PAGE:I

    if-eqz p3, :cond_4

    const-string p2, "index"

    .line 306
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 307
    :cond_4
    iget-object p2, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {p2, p1}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages(I)V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1341
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1342
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->hideStickerHints()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0048

    .line 90
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f022e

    .line 91
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 94
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    const p1, 0x7f09020d

    .line 95
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->lv_comment_list:Landroid/widget/ListView;

    .line 96
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.current_owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.current_photo_pid"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.comment_type"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "last_page"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "can_post"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->can_post:Z

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "parent_comment_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/perm/kate/CommentsActivity;->parent_comment_id:J

    .line 104
    iget p1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    if-ne p1, v4, :cond_0

    cmp-long p1, v5, v1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "start_comment_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->start_comment_id:Ljava/lang/Long;

    .line 107
    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->can_post:Z

    if-nez p1, :cond_1

    const p1, 0x7f090033

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->checkLastPageSupport()V

    .line 113
    new-instance p1, Lcom/perm/kate/CommentsActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/CommentsActivity$1;-><init>(Lcom/perm/kate/CommentsActivity;)V

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    .line 119
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->listChangeListener:Lcom/perm/kate/data/NotifyObject$EventsListener;

    invoke-virtual {p1, v0}, Lcom/perm/kate/data/NotifyObject;->addEventsListener(Lcom/perm/kate/data/NotifyObject$EventsListener;)V

    .line 120
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    iput-boolean v0, p1, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    .line 121
    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    iput-boolean v0, p1, Lcom/perm/kate/data/PageCommentList;->is_new:Z

    .line 124
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->displayData()V

    .line 128
    :try_start_0
    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->last_page:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_new:Z

    if-nez p1, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->displayFromCache()V

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const p1, 0x7f090082

    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->sendButton:Landroid/widget/ImageButton;

    .line 137
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->sendClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09005f

    .line 138
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->addAttachmentClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09011e

    .line 139
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    .line 140
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f1000df

    if-ne v0, v1, :cond_3

    const v0, 0x7f0800df

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    new-instance v0, Lcom/perm/kate/CommentsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentsActivity$2;-><init>(Lcom/perm/kate/CommentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 155
    iget v0, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    const v0, 0x7f0902d4

    .line 156
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/CommentsActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v0, v1, v3}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 157
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 161
    iget-wide v0, p0, Lcom/perm/kate/CommentsActivity;->account_id:J

    invoke-static {v0, v1, p0}, Lcom/perm/kate/StickerHints;->initIfRequired(JLandroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->comment_list_adapter:Lcom/perm/kate/CommentListAdapter;

    if-eqz v0, :cond_0

    .line 856
    invoke-virtual {v0}, Lcom/perm/kate/CommentListAdapter;->Destroy()V

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    const/4 v0, 0x0

    .line 859
    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsWindow:Landroid/widget/PopupWindow;

    .line 860
    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsView:Landroid/view/View;

    .line 861
    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintListener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 862
    iput-object v0, p0, Lcom/perm/kate/CommentsActivity;->stickerHintsAdapter:Lcom/perm/kate/smile/StickerAdapter;

    .line 863
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 704
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x17

    if-eq v0, v2, :cond_1

    const/16 v2, 0x38

    if-eq v0, v2, :cond_0

    .line 728
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->scrollToEnd()V

    return v1

    .line 706
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->reloadInThread()V

    return v1

    .line 723
    :cond_2
    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_sorted_by_date:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_sorted_by_date:Z

    .line 724
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iput-boolean p1, v0, Lcom/perm/kate/data/PageCommentList;->is_sorted_by_date:Z

    .line 725
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return v1

    .line 718
    :cond_3
    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_sorted:Z

    .line 719
    iget-object v0, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iput-boolean p1, v0, Lcom/perm/kate/data/PageCommentList;->is_sorted:Z

    .line 720
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return v1

    .line 712
    :cond_4
    iget-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    .line 713
    invoke-static {p1}, Lcom/perm/kate/CommentsActivity;->setGrouped(Z)V

    .line 714
    iget-object p1, p0, Lcom/perm/kate/CommentsActivity;->list:Lcom/perm/kate/data/PageCommentList;

    iget-boolean v0, p0, Lcom/perm/kate/CommentsActivity;->is_grouped:Z

    iput-boolean v0, p1, Lcom/perm/kate/data/PageCommentList;->is_grouped:Z

    .line 715
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->requeryOnUiThread()V

    return v1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 668
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 670
    invoke-virtual {p0, p1}, Lcom/perm/kate/CommentsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 671
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 1185
    invoke-direct {p0}, Lcom/perm/kate/CommentsActivity;->refreshInThread()V

    return-void
.end method

.method protected onSearchButton()V
    .locals 4

    .line 1256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1257
    const-class v1, Lcom/perm/kate/CommentsSearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1258
    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_owner_id:J

    const-string v3, "com.perm.kate.current_owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1259
    iget-wide v1, p0, Lcom/perm/kate/CommentsActivity;->content_id:J

    const-string v3, "com.perm.kate.current_photo_pid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1260
    iget v1, p0, Lcom/perm/kate/CommentsActivity;->comment_type:I

    const-string v2, "com.perm.kate.comment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1261
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected removeComment(Ljava/lang/Long;J)V
    .locals 2

    const/4 v0, 0x1

    .line 479
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 480
    new-instance v0, Lcom/perm/kate/CommentsActivity$8;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/CommentsActivity$8;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 509
    new-instance v1, Lcom/perm/kate/CommentsActivity$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/CommentsActivity$9;-><init>(Lcom/perm/kate/CommentsActivity;Ljava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 525
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 527
    invoke-direct {p0, p2, p3}, Lcom/perm/kate/CommentsActivity;->confirmRemoveRecentComments(J)V

    return-void
.end method

.method setLike(Ljava/lang/Long;Lcom/perm/kate/api/Comment;Z)V
    .locals 7

    .line 793
    new-instance v6, Lcom/perm/kate/CommentsActivity$19;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/CommentsActivity$19;-><init>(Lcom/perm/kate/CommentsActivity;Landroid/app/Activity;Ljava/lang/Long;ZLcom/perm/kate/api/Comment;)V

    .line 823
    new-instance p2, Lcom/perm/kate/CommentsActivity$20;

    invoke-direct {p2, p0, p3, p1, v6}, Lcom/perm/kate/CommentsActivity$20;-><init>(Lcom/perm/kate/CommentsActivity;ZLjava/lang/Long;Lcom/perm/kate/session/Callback;)V

    .line 850
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
