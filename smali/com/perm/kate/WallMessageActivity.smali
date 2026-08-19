.class public Lcom/perm/kate/WallMessageActivity;
.super Lcom/perm/kate/BaseActivity;
.source "WallMessageActivity.java"


# static fields
.field private static pattern:Ljava/util/regex/Pattern;


# instance fields
.field account_id:J

.field ad:Z

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field author_OnClickListener:Landroid/view/View$OnClickListener;

.field cache_post:Z

.field private callback:Lcom/perm/kate/session/Callback;

.field can_remove:Z

.field private comments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field createdByClick:Landroid/view/View$OnClickListener;

.field dont_refresh:Z

.field groupCache:Lcom/perm/utils/GroupCache;

.field private groupRepostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field is_postponed:Z

.field is_suggested:Z

.field private iv_liked_marker:Landroid/widget/ImageView;

.field private iv_retweeted_marker:Landroid/widget/ImageView;

.field private likes_OnClickListerer:Landroid/view/View$OnClickListener;

.field private likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field original_owner_id:Ljava/lang/Long;

.field original_post_id:Ljava/lang/Long;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field retweetClick:Landroid/view/View$OnClickListener;

.field private retweets_OnClickListerer:Landroid/view/View$OnClickListener;

.field private retweets_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field show_original_post:Z

.field signerClick:Landroid/view/View$OnClickListener;

.field source:I

.field sourceClick:Landroid/view/View$OnClickListener;

.field tag:Lcom/perm/kate/NewsItemTag;

.field private textIsSelectable:Z

.field private tv_comments_count:Landroid/widget/TextView;

.field private tv_likes_count:Landroid/widget/TextView;

.field private tv_retweets_count:Landroid/widget/TextView;

.field private tv_wall_text:Landroid/widget/TextView;

.field userCache:Lcom/perm/utils/UserCache;

.field wall:Lcom/perm/kate/api/WallMessage;


# direct methods
.method public static synthetic $r8$lambda$hku09jS33I8DcokUko-VPi_xpoo(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    return-void
.end method

.method public static synthetic $r8$lambda$sWdrGPh7aPRDGaHz3QUf18xl2BA(Lcom/perm/kate/WallMessageActivity;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/perm/kate/WallMessageActivity;->lambda$addToFaves$0(Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(#\\w*)(@[\\w\\.]*)?"

    .line 764
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/WallMessageActivity;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    .line 63
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    const/4 v1, 0x1

    .line 68
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    .line 69
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    .line 70
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    .line 74
    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    .line 75
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 77
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    .line 78
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->ad:Z

    .line 393
    new-instance v0, Lcom/perm/kate/WallMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$3;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    .line 433
    new-instance v0, Lcom/perm/kate/WallMessageActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/WallMessageActivity$4;-><init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 463
    new-instance v0, Lcom/perm/kate/WallMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$5;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweetClick:Landroid/view/View$OnClickListener;

    .line 474
    new-instance v0, Lcom/perm/kate/WallMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$6;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->signerClick:Landroid/view/View$OnClickListener;

    .line 485
    new-instance v0, Lcom/perm/kate/WallMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$7;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->sourceClick:Landroid/view/View$OnClickListener;

    .line 492
    new-instance v0, Lcom/perm/kate/WallMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$8;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->createdByClick:Landroid/view/View$OnClickListener;

    .line 499
    new-instance v0, Lcom/perm/kate/WallMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$9;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 509
    new-instance v0, Lcom/perm/kate/WallMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$10;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 516
    new-instance v0, Lcom/perm/kate/WallMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$11;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 529
    new-instance v0, Lcom/perm/kate/WallMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$12;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 601
    new-instance v0, Lcom/perm/kate/WallMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$14;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->groupRepostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 737
    new-instance v0, Lcom/perm/kate/WallMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$15;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 746
    new-instance v0, Lcom/perm/kate/WallMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$16;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 754
    new-instance v0, Lcom/perm/kate/WallMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$17;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->getMissingUsersAndGroups()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallMessageActivity;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/WallMessageActivity;->showCloseCommentsDialog(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/WallMessageActivity;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/perm/kate/WallMessageActivity;->closeOpenComments(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/WallMessageActivity;JJ)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/WallMessageActivity;->refresh(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->checkOriginalPostIdsAndShow()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateLikeCount()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateLikedMarker()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/perm/kate/WallMessageActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateRetweetsMarker()V

    return-void
.end method

.method static synthetic access$800(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/perm/kate/WallMessageActivity;->startNewsSearch(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private addToFaves(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 853
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 854
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 855
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/WallMessageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/WallMessageActivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 865
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkOriginalPostIdsAndShow()V
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 873
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_1

    .line 874
    iget v1, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    if-nez v1, :cond_1

    .line 875
    iget-wide v1, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    .line 876
    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    .line 877
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 878
    invoke-direct {p0, v0, v0}, Lcom/perm/kate/WallMessageActivity;->showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private closeOpenComments(Z)V
    .locals 2

    .line 909
    new-instance v0, Lcom/perm/kate/WallMessageActivity$22;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/WallMessageActivity$22;-><init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;Z)V

    const/4 v1, 0x1

    .line 916
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 917
    new-instance v1, Lcom/perm/kate/WallMessageActivity$23;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/WallMessageActivity$23;-><init>(Lcom/perm/kate/WallMessageActivity;ZLcom/perm/kate/session/Callback;)V

    .line 926
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 768
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 769
    sget-object v1, Lcom/perm/kate/WallMessageActivity;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 770
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    new-instance v2, Lcom/perm/kate/GroupLink;

    invoke-direct {v2}, Lcom/perm/kate/GroupLink;-><init>()V

    .line 772
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    iput v3, v2, Lcom/perm/kate/GroupLink;->index:I

    const/4 v3, 0x0

    .line 773
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, v2, Lcom/perm/kate/GroupLink;->len:I

    const/4 v3, 0x1

    .line 774
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    const/4 v3, 0x2

    .line 775
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    .line 776
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/GroupLink;

    move-object v2, p1

    move-object v3, v1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 779
    invoke-static/range {v2 .. v9}, Lcom/perm/kate/WallMessageActivity;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;

    move-result-object v2

    .line 780
    iget v3, v1, Lcom/perm/kate/GroupLink;->index:I

    iget v1, v1, Lcom/perm/kate/GroupLink;->len:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/2addr v1, v3

    const/16 v4, 0x21

    move-object v5, p0

    :try_start_1
    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, p0

    .line 783
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 784
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;
    .locals 8

    if-nez p2, :cond_0

    .line 790
    new-instance p0, Landroid/text/style/URLSpan;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 791
    :cond_0
    new-instance p2, Lcom/perm/kate/WallMessageActivity$18;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/WallMessageActivity$18;-><init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/perm/kate/api/WallMessage;
    .locals 1

    .line 217
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 218
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/WallMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 223
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 221
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private displayCreatedBy(JLandroid/widget/TextView;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v0, p1, p2}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v0

    const/4 v1, 0x0

    .line 389
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f00b5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayData()V
    .locals 26
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v14, p0

    .line 230
    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0c0141

    .line 234
    invoke-static {v14, v1, v0, v2}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object v15

    const v1, 0x7f0901c6

    .line 235
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090220

    .line 236
    invoke-virtual {v14, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 237
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 240
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 241
    invoke-virtual {v2, v15, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/NewsItemTag;

    iput-object v2, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-nez v2, :cond_1

    return-void

    .line 247
    :cond_1
    iget-object v13, v2, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    if-nez v13, :cond_2

    return-void

    .line 250
    :cond_2
    invoke-static {v13}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 252
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 253
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 254
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v11, v2, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 255
    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 257
    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iput-object v9, v3, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 258
    iput-object v10, v3, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 259
    iget-object v4, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v5, v4, Lcom/perm/kate/api/WallMessage;->user_like:Z

    iput-boolean v5, v3, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 260
    iput-object v11, v3, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 261
    iput-object v2, v3, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    .line 262
    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 263
    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v5, v4, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    iput-object v5, v3, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 264
    iget v5, v4, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v12, 0x2

    if-ne v5, v12, :cond_3

    .line 265
    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->date:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 266
    :cond_3
    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v5, v4, Lcom/perm/kate/api/WallMessage;->signer_id:J

    iput-wide v5, v3, Lcom/perm/kate/NewsItemTag;->signer_id:J

    .line 267
    iget-object v5, v4, Lcom/perm/kate/api/WallMessage;->copyright_link:Ljava/lang/String;

    iput-object v5, v3, Lcom/perm/kate/NewsItemTag;->copyright_link:Ljava/lang/String;

    .line 270
    iget-wide v3, v4, Lcom/perm/kate/api/WallMessage;->from_id:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v16, 0x0

    const-string v8, ""

    cmp-long v5, v3, v16

    if-lez v5, :cond_5

    .line 271
    :try_start_1
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v5, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 274
    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v3, v8

    move-object v4, v3

    :goto_0
    move-object/from16 v18, v3

    goto :goto_1

    .line 277
    :cond_5
    iget-object v5, v14, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v5, v3, v4}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 279
    iget-object v4, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 280
    iget-object v3, v3, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    goto :goto_0

    :cond_6
    move-object v4, v8

    move-object/from16 v18, v4

    .line 283
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v14, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    move-object v3, v13

    move-object v12, v8

    move-object/from16 v8, v18

    invoke-static/range {v3 .. v8}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    const v3, 0x7f090186

    .line 286
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 287
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    :cond_7
    iget-boolean v2, v14, Lcom/perm/kate/WallMessageActivity;->ad:Z

    if-eqz v2, :cond_8

    .line 292
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v4, v3, Lcom/perm/kate/api/WallMessage;->statistics:Ljava/util/List;

    iput-object v4, v2, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    .line 293
    iget-object v4, v3, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iput-object v4, v2, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    .line 294
    iget-object v3, v3, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    iput-object v3, v2, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    .line 296
    iget-object v3, v13, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 297
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const v1, 0x7f0903a1

    .line 301
    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v14, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    const/4 v8, 0x0

    const/16 v7, 0x8

    if-eqz v11, :cond_9

    .line 302
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 303
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 310
    iget-boolean v1, v14, Lcom/perm/kate/WallMessageActivity;->ad:Z

    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v3, v2, Lcom/perm/kate/api/WallMessage;->statistics:Ljava/util/List;

    iget-object v4, v2, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iget-object v2, v2, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    move-object/from16 v19, v12

    move/from16 v20, v1

    move-object/from16 v21, v3

    move-object/from16 v22, v18

    move-object/from16 v23, v4

    move-object/from16 v24, v2

    invoke-static/range {v19 .. v24}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 312
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v4, v1, Lcom/perm/kate/api/WallMessage;->statistics:Ljava/util/List;

    iget-object v6, v1, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iget-object v11, v1, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v5, v18

    move-object/from16 v19, v10

    const/16 v10, 0x8

    move-object v7, v11

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 313
    iget-boolean v4, v14, Lcom/perm/kate/WallMessageActivity;->ad:Z

    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v5, v1, Lcom/perm/kate/api/WallMessage;->statistics:Ljava/util/List;

    iget-object v7, v1, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iget-object v11, v1, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v6, v18

    move-object v8, v11

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/WallMessageActivity;->createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {v14, v12}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 315
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2

    :cond_9
    move-object/from16 v19, v10

    const/16 v10, 0x8

    .line 319
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_2
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 323
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v6, v1, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 324
    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    iget-object v4, v14, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    iget-object v5, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    const/4 v7, 0x1

    move-object v1, v13

    move-object/from16 v8, p0

    invoke-static/range {v1 .. v8}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 327
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->date:J

    .line 328
    invoke-static {v14, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 329
    iget-object v2, v13, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    new-instance v11, Lcom/perm/kate/AttachmentsHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v14, Lcom/perm/kate/WallMessageActivity;->source:I

    move-object v1, v11

    move-object/from16 v2, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v11, v14, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const v0, 0x7f09004a

    .line 332
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/ViewGroup;

    const v0, 0x7f090158

    .line 333
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/ViewGroup;

    .line 334
    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v7, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_a

    .line 335
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v2, 0x0

    iget-object v3, v14, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v13, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    iget-object v8, v13, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const/16 v20, 0x0

    move-object v4, v13

    move-object v5, v9

    move-object/from16 v6, v19

    move-object/from16 v19, v8

    move-object/from16 v8, p0

    move-object v9, v0

    const/16 v0, 0x8

    move-object/from16 v10, v19

    const/4 v0, 0x2

    move-object v0, v13

    move-object/from16 v13, v20

    invoke-virtual/range {v1 .. v13}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    goto :goto_3

    :cond_a
    move-object v0, v13

    .line 338
    :goto_3
    iget-object v0, v0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->retweetClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902d1

    .line 341
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    iget-object v4, v14, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    iget-object v5, v1, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->track_code:Ljava/lang/String;

    move-wide/from16 v19, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v4

    move-object/from16 v23, v18

    move-object/from16 v24, v5

    move-object/from16 v25, v1

    invoke-static/range {v19 .. v25}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->signerClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0902db

    .line 345
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 346
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->copyright_name:Ljava/lang/String;

    invoke-static {v1, v0, v14}, Lcom/perm/kate/NewsCursorAdapter;->displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 347
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->sourceClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900e4

    .line 350
    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 351
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->created_by:J

    invoke-direct {v14, v1, v2, v0}, Lcom/perm/kate/WallMessageActivity;->displayCreatedBy(JLandroid/widget/TextView;)V

    .line 352
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->createdByClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallMessageActivity;->updateLikedMarker()V

    .line 356
    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->comment_count:J

    cmp-long v2, v0, v16

    if-lez v2, :cond_b

    .line 357
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    .line 360
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallMessageActivity;->updateRetweetsMarker()V

    .line 361
    iget-object v0, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v0, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, v14, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    const v0, 0x7f0f0273

    .line 363
    invoke-virtual {v14, v0}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const v0, 0x7f090192

    .line 364
    invoke-virtual {v14, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901d4

    .line 365
    invoke-virtual {v14, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    const v0, 0x7f090410

    .line 369
    invoke-virtual {v14, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 370
    iget-object v2, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v2, v2, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v2, :cond_d

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f090412

    .line 372
    invoke-virtual {v14, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 373
    iget-object v1, v14, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_d
    const/16 v1, 0x8

    .line 375
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 377
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .line 409
    new-instance v0, Lcom/perm/kate/WallMessageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayPostById(JJ)V
    .locals 7

    .line 197
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v5, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchWallPostFull(JJJ)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 198
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    .line 199
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 201
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 202
    new-instance v0, Lcom/perm/kate/WallMessageActivity$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/WallMessageActivity$2;-><init>(Lcom/perm/kate/WallMessageActivity;JJ)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayPostByNewsId(J)V
    .locals 3

    .line 211
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchWallPostFromNews(JJ)Lcom/perm/kate/api/WallMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 212
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    return-void
.end method

.method private displaySerializedPost(Lcom/perm/kate/api/WallMessage;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    const/4 p1, 0x1

    .line 159
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 160
    new-instance p1, Lcom/perm/kate/WallMessageActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/WallMessageActivity$1;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    .line 169
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private enableCopyPartText()V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 902
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 903
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    const v0, 0x7f0f0559

    .line 904
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method

.method private getCommentCanPost()V
    .locals 2

    .line 930
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v0, :cond_0

    return-void

    .line 932
    :cond_0
    new-instance v0, Lcom/perm/kate/WallMessageActivity$24;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/WallMessageActivity$24;-><init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 942
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 943
    new-instance v1, Lcom/perm/kate/WallMessageActivity$25;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/WallMessageActivity$25;-><init>(Lcom/perm/kate/WallMessageActivity;Lcom/perm/kate/session/Callback;)V

    .line 951
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getMissingUsersAndGroups()V
    .locals 6

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 414
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 415
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 417
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 419
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_2
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 423
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 424
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    neg-long v1, v1

    .line 425
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_4

    neg-long v1, v1

    .line 427
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_5

    neg-long v1, v1

    .line 429
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_5
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private synthetic lambda$addToFaves$0(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6

    .line 856
    new-instance v4, Lcom/perm/kate/WallMessageActivity$20;

    invoke-direct {v4, p0, p0}, Lcom/perm/kate/WallMessageActivity$20;-><init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V

    .line 864
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->faveAddPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private refresh(JJ)V
    .locals 2

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object p2, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p1, v0, p2, p0}, Lcom/perm/kate/session/Session;->getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 822
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 823
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 824
    new-instance v0, Lcom/perm/kate/WallMessageActivity$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/WallMessageActivity$19;-><init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 844
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 845
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 846
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 847
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 848
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 849
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCloseCommentsDialog(Z)V
    .locals 5

    .line 955
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    const v2, 0x7f0f0088

    .line 957
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Z

    aput-boolean p1, v2, v3

    .line 959
    new-instance v3, Lcom/perm/kate/WallMessageActivity$26;

    invoke-direct {v3, p0, p1}, Lcom/perm/kate/WallMessageActivity$26;-><init>(Lcom/perm/kate/WallMessageActivity;Z)V

    .line 967
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 968
    invoke-virtual {p1, v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f0398

    .line 969
    invoke-virtual {p1, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f01c5

    .line 970
    invoke-virtual {p1, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 971
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 972
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 973
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 885
    iput-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 886
    invoke-static {v0, v1, p1, p1, p0}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 888
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 889
    new-instance v0, Lcom/perm/kate/WallMessageActivity$21;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/WallMessageActivity$21;-><init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static startNewsSearch(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V
    .locals 3

    .line 810
    iget-object v0, p1, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/SearchWallActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 812
    iget-object v2, p1, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.domain"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 814
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.perm.kate.search_news"

    .line 815
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    :goto_0
    iget-object p1, p1, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    const-string v1, "com.perm.kate.hashtag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateLikeCount()V
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v0, :cond_0

    return-void

    .line 550
    :cond_0
    iget-boolean v1, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-eqz v1, :cond_1

    .line 551
    iget v2, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    goto :goto_0

    .line 553
    :cond_1
    iget v2, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    :goto_0
    xor-int/lit8 v1, v1, 0x1

    .line 554
    iput-boolean v1, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    return-void
.end method

.method private updateLikedMarker()V
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 559
    iget v0, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    if-lez v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v1, v1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result v1

    goto :goto_1

    :cond_1
    const v1, -0x444445

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    return-void
.end method

.method private updateRetweetsMarker()V
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 570
    iget v0, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    if-lez v0, :cond_0

    .line 571
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v1, v1, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result v1

    goto :goto_1

    :cond_1
    const v1, -0x444445

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6

    .line 643
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 645
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v2, :cond_3

    .line 646
    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x23

    const/16 v2, 0x38d

    const v3, 0x7f0f02bf

    .line 647
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const/16 v2, 0x3e9

    const v3, 0x7f0f022c

    .line 649
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    const/16 v0, 0x8

    const/16 v2, 0x3eb

    const v3, 0x7f0f05a2

    .line 650
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x13

    const/16 v2, 0x3ed

    const v3, 0x7f0f05a3

    .line 651
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 653
    :cond_3
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    if-nez v0, :cond_4

    const/4 v0, 0x5

    const/16 v2, 0x3ee

    const v3, 0x7f0f01da

    .line 654
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    const/4 v0, 0x6

    const/16 v2, 0x3ef

    const v3, 0x7f0f00b2

    .line 655
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x7

    const/16 v2, 0x3f1

    const v3, 0x7f0f01db

    .line 656
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 659
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "post_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->canEdit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v0, :cond_5

    const/16 v0, 0xb

    const/16 v2, 0x3f2

    const v3, 0x7f0f01ec

    .line 661
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->canEdit(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v0, :cond_6

    const/16 v0, 0x28

    const/16 v2, 0x3fc

    const v3, 0x7f0f0088

    .line 664
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 665
    :cond_6
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->can_remove:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v0, :cond_7

    const/16 v0, 0x16

    const/16 v2, 0x3f3

    const v3, 0x7f0f00ba

    .line 666
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 667
    :cond_7
    iget-wide v2, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v0, :cond_8

    const/16 v0, 0x17

    const/16 v2, 0x3f5

    const v3, 0x7f0f01d7

    .line 668
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 669
    :cond_8
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v0, :cond_9

    const/16 v0, 0x2a

    const/16 v2, 0x3f6

    const v3, 0x7f0f0186

    .line 670
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_9
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 581
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "group_id"

    .line 584
    invoke-virtual {p3, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 585
    new-instance v3, Lcom/perm/utils/RepostHelper;

    iget-object p3, p0, Lcom/perm/kate/WallMessageActivity;->groupRepostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v3, p0, p3}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    iget-object p3, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, p3, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v6, p3, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-boolean v9, p0, Lcom/perm/kate/WallMessageActivity;->ad:Z

    invoke-virtual/range {v3 .. v9}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;Z)V

    :cond_0
    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    const/4 p1, 0x1

    .line 590
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 591
    new-instance p1, Lcom/perm/kate/WallMessageActivity$13;

    invoke-direct {p1, p0}, Lcom/perm/kate/WallMessageActivity$13;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    .line 596
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 84
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c013e

    .line 86
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f059e

    .line 87
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 88
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f09007e

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    const v0, 0x7f090071

    .line 91
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f09008f

    .line 92
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 93
    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f090382

    .line 99
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    const p1, 0x7f09035e

    .line 100
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    const p1, 0x7f0903d7

    .line 101
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    const p1, 0x7f090197

    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    const p1, 0x7f0901a1

    .line 103
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    .line 105
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "dont_refresh"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "is_suggested"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "cache_post"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "ad"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->ad:Z

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "post_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long p1, v5, v3

    if-eqz p1, :cond_1

    cmp-long p1, v7, v3

    if-eqz p1, :cond_1

    cmp-long p1, v7, v3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 124
    :goto_0
    iput p1, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 125
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/perm/kate/WallMessageActivity;->displayPostById(JJ)V

    .line 130
    :cond_1
    iget-wide v5, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    cmp-long p1, v5, v7

    if-eqz p1, :cond_2

    cmp-long p1, v7, v3

    if-gez p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->can_remove:Z

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "news_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const/4 p1, 0x3

    cmp-long v2, v0, v3

    if-eqz v2, :cond_4

    .line 135
    iput p1, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 136
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/WallMessageActivity;->displayPostByNewsId(J)V

    .line 139
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "post"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_5

    .line 142
    iput p1, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 143
    invoke-direct {p0, v0}, Lcom/perm/kate/WallMessageActivity;->displaySerializedPost(Lcom/perm/kate/api/WallMessage;)V

    .line 145
    :cond_5
    iget-boolean p1, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-eqz p1, :cond_6

    const p1, 0x7f0f02d3

    .line 146
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090192

    .line 147
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0901d4

    .line 148
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 151
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 638
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallMessageActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 405
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-eqz v0, :cond_10

    .line 678
    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 679
    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 680
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v3, 0x2

    const/4 v11, 0x1

    if-eq v0, v3, :cond_f

    const/16 v3, 0xb

    const/4 v4, 0x0

    if-eq v0, v3, :cond_c

    const/16 v3, 0x13

    if-eq v0, v3, :cond_b

    const/16 v3, 0x23

    if-eq v0, v3, :cond_a

    const/16 v3, 0x28

    if-eq v0, v3, :cond_9

    const/16 v3, 0x2a

    if-eq v0, v3, :cond_8

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_4

    const/16 v3, 0x16

    if-eq v0, v3, :cond_3

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 703
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->ad:Z

    if-nez v0, :cond_2

    .line 704
    new-instance v5, Lcom/perm/kate/ReportHelper;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v5, p0, v1, v0}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget v0, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/ReportHelper;->showReportPostDialog(JJZ)V

    goto :goto_1

    .line 706
    :cond_2
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->ad_data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ReportHelper;->showReportAdDialog(Ljava/lang/String;)V

    :goto_1
    return v11

    .line 700
    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/WallMessageActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 685
    :cond_4
    invoke-static {v1, v2, p0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return v11

    .line 697
    :cond_5
    invoke-static {v2, v1, p0}, Lcom/perm/kate/Helper;->copyPostLink(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return v11

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return v11

    .line 688
    :cond_7
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->enableCopyPartText()V

    return v11

    .line 726
    :cond_8
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/WallMessageActivity;->addToFaves(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 723
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->getCommentCanPost()V

    return v11

    .line 709
    :cond_a
    iput-boolean v11, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 710
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/WallMessageActivity;->showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 694
    :cond_b
    invoke-static {v1, v2, v11, p0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    return v11

    .line 713
    :cond_c
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 715
    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_d

    .line 716
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    move-object v3, v0

    .line 717
    :cond_d
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v7, v0, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-wide v12, v0, Lcom/perm/kate/NewsItemTag;->signer_id:J

    cmp-long v10, v12, v5

    if-lez v10, :cond_e

    const/4 v10, 0x1

    goto :goto_2

    :cond_e
    const/4 v10, 0x0

    :goto_2
    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->copyright_link:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v4, v7

    move v5, v8

    move v6, v9

    move v7, v10

    move-object v8, v0

    move-object v9, p0

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/perm/kate/WallFragment;->editPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZLjava/lang/String;Landroid/app/Activity;Lcom/perm/kate/BaseFragment;)V

    return v11

    .line 682
    :cond_f
    invoke-static {v1, v2, p0}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v11

    :catchall_0
    move-exception v0

    .line 731
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 732
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 734
    :cond_10
    :goto_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
