.class public Lcom/perm/kate/NewsCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NewsCursorAdapter.java"


# static fields
.field public static MAX_TEXT_LENGTH:I = 0x118

.field static pattern:Ljava/util/regex/Pattern;

.field private static pattern_string:Ljava/lang/String;

.field static readMoreClick:Landroid/view/View$OnClickListener;


# instance fields
.field account_id:J

.field activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field attachments_cache:Ljava/util/HashMap;

.field big_photos:Z

.field card_style_news:Z

.field collapse_news:Z

.field private commentsClickListener:Landroid/view/View$OnClickListener;

.field fragment:Ljava/lang/ref/WeakReference;

.field groupCache:Lcom/perm/utils/GroupCache;

.field is_clickable_count_views:Z

.field private likesClickListener:Landroid/view/View$OnClickListener;

.field old_style_news:Z

.field open_news:Ljava/util/HashSet;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private repostsClickListener:Landroid/view/View$OnClickListener;

.field userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 440
    new-instance v0, Lcom/perm/kate/NewsCursorAdapter$1;

    invoke-direct {v0}, Lcom/perm/kate/NewsCursorAdapter$1;-><init>()V

    sput-object v0, Lcom/perm/kate/NewsCursorAdapter;->readMoreClick:Landroid/view/View$OnClickListener;

    const-string v0, "\\[([^\\]\\[]*?)(:bp-\\d*_\\d*)?\\|(.*?)\\]"

    .line 809
    sput-object v0, Lcom/perm/kate/NewsCursorAdapter;->pattern_string:Ljava/lang/String;

    .line 811
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;)V
    .locals 9

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 67
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    .line 69
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    const/4 p2, 0x1

    .line 70
    iput-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    .line 71
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->open_news:Ljava/util/HashSet;

    .line 72
    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    .line 74
    iput-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    .line 75
    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    .line 560
    new-instance p2, Lcom/perm/utils/GroupCache;

    invoke-direct {p2}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 561
    new-instance p2, Lcom/perm/utils/UserCache;

    invoke-direct {p2}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 743
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$2;

    invoke-direct {p2, p0}, Lcom/perm/kate/NewsCursorAdapter$2;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 892
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$4;

    invoke-direct {p2, p0}, Lcom/perm/kate/NewsCursorAdapter$4;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    .line 903
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$5;

    invoke-direct {p2, p0}, Lcom/perm/kate/NewsCursorAdapter$5;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    .line 913
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$6;

    invoke-direct {p2, p0}, Lcom/perm/kate/NewsCursorAdapter$6;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    .line 923
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$7;

    invoke-direct {p2, p0}, Lcom/perm/kate/NewsCursorAdapter$7;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 79
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 80
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->fragment:Ljava/lang/ref/WeakReference;

    .line 81
    sget-object p2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/perm/kate/NewsCursorAdapter;->account_id:J

    .line 83
    sget-boolean p2, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz p2, :cond_0

    .line 84
    sget p2, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    move v4, p2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 86
    :goto_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 88
    :goto_1
    iget-object p2, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p2}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p1

    .line 91
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0xc

    const/16 v7, 0xc

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 93
    :goto_3
    new-instance p1, Lcom/perm/kate/AttachmentsHelper;

    iget-object v2, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v3, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    invoke-static {v2}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v5

    const/4 v8, 0x3

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 95
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    .line 97
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    .line 99
    iget-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    return-void
.end method

.method public static ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 2

    .line 767
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 768
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.group_id"

    .line 769
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 770
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected static ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 774
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 775
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 776
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCursorAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/perm/kate/NewsCursorAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object p0
.end method

.method private static createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;
    .locals 7

    if-nez p2, :cond_0

    .line 845
    new-instance p0, Landroid/text/style/URLSpan;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 846
    :cond_0
    new-instance p2, Lcom/perm/kate/NewsCursorAdapter$3;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/NewsCursorAdapter$3;-><init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;
    .locals 0

    .line 655
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 p2, 0x0

    .line 656
    invoke-virtual {p0, p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 657
    new-instance p1, Lcom/perm/kate/ViewHolder;

    invoke-direct {p1}, Lcom/perm/kate/ViewHolder;-><init>()V

    const p2, 0x7f0903a2

    .line 658
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    const p2, 0x7f09039e

    .line 659
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    const p2, 0x7f0903a1

    .line 660
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const p2, 0x7f090186

    .line 661
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const p2, 0x7f0903a0

    .line 663
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    const p2, 0x7f09039f

    .line 664
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    const p2, 0x7f0900d6

    .line 665
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const p2, 0x7f090410

    .line 666
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    const p2, 0x7f090412

    .line 667
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->views_text:Landroid/widget/TextView;

    const p2, 0x7f09026e

    .line 668
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    const p2, 0x7f0901bd

    .line 669
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const p2, 0x7f0901b9

    .line 670
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const p2, 0x7f0901b8

    .line 671
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const p2, 0x7f09025d

    .line 672
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    const p2, 0x7f09025e

    .line 673
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    const p2, 0x7f0900de

    .line 674
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    const p2, 0x7f09029f

    .line 675
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const p2, 0x7f0903d6

    .line 676
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    const p2, 0x7f09029e

    .line 677
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->repost_icon:Landroid/widget/ImageView;

    const p2, 0x7f09039d

    .line 678
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    .line 679
    new-instance p2, Lcom/perm/kate/NewsItemTag;

    invoke-direct {p2}, Lcom/perm/kate/NewsItemTag;-><init>()V

    .line 680
    iput-object p1, p2, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 681
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static cropLongText(Landroid/text/SpannableStringBuilder;Landroid/view/View;Ljava/util/HashSet;JLandroid/widget/BaseAdapter;Lcom/perm/kate/NewsItemTag;)V
    .locals 2

    .line 424
    :try_start_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sget v1, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    if-le v0, v1, :cond_0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    sget v0, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    const/4 p0, 0x0

    .line 426
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const p0, 0x7f09000b

    .line 427
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f090008

    .line 428
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f09000a

    .line 429
    invoke-virtual {p1, p0, p5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p0, 0x7f090016

    .line 430
    invoke-virtual {p1, p0, p6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 431
    sget-object p0, Lcom/perm/kate/NewsCursorAdapter;->readMoreClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 435
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 436
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private displayComments(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const v2, 0x7f0900d2

    move-object/from16 v3, p1

    .line 504
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 505
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const-string v3, "comments_json"

    .line 507
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, ""

    .line 508
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 509
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    .line 513
    :try_start_0
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v0

    .line 514
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0c0045

    const/4 v9, 0x0

    .line 516
    invoke-virtual {v7, v8, v9, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 517
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v8, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v8}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 519
    iget-object v10, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, " "

    if-eqz v10, :cond_1

    :try_start_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 520
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 521
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 522
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v12, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-static {v8, v12}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_1
    const v10, 0x7f09035c

    .line 524
    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v12, v1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v12, v8}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f09038c

    .line 525
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-wide v12, v0, Lcom/perm/kate/api/Comment;->date:J

    invoke-static {v10, v12, v13}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-wide v12, v0, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-lez v8, :cond_2

    .line 529
    iget-object v8, v1, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v8, v12, v13}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v8

    move-object/from16 v21, v9

    move-object v9, v8

    move-object/from16 v8, v21

    goto :goto_1

    .line 531
    :cond_2
    iget-object v8, v1, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v8, v12, v13}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v8

    .line 532
    :goto_1
    iget-boolean v10, v0, Lcom/perm/kate/api/Comment;->deleted:Z

    const v12, 0x7f09017e

    const v13, 0x7f09035d

    if-eqz v10, :cond_3

    .line 533
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const v9, 0x7f0f0091

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/Helper;->getDeletedAva()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    if-nez v9, :cond_4

    if-eqz v8, :cond_6

    .line 536
    :cond_4
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 537
    iget-object v12, v1, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v12, 0x7f090186

    .line 538
    iget-wide v14, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 539
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v9, :cond_5

    .line 541
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    iget-object v15, v9, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x5a

    .line 542
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v16, v10

    .line 541
    invoke-virtual/range {v14 .. v20}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v9, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 545
    :cond_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v14

    iget-object v15, v8, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/16 v17, 0x1

    const/16 v18, 0x5a

    .line 546
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v16, v10

    .line 545
    invoke-virtual/range {v14 .. v20}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 547
    iget-object v8, v8, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    :cond_6
    :goto_2
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 552
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 553
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 580
    iget-object p3, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 581
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 583
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 584
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 5

    const v0, -0x444445

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-lez v4, :cond_1

    .line 590
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 594
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result p0

    invoke-virtual {p5, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 596
    :cond_0
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    const/16 v1, 0x8

    .line 598
    :cond_2
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 599
    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string p0, ""

    .line 600
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "online"

    .line 413
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const v0, 0x7f09019c

    .line 418
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 419
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 9

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0236

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 571
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    .line 572
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v5, 0x1

    const/16 v6, 0x5a

    const/4 v8, 0x1

    move-object v3, p5

    .line 571
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 574
    iget-object p1, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const p2, 0x7f090186

    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static displayRepostsCount(Lcom/perm/kate/ViewHolder;JZZ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 606
    iget-object p3, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object p3, p0, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 610
    iget-object p1, p0, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p4, :cond_2

    .line 613
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->repost_icon:Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 615
    :cond_2
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->repost_icon:Landroid/widget/ImageView;

    const p1, -0x444445

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :goto_1
    return-void
.end method

.method public static displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 12

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v9, p7

    const/4 v3, 0x0

    .line 460
    iput-object v3, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 461
    iput-object v3, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    .line 463
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v10, v5, v7

    if-eqz v10, :cond_3

    const-string v5, ""

    .line 465
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v10, v7

    if-gez v6, :cond_1

    .line 466
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v8, p2

    invoke-virtual {p2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 468
    iget-object v5, v6, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 469
    :cond_0
    iput-object v6, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v8, p3

    invoke-virtual {p3, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    :cond_2
    iput-object v6, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    .line 476
    :goto_0
    iget-object v1, v0, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, v0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 479
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    if-eqz v2, :cond_5

    .line 482
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 483
    iget-object v1, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p6, :cond_4

    if-eqz v9, :cond_4

    .line 485
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 486
    invoke-static {v10}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    const/4 v1, 0x1

    .line 487
    invoke-static {v10, v9, v1}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object/from16 v2, p7

    .line 488
    invoke-static/range {v1 .. v8}, Lcom/perm/kate/WallMessageActivity;->createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {v9, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 490
    iget-object v2, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_2

    .line 493
    :cond_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 494
    invoke-static {v1, v9, v4}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 495
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2, v1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 496
    iget-object v0, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 499
    :cond_5
    iget-object v0, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-wide/16 p4, 0x0

    cmp-long p6, p0, p4

    if-lez p6, :cond_0

    .line 870
    invoke-virtual {p3, p0, p1}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 872
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 873
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "- "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    .line 875
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public static displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 885
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0488

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 887
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    .line 889
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 937
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f09004b

    if-eqz p2, :cond_2

    .line 941
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 943
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 944
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    const/16 p2, 0x8

    if-nez p3, :cond_1

    .line 946
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 947
    :cond_1
    iget-object p3, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 949
    invoke-virtual {p4, p2}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0902cd

    .line 950
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p5, :cond_3

    .line 952
    invoke-virtual {p5, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 955
    :cond_2
    iget-object p2, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const p4, 0x7fffffff

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 956
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    if-nez p3, :cond_3

    .line 958
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method static displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V
    .locals 2

    const-string v0, "views"

    .line 963
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 965
    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 966
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 967
    :goto_0
    invoke-static {p0, p1}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V

    return-void
.end method

.method static displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V
    .locals 2

    .line 972
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    const/16 p0, 0x8

    .line 976
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 980
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 982
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf4240

    if-le v0, v1, :cond_2

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "M"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 984
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    div-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "K"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 987
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 988
    :goto_0
    iget-object p1, p1, Lcom/perm/kate/ViewHolder;->views_text:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getCardBgByTheme()I
    .locals 1

    .line 127
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f0801a2

    return v0

    :sswitch_0
    const v0, 0x7f0801a6

    return v0

    :sswitch_1
    const v0, 0x7f0801a5

    return v0

    :sswitch_2
    const v0, 0x7f0801a4

    return v0

    :sswitch_3
    const v0, 0x7f0801a3

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c7 -> :sswitch_3
        0x7f1000cb -> :sswitch_2
        0x7f1000d3 -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getCardStyleFlag(Landroid/app/Activity;)Z
    .locals 3

    .line 111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f015e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 113
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f1000c7 -> :sswitch_0
        0x7f1000cb -> :sswitch_0
        0x7f1000cd -> :sswitch_0
        0x7f1000cf -> :sswitch_0
        0x7f1000d3 -> :sswitch_0
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method private getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const-string v0, "friend_first_names"

    .line 687
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "friend_last_names"

    .line 688
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, ","

    .line 692
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v1

    .line 696
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 697
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static getOldStyleFlag(Landroid/app/Activity;)Z
    .locals 2

    .line 107
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0f0170

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    .line 708
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 709
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 710
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    .line 711
    invoke-interface {p1, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    invoke-interface {p1, p5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p5

    .line 712
    invoke-interface {p1, p6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p6

    invoke-interface {p1, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p6

    .line 713
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p7

    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p7

    invoke-direct {p0, p7}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p7

    .line 714
    invoke-interface {p1, p8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p8

    invoke-interface {p1, p8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 715
    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 716
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 717
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 718
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    .line 719
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 720
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 721
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/perm/kate/api/Photo;->aid:J

    .line 722
    invoke-virtual {p6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 723
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    if-lt v2, v3, :cond_0

    .line 724
    invoke-virtual {p7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/perm/kate/api/Photo;->width:I

    .line 725
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_1

    .line 726
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/perm/kate/api/Photo;->height:I

    .line 727
    :cond_1
    invoke-virtual {p8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_2
    return-object p8
.end method

.method public static hideCountViews(Lcom/perm/kate/ViewHolder;)V
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 623
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 624
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static hideFields(Lcom/perm/kate/ViewHolder;)V
    .locals 1

    .line 629
    iget-object p0, p0, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 630
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public static isCollapseNewsEnabled()Z
    .locals 3

    .line 103
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_collapse_news"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static profileClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 6

    const v0, 0x7f090186

    .line 751
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 753
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return-void

    .line 755
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 756
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    .line 761
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/NewsItemTag;

    if-eqz p0, :cond_2

    .line 762
    iget-object p1, p0, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 763
    iget-object p1, p0, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object p0, p0, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/perm/utils/AdEvents;->reportOwnerClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static shouldDisplayBigPhotos()Z
    .locals 3

    .line 797
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 798
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0173

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    .line 799
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 801
    invoke-static {}, Lcom/perm/kate/Helper;->isWifi()Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "2"

    .line 802
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 814
    invoke-static/range {v0 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 819
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    sget-object v1, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 821
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    new-instance v2, Lcom/perm/kate/GroupLink;

    invoke-direct {v2}, Lcom/perm/kate/GroupLink;-><init>()V

    .line 823
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/perm/kate/GroupLink;->index:I

    const/4 v3, 0x3

    .line 824
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v2, Lcom/perm/kate/GroupLink;->len:I

    .line 825
    iget v5, v2, Lcom/perm/kate/GroupLink;->index:I

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v5

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v4, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 v3, 0x1

    .line 827
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    const-string v4, "http"

    .line 829
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    .line 831
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/GroupLink;

    move-object v2, p1

    move-object v3, v1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 834
    invoke-static/range {v2 .. v8}, Lcom/perm/kate/NewsCursorAdapter;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/ClickableSpan;

    move-result-object v2

    .line 835
    iget v3, v1, Lcom/perm/kate/GroupLink;->index:I

    iget v1, v1, Lcom/perm/kate/GroupLink;->len:I

    add-int/2addr v1, v3

    const/16 v4, 0x21

    invoke-virtual {p0, v2, v3, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 838
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 839
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .line 733
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 736
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 737
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    const-string v4, ""

    .line 738
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 739
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 44
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v0, "photo"

    .line 145
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/perm/kate/NewsItemTag;

    if-nez v15, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v14, v15, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    if-nez v14, :cond_1

    return-void

    :cond_1
    const-string v1, "type"

    .line 152
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-static {v14}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    const v1, 0x7f0902cd

    .line 154
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v8, 0x8

    .line 156
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "date"

    .line 157
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v1, "text"

    .line 158
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "is_comments"

    .line 159
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "ads"

    .line 160
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    const/4 v5, 0x0

    if-eqz v32, :cond_2

    const-string v3, "ad_data"

    .line 162
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    const-string v3, "ad_data_impression"

    .line 163
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->ad_data_impression:Ljava/lang/String;

    const-string v3, "statistics"

    .line 164
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/db/DataHelper;->deserializeStats([B)Ljava/util/List;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    const-string v3, "track_code"

    .line 165
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    const-string v3, "ads_id1"

    .line 166
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->ads_id1:Ljava/lang/Integer;

    const-string v3, "ads_id2"

    .line 167
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v15, Lcom/perm/kate/NewsItemTag;->ads_id2:Ljava/lang/Integer;

    goto :goto_0

    .line 172
    :cond_2
    iput-object v5, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    :goto_0
    const-string v3, "source_id"

    .line 173
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "post_id"

    .line 174
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v26, v3

    const-string v3, "_"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const-string v3, "copy_owner_id"

    .line 176
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v3, "copy_text"

    .line 177
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 181
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez v32, :cond_5

    .line 182
    invoke-static {v1}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static/range {v27 .. v27}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move/from16 v34, v3

    goto :goto_3

    :cond_5
    const/16 v34, 0x0

    :goto_3
    const-string v3, "is_explicit"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_explicit_end

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_explicit_end

    sget v3, Lcom/perm/kate/KApplication;->nsfw_tolerance:I

    add-int/lit8 v3, v3, -0x2

    if-eqz v3, :cond_explicit_end

    const/16 v34, 0x1

    :cond_explicit_end
    const-string v3, "_id"

    .line 184
    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 186
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide/from16 v16, v11

    const-string v11, "photo_tag"

    const-string v12, "wall_photo"

    if-eqz v3, :cond_7

    if-nez v4, :cond_6

    .line 189
    :try_start_1
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v3, 0x7f0f04e1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 191
    :cond_6
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v3, 0x7f0f03c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    move-object/from16 v38, v5

    move-wide/from16 v41, v6

    move-object/from16 v35, v12

    move-wide/from16 v36, v16

    move-object/from16 v39, v26

    const/16 v40, 0x1

    move v12, v4

    move-object/from16 v17, v11

    :goto_5
    move-object v11, v1

    goto/16 :goto_9

    .line 193
    :cond_7
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 194
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v3, 0x7f0f003f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 196
    :cond_8
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 197
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v3, 0x7f0f04e2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    :cond_9
    const-string v3, "friend"

    .line 199
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 200
    invoke-direct {v10, v13}, Lcom/perm/kate/NewsCursorAdapter;->getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    move/from16 v30, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v5

    const v5, 0x7f0f04db

    move-object/from16 v35, v12

    move-wide/from16 v36, v16

    move-object/from16 v12, p2

    invoke-virtual {v12, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iput-object v2, v15, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    const-string v2, "friend_ids"

    .line 204
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move/from16 v30, v4

    move-object/from16 v31, v5

    move-object/from16 v35, v12

    move-wide/from16 v36, v16

    move-object/from16 v12, p2

    const-string v3, "audio"

    .line 206
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, ""

    if-eqz v3, :cond_b

    .line 208
    :try_start_2
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    move-wide/from16 v41, v6

    move-object/from16 v17, v11

    move-object/from16 v39, v26

    move/from16 v12, v30

    move-object/from16 v38, v31

    const/16 v40, 0x1

    goto/16 :goto_5

    :cond_b
    const-string v3, "video"

    .line 210
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 212
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 216
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ne v3, v4, :cond_d

    const-string v3, "\u00ad"

    const-string v4, "-"

    .line 217
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_d
    invoke-static {v1}, Lcom/perm/kate/Helper;->removeBrokenChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, v15, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    iget-object v3, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    move-object/from16 v38, v4

    iget-object v4, v15, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    move-object/from16 v16, v5

    move/from16 v17, v32

    move-object/from16 v18, v1

    move-object/from16 v19, v33

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v21}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/16 v18, 0x1

    iget-object v3, v15, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    iget-object v4, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    move-wide/from16 v39, v6

    iget-object v6, v15, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v33

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/16 v18, 0x1

    iget-object v3, v15, Lcom/perm/kate/NewsItemTag;->statistics:Ljava/util/List;

    iget-object v4, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object v6, v15, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move/from16 v19, v32

    move-object/from16 v20, v3

    move-object/from16 v21, v33

    move-object/from16 v22, v4

    move-object/from16 v23, v6

    invoke-static/range {v16 .. v23}, Lcom/perm/kate/WallMessageActivity;->createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;ZZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-boolean v1, v10, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    if-eqz v1, :cond_e

    .line 225
    iget-object v3, v10, Lcom/perm/kate/NewsCursorAdapter;->open_news:Ljava/util/HashSet;

    move-object v1, v5

    move-object/from16 v7, v26

    move-object/from16 v17, v11

    move/from16 v12, v30

    move-object/from16 v16, v38

    const/4 v6, 0x0

    move-object v11, v5

    move-object/from16 v38, v31

    move-wide/from16 v4, v36

    move-wide/from16 v41, v39

    move-object/from16 v6, p0

    move-object/from16 v39, v7

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/text/SpannableStringBuilder;Landroid/view/View;Ljava/util/HashSet;JLandroid/widget/BaseAdapter;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_7

    :cond_e
    move-object/from16 v17, v11

    move/from16 v12, v30

    move-object/from16 v16, v38

    move-wide/from16 v41, v39

    move-object v11, v5

    move-object/from16 v39, v26

    move-object/from16 v38, v31

    .line 227
    :goto_7
    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v11}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 228
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    if-eqz v34, :cond_f

    const/4 v5, 0x0

    goto :goto_8

    :cond_f
    invoke-static {}, Lcom/perm/utils/LocalLinkMovementMethod;->getInstance()Lcom/perm/utils/LocalLinkMovementMethod;

    move-result-object v5

    :goto_8
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 234
    iget-object v1, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    move-object/from16 v11, v16

    const/16 v40, 0x0

    .line 238
    :goto_9
    iget-object v1, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_10

    .line 239
    iget-object v1, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_10
    const/16 v7, 0x8

    .line 241
    iget-object v1, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :goto_a
    invoke-static/range {v39 .. v39}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v3, 0x0

    const-string v6, " "

    cmp-long v5, v1, v3

    if-lez v5, :cond_11

    .line 247
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "first_name"

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "last_name"

    .line 248
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 249
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_11
    const-string v5, "name"

    .line 251
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "photo_medium"

    .line 252
    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_b
    move-object/from16 v16, v7

    const/4 v7, 0x1

    if-ne v12, v7, :cond_12

    const-string v12, "post"

    .line 254
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    const-string v12, "from_id"

    .line 255
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v18, v8

    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v12, v7, v3

    if-lez v12, :cond_13

    .line 258
    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v1, v7, v8}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    iget-object v1, v1, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    move-object/from16 v16, v1

    move-wide v3, v7

    goto :goto_c

    :cond_12
    move-object/from16 v18, v8

    :cond_13
    move-wide v3, v1

    move-object v2, v5

    .line 263
    :goto_c
    iget-object v5, v10, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object v1, v14

    move-object v12, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 267
    iget-object v4, v10, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    iget-object v5, v10, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/4 v8, 0x0

    const/4 v1, 0x0

    move-object v2, v14

    move-object/from16 v3, v18

    move-object v6, v15

    const/16 v16, 0x8

    const/16 v18, 0x1

    move-object/from16 v7, v27

    move-object/from16 v43, v12

    move-object v12, v9

    move-object v9, v1

    invoke-static/range {v2 .. v9}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 270
    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v2, v41

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 271
    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v40, :cond_1a

    const-string v1, "comment_count"

    .line 275
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 276
    iget-boolean v3, v10, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_d

    :cond_14
    const/4 v3, 0x0

    :goto_d
    invoke-static {v14, v1, v2, v3}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    const-string v1, "comment_can_post"

    .line 278
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_15

    const/4 v2, 0x1

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    .line 279
    :goto_e
    iput-boolean v2, v15, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    const-string v1, "user_like"

    .line 281
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-nez v5, :cond_16

    const/4 v2, 0x1

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    iput-boolean v2, v15, Lcom/perm/kate/NewsItemTag;->i_like:Z

    const-string v1, "like_count"

    .line 284
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 285
    iget-boolean v1, v15, Lcom/perm/kate/NewsItemTag;->i_like:Z

    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v5, v14, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    iget-object v6, v14, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    iget-boolean v7, v10, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v7, :cond_17

    const/16 v25, 0x1

    goto :goto_10

    :cond_17
    const/16 v25, 0x0

    :goto_10
    move/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    invoke-static/range {v19 .. v25}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    const-string v1, "reposts_count"

    .line 288
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v5, "user_reposted"

    .line 289
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_18

    const/4 v3, 0x1

    goto :goto_11

    :cond_18
    const/4 v3, 0x0

    .line 290
    :goto_11
    iget-boolean v4, v10, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v4, :cond_19

    const/4 v4, 0x1

    goto :goto_12

    :cond_19
    const/4 v4, 0x0

    :goto_12
    invoke-static {v14, v1, v2, v4, v3}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZZ)V

    goto :goto_13

    .line 292
    :cond_1a
    invoke-static {v14}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    :goto_13
    move-object/from16 v9, v39

    .line 295
    iput-object v9, v15, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    const/4 v1, 0x0

    .line 296
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 297
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 298
    iput-object v12, v15, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 299
    iput-object v11, v15, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 302
    iget-object v2, v10, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_1b

    .line 304
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v3, :cond_1b

    const-string v2, "attachments"

    .line 305
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    iget-wide v3, v10, Lcom/perm/kate/NewsCursorAdapter;->account_id:J

    invoke-static {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v2

    .line 306
    iget-object v3, v10, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    move-object/from16 v20, v2

    move-wide/from16 v2, v36

    .line 309
    iput-wide v2, v15, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 311
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 313
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_14

    .line 327
    :cond_1c
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 328
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 329
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    move-object v12, v9

    :cond_1d
    const/4 v1, 0x0

    goto :goto_15

    :cond_1e
    :goto_14
    const-string v3, "photo_srcs"

    const-string v4, "photo_ids"

    const-string v5, "photo_srcs_big"

    const-string v6, "album_ids"

    const-string v7, "owner_ids"

    const-string v8, "photo_widths"

    const-string v0, "photo_heights"

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v12, v9

    move-object v9, v0

    .line 314
    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/NewsCursorAdapter;->getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "photo_srcs_tag"

    const-string v4, "photo_ids_tag"

    const-string v5, "phototag_srcs_big"

    const-string v6, "album_ids_tag"

    const-string v7, "owner_ids_tag"

    const-string v8, "photo_tag_widths"

    const-string v9, "photo_tag_heights"

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    .line 315
    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/NewsCursorAdapter;->getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v1, 0x0

    .line 319
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 321
    iget-object v2, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    iput-object v2, v15, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 322
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 323
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    :goto_15
    const v0, 0x7f09004a

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 333
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/ViewGroup;

    const v0, 0x7f090158

    .line 334
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/view/ViewGroup;

    if-eqz v34, :cond_1f

    .line 336
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 337
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 341
    :cond_1f
    iget-object v0, v14, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 343
    iget-object v0, v10, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v2, v14, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    iget-object v3, v14, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v4, v15, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object v5, v15, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    const/16 v31, 0x0

    move-object v6, v14

    move-object v14, v0

    move-object v9, v15

    move-object v15, v11

    move-object/from16 v16, v9

    move-object/from16 v17, v6

    move-object/from16 v18, v38

    move-object/from16 v19, v12

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    move-object/from16 v28, v33

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    invoke-virtual/range {v14 .. v31}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v0, v38

    .line 347
    :try_start_4
    iput-object v0, v9, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 348
    iput-object v12, v9, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_16

    :catch_0
    move-exception v0

    .line 351
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    :goto_16
    invoke-direct/range {p0 .. p3}, Lcom/perm/kate/NewsCursorAdapter;->displayComments(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const-string v0, "signer_id"

    .line 356
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const v0, 0x7f0902d1

    .line 357
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 358
    iget-object v0, v10, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object v2, v9, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    move-object/from16 v18, v5

    move-object/from16 v19, v0

    move-object/from16 v20, v33

    move-object/from16 v21, v1

    move-object/from16 v22, v2

    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "copyright_name"

    .line 360
    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0902db

    .line 361
    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    move-object/from16 v1, p2

    .line 362
    invoke-static {v0, v11, v1}, Lcom/perm/kate/NewsCursorAdapter;->displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    .line 365
    invoke-static {v7, v13}, Lcom/perm/kate/NewsCursorAdapter;->displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V

    if-nez v40, :cond_20

    .line 367
    iget-boolean v0, v10, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-eqz v0, :cond_20

    .line 368
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    const v2, 0x7f09040c

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 369
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    const v3, 0x7f09040d

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 370
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-boolean v1, v9, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v4, 0x7f09040e

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 371
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v1, 0x7f09000b

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 372
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 375
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 376
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 377
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 379
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v1, v9, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 380
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 381
    iget-object v0, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v1, v10, Lcom/perm/kate/NewsCursorAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_20
    invoke-static {v13, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V

    .line 388
    iget-boolean v4, v10, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    move-object/from16 v1, p1

    move-object v2, v6

    move/from16 v3, v34

    move-object v6, v11

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;Landroid/view/View;)V

    const v0, 0x7f09028e

    .line 392
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_23

    if-eqz v32, :cond_22

    .line 396
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "ads_title"

    .line 397
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "age_restriction"

    .line 398
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v43

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    :cond_21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    :cond_22
    const/16 v1, 0x8

    .line 403
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_17

    :catchall_0
    move-exception v0

    .line 407
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 408
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_23
    :goto_17
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    const/4 v0, 0x0

    .line 862
    iput-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 863
    iput-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1138
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1135
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 789
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 791
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 792
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 641
    iget-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    iget-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00fc

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00fb

    :goto_0
    invoke-static {p1, p3, p2, v0}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object p1

    .line 642
    iget-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0902ad

    .line 643
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 645
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 649
    :cond_1
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/high16 p3, 0x60000

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/NewsItemTag;

    iget-object p2, p2, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    iget-object p2, p2, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    check-cast p2, Lcom/perm/kate/ScaleTextView;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lcom/perm/kate/ScaleTextView;->dontConsumeNonUrlClicks:Z

    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 783
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
