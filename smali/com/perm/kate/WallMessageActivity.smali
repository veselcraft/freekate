.class public Lcom/perm/kate/WallMessageActivity;
.super Lcom/perm/kate/BaseActivity;
.source "WallMessageActivity.java"


# static fields
.field private static pattern:Ljava/util/regex/Pattern;

.field private static pattern_string:Ljava/lang/String;


# instance fields
.field private _id:J

.field account_id:J

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field author_OnClickListener:Landroid/view/View$OnClickListener;

.field private btn_comments:Landroid/widget/ImageButton;

.field private btn_likes:Landroid/widget/ImageButton;

.field private btn_retweets:Landroid/widget/ImageButton;

.field cache_post:Z

.field private callback:Lcom/perm/kate/session/Callback;

.field can_remove:Z

.field private comments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

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

.field tag:Lcom/perm/kate/NewsItemTag;

.field private textIsSelectable:Z

.field private tv_comments_count:Landroid/widget/TextView;

.field private tv_likes_count:Landroid/widget/TextView;

.field private tv_retweets_count:Landroid/widget/TextView;

.field private tv_wall_text:Landroid/widget/TextView;

.field userCache:Lcom/perm/utils/UserCache;

.field wall:Lcom/perm/kate/api/WallMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 678
    const-string v0, "(#\\w*)(@\\w*)?"

    sput-object v0, Lcom/perm/kate/WallMessageActivity;->pattern_string:Ljava/lang/String;

    .line 679
    sget-object v0, Lcom/perm/kate/WallMessageActivity;->pattern_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/WallMessageActivity;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 58
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    .line 59
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    .line 63
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    .line 65
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    .line 66
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    .line 69
    iput-object v2, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    .line 70
    iput-object v2, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    .line 71
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 73
    iput-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    .line 346
    new-instance v0, Lcom/perm/kate/WallMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$4;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    .line 385
    new-instance v0, Lcom/perm/kate/WallMessageActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/WallMessageActivity$6;-><init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 415
    new-instance v0, Lcom/perm/kate/WallMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$7;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweetClick:Landroid/view/View$OnClickListener;

    .line 426
    new-instance v0, Lcom/perm/kate/WallMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$8;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->signerClick:Landroid/view/View$OnClickListener;

    .line 433
    new-instance v0, Lcom/perm/kate/WallMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$9;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lcom/perm/kate/WallMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$10;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/perm/kate/WallMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$11;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 463
    new-instance v0, Lcom/perm/kate/WallMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$12;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 535
    new-instance v0, Lcom/perm/kate/WallMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$14;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->groupRepostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 652
    new-instance v0, Lcom/perm/kate/WallMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$15;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 661
    new-instance v0, Lcom/perm/kate/WallMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$16;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 669
    new-instance v0, Lcom/perm/kate/WallMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$17;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallMessageActivity;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/WallMessageActivity;->refresh(JJ)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->getMissingUsersAndGroups()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->checkOriginalPostIdsAndShow()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateLikeCount()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateLikedMarker()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/WallMessageActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/WallMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallMessageActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->updateRetweetsMarker()V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Lcom/perm/kate/GroupLink;

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/perm/kate/WallMessageActivity;->startNewsSearch(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V

    return-void
.end method

.method private checkOriginalPostIdsAndShow()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 762
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v1, Lcom/perm/kate/api/WallMessage;->copy_history:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 766
    .local v0, "original_post":Lcom/perm/kate/api/WallMessage;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    if-nez v1, :cond_0

    .line 767
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    .line 768
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    .line 769
    iget-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    if-eqz v1, :cond_0

    .line 770
    invoke-direct {p0, v4, v4}, Lcom/perm/kate/WallMessageActivity;->showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V
    .locals 9
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clickable"    # Z

    .prologue
    .line 683
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/GroupLink;>;"
    sget-object v5, Lcom/perm/kate/WallMessageActivity;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 685
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 686
    new-instance v0, Lcom/perm/kate/GroupLink;

    invoke-direct {v0}, Lcom/perm/kate/GroupLink;-><init>()V

    .line 687
    .local v0, "gl":Lcom/perm/kate/GroupLink;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    iput v5, v0, Lcom/perm/kate/GroupLink;->index:I

    .line 688
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v0, Lcom/perm/kate/GroupLink;->len:I

    .line 689
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    .line 690
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    .line 691
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 697
    .end local v0    # "gl":Lcom/perm/kate/GroupLink;
    .end local v1    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/GroupLink;>;"
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    .line 698
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 699
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 701
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 693
    .restart local v1    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/GroupLink;>;"
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/GroupLink;

    .line 694
    .restart local v0    # "gl":Lcom/perm/kate/GroupLink;
    invoke-static {p1, v0, p2}, Lcom/perm/kate/WallMessageActivity;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Z)Landroid/text/style/ClickableSpan;

    move-result-object v3

    .line 695
    .local v3, "span":Landroid/text/style/ClickableSpan;
    iget v6, v0, Lcom/perm/kate/GroupLink;->index:I

    iget v7, v0, Lcom/perm/kate/GroupLink;->index:I

    iget v8, v0, Lcom/perm/kate/GroupLink;->len:I

    add-int/2addr v7, v8

    const/16 v8, 0x21

    invoke-virtual {p0, v3, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Z)Landroid/text/style/ClickableSpan;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gl"    # Lcom/perm/kate/GroupLink;
    .param p2, "clickable"    # Z

    .prologue
    .line 704
    if-nez p2, :cond_0

    .line 705
    new-instance v0, Landroid/text/style/URLSpan;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 706
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/perm/kate/WallMessageActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallMessageActivity$18;-><init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V

    goto :goto_0
.end method

.method public static deserialize([B)Lcom/perm/kate/api/WallMessage;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 205
    if-nez p0, :cond_0

    move-object v1, v4

    .line 217
    :goto_0
    return-object v1

    .line 208
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 210
    .local v3, "oin":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .local v1, "clone":Lcom/perm/kate/api/WallMessage;
    goto :goto_0

    .line 212
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "clone":Lcom/perm/kate/api/WallMessage;
    .end local v3    # "oin":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    move-object v1, v4

    .line 217
    goto :goto_0

    .line 214
    :catch_1
    move-exception v2

    .line 215
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private displayData()V
    .locals 48

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v6, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v18

    .line 225
    .local v18, "big_photos":Z
    const/4 v6, 0x0

    const v7, 0x7f030121

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v6, v1, v7}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object v45

    .line 226
    .local v45, "vi":Landroid/view/View;
    const v6, 0x7f0e0369

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 227
    .local v35, "ll_author_date_region":Landroid/view/View;
    const v6, 0x7f0e01a2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/view/ViewGroup;

    .line 228
    .local v38, "lv_wall_message_list":Landroid/view/ViewGroup;
    new-instance v39, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object/from16 v0, v39

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v39, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v38 .. v38}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 232
    move-object/from16 v0, v38

    move-object/from16 v1, v45

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    invoke-virtual/range {v45 .. v45}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    .line 236
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-eqz v6, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v6, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 239
    .local v4, "h":Lcom/perm/kate/ViewHolder;
    if-eqz v4, :cond_0

    .line 241
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v40

    .line 244
    .local v40, "post_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    .line 245
    .local v24, "owner_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v0, v6, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 246
    .local v42, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    .line 248
    .local v43, "uid":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, v40

    iput-object v0, v6, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 249
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, v24

    iput-object v0, v6, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 250
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v7, v7, Lcom/perm/kate/api/WallMessage;->user_like:Z

    iput-boolean v7, v6, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 251
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, v42

    iput-object v0, v6, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 252
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, v43

    iput-object v0, v6, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    .line 253
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v12, v7, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 254
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v7, v7, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    iput-object v7, v6, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v6, v6, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v12, v7, Lcom/perm/kate/api/WallMessage;->date:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v12, v7, Lcom/perm/kate/api/WallMessage;->signer_id:J

    iput-wide v12, v6, Lcom/perm/kate/NewsItemTag;->signer_id:J

    .line 259
    const-string v5, ""

    .local v5, "display_name":Ljava/lang/String;
    const-string v9, ""

    .line 260
    .local v9, "url_from_user":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_3

    .line 261
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v12, v7, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-virtual {v6, v12, v13}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v44

    .line 262
    .local v44, "user":Lcom/perm/kate/api/User;
    if-eqz v44, :cond_3

    .line 263
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 264
    move-object/from16 v0, v44

    iget-object v9, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 267
    .end local v44    # "user":Lcom/perm/kate/api/User;
    :cond_3
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;Lcom/perm/utils/GroupCache;)V

    .line 269
    if-eqz v35, :cond_4

    .line 270
    const v6, 0x7f0e026f

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->author_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :cond_4
    const v6, 0x7f0e026c

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    .line 275
    if-eqz v42, :cond_8

    const-string v6, ""

    move-object/from16 v0, v42

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 276
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    new-instance v33, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v33

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 283
    .local v33, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static/range {v33 .. v33}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 285
    const/4 v6, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-static {v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 286
    const/4 v6, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-static {v0, v1, v6}, Lcom/perm/kate/WallMessageActivity;->createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v33

    .line 288
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 295
    .end local v33    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 296
    .local v11, "copy_owner_id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v15, v6, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 297
    .local v15, "copy_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/WallMessageActivity;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    const/16 v16, 0x1

    move-object v10, v4

    move-object/from16 v17, p0

    invoke-static/range {v10 .. v17}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v6, Lcom/perm/kate/api/WallMessage;->date:J

    move-wide/from16 v36, v0

    .line 301
    .local v36, "long_date":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v36

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v32

    .line 302
    .local v32, "ago_text":Ljava/lang/String;
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    new-instance v16, Lcom/perm/kate/AttachmentsHelper;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/WallMessageActivity;->source:I

    move/from16 v23, v0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v23}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 305
    const v6, 0x7f0e0086

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 306
    .local v29, "audio_container":Landroid/view/ViewGroup;
    const v6, 0x7f0e0087

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/view/ViewGroup;

    .line 307
    .local v30, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v6, v6, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v0, v6, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    move-object/from16 v28, v0

    const/16 v31, 0x0

    move-object/from16 v22, v4

    move-object/from16 v23, v40

    move-object/from16 v26, p0

    invoke-virtual/range {v19 .. v31}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 311
    :cond_5
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->retweetClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    const v6, 0x7f0e02b6

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 315
    .local v41, "signerView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->signer_id:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/WallMessageActivity;->userCache:Lcom/perm/utils/UserCache;

    move-object/from16 v0, v41

    invoke-static {v6, v7, v0, v8}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->signerClick:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallMessageActivity;->updateLikedMarker()V

    .line 320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v6, Lcom/perm/kate/api/WallMessage;->comment_count:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-lez v6, :cond_6

    .line 321
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v12, v7, Lcom/perm/kate/api/WallMessage;->comment_count:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallMessageActivity;->updateRetweetsMarker()V

    .line 325
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v6, v6, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 326
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    .line 327
    const v6, 0x7f070219

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->setHeaderTitle(I)V

    .line 328
    const v6, 0x7f0e0222

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 329
    const v6, 0x7f0e0223

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_7
    const v6, 0x7f0e02b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .line 334
    .local v46, "views_container":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v6, v6, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    if-eqz v6, :cond_9

    .line 335
    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const v6, 0x7f0e02b8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v47

    check-cast v47, Landroid/widget/TextView;

    .line 337
    .local v47, "views_text":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v6, v6, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 340
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "display_name":Ljava/lang/String;
    .end local v9    # "url_from_user":Ljava/lang/String;
    .end local v11    # "copy_owner_id":Ljava/lang/Long;
    .end local v15    # "copy_text":Ljava/lang/String;
    .end local v18    # "big_photos":Z
    .end local v24    # "owner_id":Ljava/lang/String;
    .end local v29    # "audio_container":Landroid/view/ViewGroup;
    .end local v30    # "gift_container":Landroid/view/ViewGroup;
    .end local v32    # "ago_text":Ljava/lang/String;
    .end local v35    # "ll_author_date_region":Landroid/view/View;
    .end local v36    # "long_date":J
    .end local v38    # "lv_wall_message_list":Landroid/view/ViewGroup;
    .end local v39    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v40    # "post_id":Ljava/lang/String;
    .end local v41    # "signerView":Landroid/widget/TextView;
    .end local v42    # "text":Ljava/lang/String;
    .end local v43    # "uid":Ljava/lang/Long;
    .end local v45    # "vi":Landroid/view/View;
    .end local v46    # "views_container":Landroid/view/View;
    .end local v47    # "views_text":Landroid/widget/TextView;
    :catch_0
    move-exception v34

    .line 341
    .local v34, "e":Ljava/lang/Exception;
    invoke-static/range {v34 .. v34}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 342
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 292
    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v5    # "display_name":Ljava/lang/String;
    .restart local v9    # "url_from_user":Ljava/lang/String;
    .restart local v18    # "big_photos":Z
    .restart local v24    # "owner_id":Ljava/lang/String;
    .restart local v35    # "ll_author_date_region":Landroid/view/View;
    .restart local v38    # "lv_wall_message_list":Landroid/view/ViewGroup;
    .restart local v39    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v40    # "post_id":Ljava/lang/String;
    .restart local v42    # "text":Ljava/lang/String;
    .restart local v43    # "uid":Ljava/lang/Long;
    .restart local v45    # "vi":Landroid/view/View;
    :cond_8
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 339
    .restart local v11    # "copy_owner_id":Ljava/lang/Long;
    .restart local v15    # "copy_text":Ljava/lang/String;
    .restart local v29    # "audio_container":Landroid/view/ViewGroup;
    .restart local v30    # "gift_container":Landroid/view/ViewGroup;
    .restart local v32    # "ago_text":Ljava/lang/String;
    .restart local v36    # "long_date":J
    .restart local v41    # "signerView":Landroid/widget/TextView;
    .restart local v46    # "views_container":Landroid/view/View;
    :cond_9
    const/16 v6, 0x8

    move-object/from16 v0, v46

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/perm/kate/WallMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$5;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method

.method private displayPostByAttachmentId(J)V
    .locals 3
    .param p1, "attachment_id"    # J

    .prologue
    .line 166
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchAttachmentBinary(J)[B

    move-result-object v0

    .line 167
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->deserialize([B)Lcom/perm/kate/api/WallMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 168
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    .line 172
    new-instance v1, Lcom/perm/kate/WallMessageActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageActivity$2;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    .line 182
    invoke-virtual {v1}, Lcom/perm/kate/WallMessageActivity$2;->start()V

    goto :goto_0
.end method

.method private displayPostById(JJ)V
    .locals 9
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 186
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchWallPostFull(JJJ)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 187
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    .line 188
    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 191
    new-instance v0, Lcom/perm/kate/WallMessageActivity$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/WallMessageActivity$3;-><init>(Lcom/perm/kate/WallMessageActivity;JJ)V

    .line 196
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageActivity$3;->start()V

    goto :goto_0
.end method

.method private displayPostByNewsId(J)V
    .locals 5
    .param p1, "news_id"    # J

    .prologue
    .line 200
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchWallPostFromNews(JJ)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 201
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    .line 202
    return-void
.end method

.method private displaySerializedPost(Lcom/perm/kate/api/WallMessage;)V
    .locals 1
    .param p1, "x"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 153
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->displayData()V

    .line 154
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 155
    new-instance v0, Lcom/perm/kate/WallMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$1;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    .line 160
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageActivity$1;->start()V

    .line 162
    return-void
.end method

.method private enableCopyPartText()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 793
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 794
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_wall_text:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->setTextIsSelectableWithReflection(Landroid/widget/TextView;Z)V

    .line 795
    iput-boolean v2, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    .line 796
    const v0, 0x7f0704d4

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->displayToast(I)V

    .line 798
    :cond_0
    return-void
.end method

.method private getMissingUsersAndGroups()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 378
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_3
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 383
    return-void
.end method

.method private refresh(JJ)V
    .locals 3
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1, v0, v2, p0}, Lcom/perm/kate/session/Session;->getWallMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 555
    return-void
.end method

.method private removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "postOwnerId"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 732
    .local v0, "post_id":Ljava/lang/Long;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 733
    .local v1, "wall_owner_id":Ljava/lang/Long;
    new-instance v2, Lcom/perm/kate/WallMessageActivity$19;

    invoke-direct {v2, p0, v0, v1}, Lcom/perm/kate/WallMessageActivity$19;-><init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 753
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070039

    .line 754
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 755
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 756
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 758
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 759
    return-void
.end method

.method private showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "retweet_post_id"    # Ljava/lang/String;
    .param p2, "retweet_owner_id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 776
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    if-eqz v0, :cond_1

    .line 777
    iput-boolean v2, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 778
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->original_post_id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->original_owner_id:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v2, p0}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 780
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 781
    new-instance v0, Lcom/perm/kate/WallMessageActivity$20;

    invoke-direct {v0, p0, p2, p1}, Lcom/perm/kate/WallMessageActivity$20;-><init>(Lcom/perm/kate/WallMessageActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageActivity$20;->start()V

    goto :goto_0
.end method

.method private static startNewsSearch(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gl"    # Lcom/perm/kate/GroupLink;

    .prologue
    const/4 v3, 0x1

    .line 719
    iget-object v1, p1, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchWallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 721
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.domain"

    iget-object v2, p1, Lcom/perm/kate/GroupLink;->domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 726
    :goto_0
    const-string v1, "com.perm.kate.hashtag"

    iget-object v2, p1, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 728
    return-void

    .line 723
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_news"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private updateLikeCount()V
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    .line 488
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v1, Lcom/perm/kate/api/WallMessage;->user_like:Z

    goto :goto_0

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    goto :goto_1

    .line 488
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private updateLikedMarker()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v0, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    if-lez v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, v1, Lcom/perm/kate/api/WallMessage;->like_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020105

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    :cond_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 498
    :cond_2
    const v0, 0x7f020107

    goto :goto_1
.end method

.method private updateRetweetsMarker()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v0, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    if-lez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget v1, v1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 509
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->user_reposted:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020108

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    :cond_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 509
    :cond_2
    const v0, 0x7f020109

    goto :goto_1
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0xb

    const/4 v0, 0x0

    .line 575
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-nez v1, :cond_1

    .line 597
    :cond_0
    :goto_0
    return v0

    .line 577
    :cond_1
    iget-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-nez v1, :cond_0

    .line 579
    iget-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->is_postponed:Z

    if-nez v1, :cond_5

    .line 580
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 581
    const/16 v1, 0x23

    const/16 v2, 0x38d

    const v3, 0x7f070266

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-boolean v1, v1, Lcom/perm/kate/api/WallMessage;->comment_can_post:Z

    if-eqz v1, :cond_3

    .line 583
    const/4 v1, 0x2

    const/16 v2, 0x3e9

    const v3, 0x7f0701d0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 584
    :cond_3
    const/16 v1, 0x8

    const/16 v2, 0x3eb

    const v3, 0x7f070518

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 585
    const/16 v1, 0x13

    const/16 v2, 0x3ed

    const v3, 0x7f070519

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 586
    iget-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->textIsSelectable:Z

    if-nez v1, :cond_4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_4

    .line 587
    const/4 v1, 0x5

    const/16 v2, 0x3ee

    const v3, 0x7f070174

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 588
    :cond_4
    const/4 v1, 0x6

    const/16 v2, 0x3ef

    const v3, 0x7f07007e

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 589
    const/4 v1, 0x7

    const/16 v2, 0x3f1

    const v3, 0x7f070176

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 591
    :cond_5
    iget-wide v2, p0, Lcom/perm/kate/WallMessageActivity;->_id:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/WallFragment;->canEdit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 592
    const/16 v1, 0x3f2

    const v2, 0x7f07018d

    invoke-interface {p1, v0, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 593
    :cond_6
    iget-boolean v1, p0, Lcom/perm/kate/WallMessageActivity;->can_remove:Z

    if-eqz v1, :cond_7

    .line 594
    const/16 v1, 0x16

    const/16 v2, 0x3f3

    const v3, 0x7f070084

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 595
    :cond_7
    iget-wide v2, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 596
    const/16 v1, 0x17

    const/16 v2, 0x3f5

    const v3, 0x7f07016f

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 597
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 515
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 516
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 517
    if-ne p2, v7, :cond_0

    .line 518
    const-string v0, "group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 519
    .local v8, "group_id":J
    new-instance v1, Lcom/perm/utils/RepostHelper;

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->groupRepostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v1, p0, v0}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;)V

    .line 522
    .end local v8    # "group_id":J
    :cond_0
    if-nez p1, :cond_1

    .line 523
    if-ne p2, v7, :cond_1

    .line 524
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 525
    new-instance v0, Lcom/perm/kate/WallMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageActivity$13;-><init>(Lcom/perm/kate/WallMessageActivity;)V

    .line 530
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageActivity$13;->start()V

    .line 533
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v10, 0x7f03011e

    :try_start_0
    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->setContentView(I)V

    .line 85
    const v10, 0x7f070513

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->setHeaderTitle(I)V

    .line 86
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->setupMenuButton()V

    .line 88
    const v10, 0x7f0e0224

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_likes:Landroid/widget/ImageButton;

    .line 89
    const v10, 0x7f0e0227

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_comments:Landroid/widget/ImageButton;

    .line 90
    const v10, 0x7f0e0362

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageButton;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_retweets:Landroid/widget/ImageButton;

    .line 91
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 93
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_retweets:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v10, p0, Lcom/perm/kate/WallMessageActivity;->btn_retweets:Landroid/widget/ImageButton;

    iget-object v11, p0, Lcom/perm/kate/WallMessageActivity;->retweets_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    const v10, 0x7f0e0226

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->tv_likes_count:Landroid/widget/TextView;

    .line 98
    const v10, 0x7f0e01f0

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->tv_comments_count:Landroid/widget/TextView;

    .line 99
    const v10, 0x7f0e0364

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->tv_retweets_count:Landroid/widget/TextView;

    .line 100
    const v10, 0x7f0e0225

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->iv_liked_marker:Landroid/widget/ImageView;

    .line 101
    const v10, 0x7f0e0363

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/perm/kate/WallMessageActivity;->iv_retweeted_marker:Landroid/widget/ImageView;

    .line 103
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v10}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    .line 104
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "dont_refresh"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/perm/kate/WallMessageActivity;->dont_refresh:Z

    .line 105
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "is_suggested"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "cache_post"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    .line 109
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "attachment_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 110
    .local v0, "attachment_id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    .line 111
    const/16 v10, 0x9

    iput v10, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 112
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/WallMessageActivity;->displayPostByAttachmentId(J)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "post_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 117
    .local v6, "post_id":J
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "owner_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 118
    .local v4, "owner_id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_1

    .line 119
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    const/4 v10, 0x1

    :goto_0
    iput v10, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 120
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/perm/kate/WallMessageActivity;->displayPostById(JJ)V

    .line 122
    :cond_1
    iget-wide v10, p0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/perm/kate/WallMessageActivity;->can_remove:Z

    .line 125
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "news_id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 126
    .local v2, "news_id":J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_2

    .line 127
    const/4 v10, 0x3

    iput v10, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 128
    invoke-direct {p0, v2, v3}, Lcom/perm/kate/WallMessageActivity;->displayPostByNewsId(J)V

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "post"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/api/WallMessage;

    .line 132
    .local v9, "x":Lcom/perm/kate/api/WallMessage;
    if-eqz v9, :cond_3

    .line 133
    const/4 v10, 0x3

    iput v10, p0, Lcom/perm/kate/WallMessageActivity;->source:I

    .line 134
    invoke-direct {p0, v9}, Lcom/perm/kate/WallMessageActivity;->displaySerializedPost(Lcom/perm/kate/api/WallMessage;)V

    .line 136
    :cond_3
    iget-boolean v10, p0, Lcom/perm/kate/WallMessageActivity;->is_suggested:Z

    if-eqz v10, :cond_4

    .line 137
    const v10, 0x7f07027a

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->setHeaderTitle(I)V

    .line 138
    const v10, 0x7f0e0222

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 139
    const v10, 0x7f0e0223

    invoke-virtual {p0, v10}, Lcom/perm/kate/WallMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "com.perm.kate._id"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/perm/kate/WallMessageActivity;->_id:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "attachment_id":J
    .end local v2    # "news_id":J
    .end local v4    # "owner_id":J
    .end local v6    # "post_id":J
    .end local v9    # "x":Lcom/perm/kate/api/WallMessage;
    :goto_2
    return-void

    .line 119
    .restart local v0    # "attachment_id":J
    .restart local v4    # "owner_id":J
    .restart local v6    # "post_id":J
    :cond_5
    const/4 v10, 0x2

    goto :goto_0

    .line 122
    :cond_6
    const/4 v10, 0x0

    goto :goto_1

    .line 145
    .end local v0    # "attachment_id":J
    .end local v4    # "owner_id":J
    .end local v6    # "post_id":J
    :catch_0
    move-exception v8

    .line 146
    .local v8, "th":Ljava/lang/Throwable;
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 570
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallMessageActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 357
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallMessageActivity;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 358
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 359
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 603
    :try_start_0
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    if-eqz v4, :cond_0

    .line 604
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v4, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 605
    .local v1, "post_id":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v4, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 606
    .local v2, "wall_owner_id":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 649
    .end local v1    # "post_id":Ljava/lang/String;
    .end local v2    # "wall_owner_id":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_1
    return v4

    .line 608
    .restart local v1    # "post_id":Ljava/lang/String;
    .restart local v2    # "wall_owner_id":Ljava/lang/String;
    :sswitch_0
    :try_start_1
    invoke-static {v1, v2, p0}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 609
    const/4 v4, 0x1

    goto :goto_1

    .line 611
    :sswitch_1
    invoke-static {v1, v2, p0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 612
    const/4 v4, 0x1

    goto :goto_1

    .line 614
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/WallMessageActivity;->enableCopyPartText()V

    .line 615
    const/4 v4, 0x1

    goto :goto_1

    .line 617
    :sswitch_3
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    invoke-static {v4, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    .line 618
    const/4 v4, 0x1

    goto :goto_1

    .line 620
    :sswitch_4
    const/4 v4, 0x1

    invoke-static {v1, v2, v4, p0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 621
    const/4 v4, 0x1

    goto :goto_1

    .line 623
    :sswitch_5
    invoke-static {v2, v1, p0}, Lcom/perm/kate/Helper;->copyPostLink(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 624
    const/4 v4, 0x1

    goto :goto_1

    .line 626
    :sswitch_6
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/WallMessageActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/4 v4, 0x1

    goto :goto_1

    .line 629
    :sswitch_7
    new-instance v4, Lcom/perm/kate/ReportHelper;

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v6, v6, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v5, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v5, v5, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/perm/kate/ReportHelper;->showReportPostDialog(JJ)V

    .line 630
    const/4 v4, 0x1

    goto :goto_1

    .line 632
    :sswitch_8
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/perm/kate/WallMessageActivity;->show_original_post:Z

    .line 633
    invoke-direct {p0, v1, v2}, Lcom/perm/kate/WallMessageActivity;->showOriginalPost(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const/4 v4, 0x1

    goto :goto_1

    .line 636
    :sswitch_9
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v4, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 638
    .local v3, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 639
    iget-object v4, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v4, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 640
    :cond_1
    iget-wide v4, p0, Lcom/perm/kate/WallMessageActivity;->_id:J

    iget-object v6, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-object v6, v6, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/perm/kate/WallMessageActivity;->tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v10, v9, Lcom/perm/kate/NewsItemTag;->signer_id:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_2

    const/4 v9, 0x1

    :goto_2
    const/4 v11, 0x0

    move-object v10, p0

    invoke-static/range {v1 .. v11}, Lcom/perm/kate/WallFragment;->editPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLandroid/app/Activity;Lcom/perm/kate/BaseFragment;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 641
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 640
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 645
    .end local v1    # "post_id":Ljava/lang/String;
    .end local v2    # "wall_owner_id":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 646
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 647
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 606
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0xb -> :sswitch_9
        0x13 -> :sswitch_4
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x23 -> :sswitch_8
    .end sparse-switch
.end method
