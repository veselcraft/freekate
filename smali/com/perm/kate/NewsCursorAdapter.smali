.class public Lcom/perm/kate/NewsCursorAdapter;
.super Landroid/widget/CursorAdapter;
.source "NewsCursorAdapter.java"


# static fields
.field public static MAX_TEXT_LENGTH:I

.field static pattern:Ljava/util/regex/Pattern;

.field private static pattern_string:Ljava/lang/String;


# instance fields
.field account_id:J

.field activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field attachments_cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;>;"
        }
    .end annotation
.end field

.field big_photos:Z

.field card_style_news:Z

.field collapse_news:Z

.field private commentsClickListener:Landroid/view/View$OnClickListener;

.field fragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field gray_color:I

.field groupCache:Lcom/perm/utils/GroupCache;

.field is_clickable_count_views:Z

.field private likesClickListener:Landroid/view/View$OnClickListener;

.field old_style_news:Z

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private repostsClickListener:Landroid/view/View$OnClickListener;

.field userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x118

    sput v0, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    .line 726
    const-string v0, "\\[([^\\]\\[]*?)(:bp-\\d*_\\d*)?\\|(.*?)\\]"

    sput-object v0, Lcom/perm/kate/NewsCursorAdapter;->pattern_string:Ljava/lang/String;

    .line 728
    sget-object v0, Lcom/perm/kate/NewsCursorAdapter;->pattern_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;)V
    .locals 10
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 60
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    .line 63
    iput-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    .line 65
    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    .line 67
    iput-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    .line 68
    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    .line 475
    new-instance v1, Lcom/perm/utils/GroupCache;

    invoke-direct {v1}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 476
    new-instance v1, Lcom/perm/utils/UserCache;

    invoke-direct {v1}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 665
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$1;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 785
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$3;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    .line 795
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$4;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    .line 805
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$5;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    .line 814
    new-instance v1, Lcom/perm/kate/NewsCursorAdapter$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewsCursorAdapter$6;-><init>(Lcom/perm/kate/NewsCursorAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 72
    iput-object p1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 73
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->fragment:Ljava/lang/ref/WeakReference;

    .line 74
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/perm/kate/NewsCursorAdapter;->account_id:J

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, "left_pane_offset":I
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v1, :cond_0

    .line 77
    sget v3, Lcom/perm/kate/KApplication;->LEFT_PANE_NEWS_MIN_WIDTH:I

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v5, 0x14

    .line 81
    .local v5, "bubble_offset":I
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v5, 0x0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v6, 0xc

    .line 86
    .local v6, "photo_offset":I
    :goto_1
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    iget-object v4, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v4

    const/4 v7, 0x3

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 89
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getReadMoreColor(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/NewsCursorAdapter;->gray_color:I

    .line 90
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->isCollapseNewsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    .line 92
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    .line 94
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    .line 95
    return-void

    .end local v5    # "bubble_offset":I
    .end local v6    # "photo_offset":I
    :cond_2
    move v5, v0

    .line 79
    goto :goto_0

    .restart local v5    # "bubble_offset":I
    :cond_3
    move v6, v0

    .line 84
    goto :goto_1
.end method

.method public static ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 2
    .param p0, "group_id"    # Ljava/lang/Long;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 684
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 685
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 686
    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 687
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 688
    return-void
.end method

.method protected static ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 693
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 695
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewsCursorAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewsCursorAdapter;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object v0
.end method

.method private static createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Z)Landroid/text/style/ClickableSpan;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gl"    # Lcom/perm/kate/GroupLink;
    .param p2, "clickable"    # Z

    .prologue
    .line 754
    if-nez p2, :cond_0

    .line 755
    new-instance v0, Landroid/text/style/URLSpan;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 756
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/perm/kate/NewsCursorAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewsCursorAdapter$2;-><init>(Landroid/app/Activity;Lcom/perm/kate/GroupLink;)V

    goto :goto_0
.end method

.method public static createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "big_photos"    # Z
    .param p3, "layout_id"    # I

    .prologue
    .line 578
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 579
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    invoke-virtual {v1, p3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 580
    .local v3, "v":Landroid/view/View;
    new-instance v0, Lcom/perm/kate/ViewHolder;

    invoke-direct {v0}, Lcom/perm/kate/ViewHolder;-><init>()V

    .line 581
    .local v0, "h":Lcom/perm/kate/ViewHolder;
    const v4, 0x7f0e0270

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    .line 582
    const v4, 0x7f0e026e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    .line 583
    const v4, 0x7f0e026c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    .line 584
    const v4, 0x7f0e026f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    .line 585
    const v4, 0x7f0e0085

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    .line 586
    const v4, 0x7f0e0075

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    .line 587
    const v4, 0x7f0e02b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    .line 588
    const v4, 0x7f0e01ef

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    .line 589
    const v4, 0x7f0e02b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    .line 590
    const v4, 0x7f0e02b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->views_text:Landroid/widget/TextView;

    .line 591
    const v4, 0x7f0e0082

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    .line 592
    const v4, 0x7f0e0084

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    .line 593
    const v4, 0x7f0e0073

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    .line 594
    const v4, 0x7f0e0074

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    .line 595
    const v4, 0x7f0e02b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    .line 596
    const v4, 0x7f0e02b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    .line 597
    const v4, 0x7f0e02b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    .line 598
    const v4, 0x7f0e02ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    .line 599
    const v4, 0x7f0e02bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    .line 600
    const v4, 0x7f0e02bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    .line 601
    new-instance v2, Lcom/perm/kate/NewsItemTag;

    invoke-direct {v2}, Lcom/perm/kate/NewsItemTag;-><init>()V

    .line 602
    .local v2, "tag":Lcom/perm/kate/NewsItemTag;
    iput-object v0, v2, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 603
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 605
    return-object v3
.end method

.method public static cropLongText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Landroid/text/SpannableStringBuilder;
    .param p2, "gray_color"    # I

    .prologue
    .line 366
    :try_start_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sget v3, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0703a1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "suffix":Ljava/lang/String;
    sget v2, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 369
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 370
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sget v3, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    sget v4, Lcom/perm/kate/NewsCursorAdapter;->MAX_TEXT_LENGTH:I

    .line 373
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/16 v5, 0x21

    .line 370
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "suffix":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private displayComments(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 423
    const v2, 0x7f0e02bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 424
    .local v12, "container":Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 426
    const-string v2, "comments_json"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 427
    .local v11, "comments_json":Ljava/lang/String;
    if-eqz v11, :cond_6

    const-string v2, ""

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 428
    new-instance v17, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 429
    .local v17, "json":Lorg/json/JSONArray;
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v13

    .line 430
    .local v13, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v13, :cond_6

    .line 432
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/perm/kate/api/Comment;->parse(Lorg/json/JSONObject;)Lcom/perm/kate/api/Comment;

    move-result-object v9

    .line 433
    .local v9, "c":Lcom/perm/kate/api/Comment;
    invoke-static/range {p2 .. p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    .line 434
    .local v16, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030041

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 435
    .local v21, "v":Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v2, v9, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/CommentListAdapter;->removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, "comment_text":Ljava/lang/String;
    iget-object v2, v9, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v9, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 438
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 440
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v5, v9, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 442
    :cond_1
    const v2, 0x7f0e0071

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v3, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const v2, 0x7f0e0076

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-wide v6, v9, Lcom/perm/kate/api/Comment;->date:J

    invoke-static {v3, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/16 v20, 0x0

    .line 445
    .local v20, "user":Lcom/perm/kate/api/User;
    const/4 v14, 0x0

    .line 446
    .local v14, "group":Lcom/perm/kate/api/Group;
    iget-wide v2, v9, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    iget-wide v6, v9, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v20

    .line 450
    :goto_1
    if-nez v20, :cond_2

    if-eqz v14, :cond_3

    .line 451
    :cond_2
    const v2, 0x7f0e006f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 452
    .local v4, "img_comment_photo":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v2, 0x7f0e026f

    iget-wide v6, v9, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 454
    const v2, 0x7f0e0070

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 455
    .local v19, "tv_comment_name":Landroid/widget/TextView;
    if-eqz v20, :cond_5

    .line 456
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 457
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 456
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v19    # "tv_comment_name":Landroid/widget/TextView;
    :cond_3
    :goto_2
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 430
    .end local v9    # "c":Lcom/perm/kate/api/Comment;
    .end local v10    # "comment_text":Ljava/lang/String;
    .end local v14    # "group":Lcom/perm/kate/api/Group;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v20    # "user":Lcom/perm/kate/api/User;
    .end local v21    # "v":Landroid/view/View;
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 449
    .restart local v9    # "c":Lcom/perm/kate/api/Comment;
    .restart local v10    # "comment_text":Ljava/lang/String;
    .restart local v14    # "group":Lcom/perm/kate/api/Group;
    .restart local v16    # "inflater":Landroid/view/LayoutInflater;
    .restart local v20    # "user":Lcom/perm/kate/api/User;
    .restart local v21    # "v":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    iget-wide v6, v9, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v14

    goto :goto_1

    .line 460
    .restart local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .restart local v19    # "tv_comment_name":Landroid/widget/TextView;
    :cond_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v14, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 461
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 460
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 462
    iget-object v2, v14, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 466
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v9    # "c":Lcom/perm/kate/api/Comment;
    .end local v10    # "comment_text":Ljava/lang/String;
    .end local v14    # "group":Lcom/perm/kate/api/Group;
    .end local v16    # "inflater":Landroid/view/LayoutInflater;
    .end local v19    # "tv_comment_name":Landroid/widget/TextView;
    .end local v20    # "user":Lcom/perm/kate/api/User;
    .end local v21    # "v":Landroid/view/View;
    :catch_0
    move-exception v18

    .line 467
    .local v18, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    .line 468
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 472
    .end local v13    # "count":I
    .end local v15    # "i":I
    .end local v17    # "json":Lorg/json/JSONArray;
    .end local v18    # "th":Ljava/lang/Throwable;
    :cond_6
    return-void
.end method

.method public static displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V
    .locals 5
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;
    .param p1, "comment_count"    # J
    .param p3, "hide"    # Z

    .prologue
    const/4 v0, 0x0

    .line 511
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_comments_count:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 6
    .param p0, "like_count"    # J
    .param p2, "i_like"    # Z
    .param p3, "likes_view"    # Landroid/view/View;
    .param p4, "like_count_text"    # Landroid/widget/TextView;
    .param p5, "likes_heart"    # Landroid/widget/ImageView;
    .param p6, "hide"    # Z

    .prologue
    const v4, 0x7f020117

    const/4 v0, 0x0

    .line 521
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_1

    .line 522
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 524
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    if-eqz p2, :cond_0

    .line 526
    const v0, 0x7f020118

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 534
    :goto_0
    return-void

    .line 528
    :cond_0
    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 530
    :cond_1
    if-eqz p6, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 531
    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 532
    const-string v0, ""

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 355
    const-string v3, "online"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 356
    .local v0, "index":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 362
    :goto_0
    return-void

    .line 359
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 360
    .local v1, "online":I
    const v3, 0x7f0e022b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 361
    .local v2, "onlineView":Landroid/view/View;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    goto :goto_1
.end method

.method public static displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;Lcom/perm/utils/GroupCache;)V
    .locals 12
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;
    .param p1, "user_name"    # Ljava/lang/String;
    .param p2, "source_id_long"    # J
    .param p4, "listener"    # Landroid/view/View$OnClickListener;
    .param p5, "url_photo"    # Ljava/lang/String;
    .param p6, "groupCache"    # Lcom/perm/utils/GroupCache;

    .prologue
    const/16 v6, 0x5a

    const/4 v5, 0x1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v4, 0x7f0701db

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 481
    .local v10, "hint":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 487
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    .line 488
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    move-object/from16 v3, p5

    move v8, v5

    .line 487
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 506
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const v3, 0x7f0e026f

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 508
    return-void

    .line 492
    :cond_0
    move-object/from16 v0, p6

    invoke-virtual {v0, p2, p3}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v9

    .line 493
    .local v9, "g":Lcom/perm/kate/api/Group;
    if-eqz v9, :cond_1

    .line 494
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    iget-object v3, v9, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 496
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, v9, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    .line 497
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    move v8, v5

    .line 496
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->tv_posts_news_user_name:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v2, p0, Lcom/perm/kate/ViewHolder;->img_posts_news_user_photo:Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static displayRepostsCount(Lcom/perm/kate/ViewHolder;JZ)V
    .locals 5
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;
    .param p1, "reposts_count"    # J
    .param p3, "hide"    # Z

    .prologue
    const/4 v0, 0x0

    .line 537
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    :goto_0
    return-void

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_reposts_count:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 8
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;
    .param p1, "copy_owner_id"    # Ljava/lang/Long;
    .param p2, "groupCache"    # Lcom/perm/utils/GroupCache;
    .param p3, "userCache"    # Lcom/perm/utils/UserCache;
    .param p4, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p5, "copy_text"    # Ljava/lang/String;
    .param p6, "linkClickable"    # Z
    .param p7, "activity"    # Landroid/app/Activity;

    .prologue
    .line 384
    const/4 v4, 0x0

    iput-object v4, p4, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 385
    const/4 v4, 0x0

    iput-object v4, p4, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    .line 387
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 388
    const-string v2, ""

    .line 389
    .local v2, "original_name":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 390
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v1

    .line 391
    .local v1, "g":Lcom/perm/kate/api/Group;
    if-eqz v1, :cond_0

    .line 392
    iget-object v2, v1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 393
    :cond_0
    iput-object v1, p4, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    .line 400
    .end local v1    # "g":Lcom/perm/kate/api/Group;
    :goto_0
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->original_name:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .end local v2    # "original_name":Ljava/lang/String;
    :goto_1
    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 408
    if-eqz p6, :cond_4

    if-eqz p7, :cond_4

    .line 409
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 410
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 411
    const/4 v4, 0x1

    invoke-static {v0, p7, v4}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 412
    const/4 v4, 0x1

    invoke-static {v0, p7, v4}, Lcom/perm/kate/WallMessageActivity;->createHashtagLinks(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 413
    invoke-static {p7, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 414
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 420
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_2
    return-void

    .line 395
    .restart local v2    # "original_name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v3

    .line 396
    .local v3, "u":Lcom/perm/kate/api/User;
    if-eqz v3, :cond_2

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_2
    iput-object v3, p4, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    goto :goto_0

    .line 403
    .end local v2    # "original_name":Ljava/lang/String;
    .end local v3    # "u":Lcom/perm/kate/api/User;
    :cond_3
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 417
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5, p5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 419
    :cond_5
    iget-object v4, p0, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;)V
    .locals 4
    .param p0, "signer_id"    # J
    .param p2, "signerView"    # Landroid/widget/TextView;
    .param p3, "userCache"    # Lcom/perm/utils/UserCache;

    .prologue
    .line 775
    const/4 v0, 0x0

    .line 776
    .local v0, "signer":Lcom/perm/kate/api/User;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 777
    invoke-virtual {p3, p0, p1}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 778
    :cond_0
    if-eqz v0, :cond_1

    .line 779
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :goto_0
    return-void

    .line 782
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "h"    # Lcom/perm/kate/ViewHolder;
    .param p2, "is_spam"    # Z
    .param p3, "old_style_news"    # Z
    .param p4, "signerView"    # Landroid/view/View;

    .prologue
    const v3, 0x7f0e02b1

    const/16 v2, 0x8

    .line 828
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    if-eqz p2, :cond_3

    .line 832
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 835
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    .line 836
    if-nez p3, :cond_2

    .line 837
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 838
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->original_name_layout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->copy_text:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 840
    invoke-virtual {p4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 842
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 844
    if-nez p3, :cond_0

    .line 845
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "h"    # Lcom/perm/kate/ViewHolder;

    .prologue
    .line 850
    const-string v2, "views"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 851
    .local v1, "views_index":I
    const/4 v0, 0x0

    .line 852
    .local v0, "views":Ljava/lang/Integer;
    invoke-interface {p0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 853
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 854
    :cond_0
    invoke-static {v0, p1}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V

    .line 855
    return-void
.end method

.method static displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V
    .locals 4
    .param p0, "views"    # Ljava/lang/Integer;
    .param p1, "h"    # Lcom/perm/kate/ViewHolder;

    .prologue
    const v3, 0xf4240

    .line 859
    iget-object v1, p1, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    if-nez v1, :cond_0

    .line 876
    :goto_0
    return-void

    .line 862
    :cond_0
    if-nez p0, :cond_1

    .line 863
    iget-object v1, p1, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 867
    :cond_1
    iget-object v1, p1, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 869
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    .local v0, "views_str":Ljava/lang/String;
    :goto_1
    iget-object v1, p1, Lcom/perm/kate/ViewHolder;->views_text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    .end local v0    # "views_str":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_3

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "views_str":Ljava/lang/String;
    goto :goto_1

    .line 874
    .end local v0    # "views_str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "views_str":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getCardBgByTheme()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    sparse-switch v0, :sswitch_data_0

    .line 138
    const v0, 0x7f0200ef

    :goto_0
    return v0

    .line 130
    :sswitch_0
    const v0, 0x7f0200f1

    goto :goto_0

    .line 132
    :sswitch_1
    const v0, 0x7f0200f2

    goto :goto_0

    .line 134
    :sswitch_2
    const v0, 0x7f0200f0

    goto :goto_0

    .line 136
    :sswitch_3
    const v0, 0x7f0200f3

    goto :goto_0

    .line 128
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00c0 -> :sswitch_2
        0x7f0a00c2 -> :sswitch_0
        0x7f0a00c6 -> :sswitch_1
        0x7f0a00cc -> :sswitch_3
    .end sparse-switch
.end method

.method public static getCardStyleFlag(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x1

    .line 112
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f07052c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 113
    .local v0, "pref_value":Z
    const/4 v1, 0x0

    .line 114
    .local v1, "theme_value":Z
    sget v3, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v3, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    :goto_1
    return v2

    .line 121
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 609
    const-string v6, "friend_first_names"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "first_names_str":Ljava/lang/String;
    const-string v6, "friend_last_names"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 612
    .local v5, "last_names_str":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v5, :cond_2

    .line 613
    :cond_0
    const-string v2, ""

    .line 625
    :cond_1
    return-object v2

    .line 614
    :cond_2
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "first_names":[Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 616
    .local v4, "last_names":[Ljava/lang/String;
    const-string v2, ""

    .line 618
    .local v2, "friends":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    array-length v6, v4

    if-ge v3, v6, :cond_1

    .line 619
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 620
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 621
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 622
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 623
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 618
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getOldStyleFlag(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f070545

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "srcs_str"    # Ljava/lang/String;
    .param p3, "ids_str"    # Ljava/lang/String;
    .param p4, "src_bigs_str"    # Ljava/lang/String;
    .param p5, "album_str"    # Ljava/lang/String;
    .param p6, "owners_str"    # Ljava/lang/String;
    .param p7, "widths_str"    # Ljava/lang/String;
    .param p8, "heights_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 631
    .local v10, "srcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 632
    .local v5, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 633
    .local v9, "src_bigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 634
    .local v2, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 635
    .local v6, "owners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 636
    .local v11, "widths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/perm/kate/NewsCursorAdapter;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 637
    .local v3, "heights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_2

    .line 639
    new-instance v7, Lcom/perm/kate/api/Photo;

    invoke-direct {v7}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 640
    .local v7, "p":Lcom/perm/kate/api/Photo;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/perm/kate/api/Photo;->pid:J

    .line 641
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v7, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 642
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v7, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 643
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v7, Lcom/perm/kate/api/Photo;->aid:J

    .line 644
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iput-object v12, v7, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 645
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v13, v4, 0x1

    if-lt v12, v13, :cond_0

    .line 646
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/perm/kate/api/Photo;->width:I

    .line 647
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v13, v4, 0x1

    if-lt v12, v13, :cond_1

    .line 648
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v7, Lcom/perm/kate/api/Photo;->height:I

    .line 649
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    .end local v7    # "p":Lcom/perm/kate/api/Photo;
    :cond_2
    return-object v8
.end method

.method public static getReadMoreColor(Landroid/app/Activity;)I
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 103
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f01013b

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method public static hideCountViews(Lcom/perm/kate/ViewHolder;)V
    .locals 2
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;

    .prologue
    const/16 v1, 0x8

    .line 547
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->views_container:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 553
    :cond_0
    return-void
.end method

.method public static hideFields(Lcom/perm/kate/ViewHolder;)V
    .locals 2
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;

    .prologue
    .line 556
    invoke-static {p0}, Lcom/perm/kate/NewsCursorAdapter;->hideGraffity(Lcom/perm/kate/ViewHolder;)V

    .line 557
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 559
    :cond_0
    return-void
.end method

.method public static hideGraffity(Lcom/perm/kate/ViewHolder;)V
    .locals 2
    .param p0, "h"    # Lcom/perm/kate/ViewHolder;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    return-void
.end method

.method public static isCollapseNewsEnabled()Z
    .locals 3

    .prologue
    .line 98
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
    .param p0, "v"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v4, 0x0

    .line 673
    const v1, 0x7f0e026f

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 675
    .local v0, "user_id":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 678
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perm/kate/NewsCursorAdapter;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 680
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/perm/kate/NewsCursorAdapter;->ShowGroup(Ljava/lang/Long;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static shouldDisplayBigPhotos()Z
    .locals 5

    .prologue
    .line 714
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 715
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070548

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "key":Ljava/lang/String;
    const-string v3, "0"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    .local v2, "value":Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 718
    invoke-static {}, Lcom/perm/kate/Helper;->isWifi()Z

    move-result v3

    .line 721
    :goto_0
    return v3

    .line 719
    :cond_0
    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 720
    const/4 v3, 0x1

    goto :goto_0

    .line 721
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V
    .locals 9
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "clickable"    # Z

    .prologue
    .line 732
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v1, "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/GroupLink;>;"
    sget-object v5, Lcom/perm/kate/NewsCursorAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 734
    .local v2, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    new-instance v0, Lcom/perm/kate/GroupLink;

    invoke-direct {v0}, Lcom/perm/kate/GroupLink;-><init>()V

    .line 736
    .local v0, "gl":Lcom/perm/kate/GroupLink;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/perm/kate/GroupLink;->index:I

    .line 737
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v0, Lcom/perm/kate/GroupLink;->len:I

    .line 738
    iget v5, v0, Lcom/perm/kate/GroupLink;->index:I

    iget v6, v0, Lcom/perm/kate/GroupLink;->index:I

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://vk.com/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/perm/kate/GroupLink;->link:Ljava/lang/String;

    .line 741
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    .end local v0    # "gl":Lcom/perm/kate/GroupLink;
    .end local v1    # "links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/GroupLink;>;"
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v4

    .line 748
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 749
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 751
    .end local v4    # "th":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 743
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

    .line 744
    .restart local v0    # "gl":Lcom/perm/kate/GroupLink;
    invoke-static {p1, v0, p2}, Lcom/perm/kate/NewsCursorAdapter;->createLinkSpan(Landroid/app/Activity;Lcom/perm/kate/GroupLink;Z)Landroid/text/style/ClickableSpan;

    move-result-object v3

    .line 745
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

.method private split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "srcs_str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v1, "src_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 662
    :cond_0
    return-object v1

    .line 658
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "src_arr":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 660
    .local v2, "tmp":Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 661
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 64
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 145
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/NewsItemTag;

    .line 146
    .local v14, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v14, :cond_1

    .line 352
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_0
    :goto_0
    return-void

    .line 148
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_1
    iget-object v4, v14, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 149
    .local v4, "h":Lcom/perm/kate/ViewHolder;
    if-eqz v4, :cond_0

    .line 151
    const/16 v43, 0x0

    .line 152
    .local v43, "hide_count_views":Z
    const-string v8, "type"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 153
    .local v62, "type":Ljava/lang/String;
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 154
    const-string v8, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 155
    .local v48, "long_date":J
    const-string v8, "text"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 156
    .local v60, "text":Ljava/lang/String;
    const-string v8, "is_comments"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v46

    .line 157
    .local v46, "is_comments":I
    const-string v8, "photo"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 158
    const/16 v43, 0x1

    .line 159
    if-nez v46, :cond_a

    .line 160
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v10, 0x7f07044f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 203
    :goto_1
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_13

    .line 204
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :goto_2
    const-string v8, "source_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 209
    .local v57, "source_id":Ljava/lang/String;
    invoke-static/range {v57 .. v57}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 211
    .local v6, "source_id_long":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "first_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "last_name"

    .line 212
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, "user_name":Ljava/lang/String;
    const-string v8, "photo"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 214
    .local v9, "user_photo":Ljava/lang/String;
    const/4 v8, 0x1

    move/from16 v0, v46

    if-ne v0, v8, :cond_2

    const-string v8, "post"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    const-string v8, "from_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 216
    .local v44, "from_id":J
    const-wide/16 v12, 0x0

    cmp-long v8, v44, v12

    if-lez v8, :cond_2

    .line 217
    move-wide/from16 v6, v44

    .line 218
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v8, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v63

    .line 219
    .local v63, "u":Lcom/perm/kate/api/User;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v63

    iget-object v10, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v63

    iget-object v10, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 220
    move-object/from16 v0, v63

    iget-object v9, v0, Lcom/perm/kate/api/User;->photo:Ljava/lang/String;

    .line 223
    .end local v44    # "from_id":J
    .end local v63    # "u":Lcom/perm/kate/api/User;
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;Lcom/perm/utils/GroupCache;)V

    .line 227
    const-string v8, "copy_owner_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 228
    .local v11, "copy_owner_id":Ljava/lang/Long;
    const-string v8, "copy_text"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 229
    .local v15, "copy_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/NewsCursorAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v4

    invoke-static/range {v10 .. v17}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v0, v48

    invoke-static {v8, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v36

    .line 233
    .local v36, "ago_text":Ljava/lang/String;
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    if-nez v43, :cond_19

    .line 237
    const-string v8, "comment_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 238
    .local v40, "comment_count":J
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v8, :cond_14

    const/4 v8, 0x1

    :goto_3
    move-wide/from16 v0, v40

    invoke-static {v4, v0, v1, v8}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 240
    const-string v8, "comment_can_post"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v18, 0x1

    cmp-long v8, v12, v18

    if-nez v8, :cond_15

    const/16 v38, 0x1

    .line 241
    .local v38, "comment_can_post":Z
    :goto_4
    move/from16 v0, v38

    iput-boolean v0, v14, Lcom/perm/kate/NewsItemTag;->comment_can_post:Z

    .line 243
    const-string v8, "user_like"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const-wide/16 v18, 0x1

    cmp-long v8, v12, v18

    if-nez v8, :cond_16

    const/4 v8, 0x1

    :goto_5
    iput-boolean v8, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 246
    const-string v8, "like_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 247
    .local v16, "like_count":J
    iget-boolean v0, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    move/from16 v18, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v8, :cond_17

    const/16 v22, 0x1

    :goto_6
    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 250
    const-string v8, "reposts_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 251
    .local v54, "reposts_count":J
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-nez v8, :cond_18

    const/4 v8, 0x1

    :goto_7
    move-wide/from16 v0, v54

    invoke-static {v4, v0, v1, v8}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 256
    .end local v16    # "like_count":J
    .end local v38    # "comment_can_post":Z
    .end local v40    # "comment_count":J
    .end local v54    # "reposts_count":J
    :goto_8
    move-object/from16 v0, v57

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 257
    const/4 v8, 0x0

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 258
    const/4 v8, 0x0

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 259
    move-object/from16 v0, v62

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 260
    move-object/from16 v0, v60

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 261
    move-wide/from16 v0, v48

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->date:J

    .line 263
    const-string v8, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 264
    .local v20, "_id":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    .line 265
    .local v37, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez v37, :cond_3

    .line 266
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v8, :cond_3

    .line 267
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v8}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 268
    .local v35, "account_id":Ljava/lang/Long;
    sget-object v18, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v19, 0x1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v37

    .line 269
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v37

    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v35    # "account_id":Ljava/lang/Long;
    :cond_3
    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 274
    new-instance v52, Ljava/util/ArrayList;

    invoke-direct/range {v52 .. v52}, Ljava/util/ArrayList;-><init>()V

    .line 276
    .local v52, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    const-string v8, "photo"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "photo_tag"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "wall_photo"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 277
    :cond_4
    const-string v24, "photo_srcs"

    const-string v25, "photo_ids"

    const-string v26, "photo_srcs_big"

    const-string v27, "album_ids"

    const-string v28, "owner_ids"

    const-string v29, "photo_widths"

    const-string v30, "photo_heights"

    move-object/from16 v22, p0

    move-object/from16 v23, p3

    invoke-direct/range {v22 .. v30}, Lcom/perm/kate/NewsCursorAdapter;->getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    const-string v24, "photo_srcs_tag"

    const-string v25, "photo_ids_tag"

    const-string v26, "phototag_srcs_big"

    const-string v27, "album_ids_tag"

    const-string v28, "owner_ids_tag"

    const-string v29, "photo_tag_widths"

    const-string v30, "photo_tag_heights"

    move-object/from16 v22, p0

    move-object/from16 v23, p3

    invoke-direct/range {v22 .. v30}, Lcom/perm/kate/NewsCursorAdapter;->getPhotos(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 281
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 282
    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lcom/perm/kate/api/Photo;

    .line 284
    .local v51, "ph":Lcom/perm/kate/api/Photo;
    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 285
    move-object/from16 v0, v51

    iget-wide v12, v0, Lcom/perm/kate/api/Photo;->aid:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 286
    move-object/from16 v0, v51

    iget-wide v12, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    .line 295
    .end local v51    # "ph":Lcom/perm/kate/api/Photo;
    :cond_5
    :goto_9
    const/16 v47, 0x0

    .line 297
    .local v47, "is_spam":Z
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 298
    invoke-static/range {v60 .. v60}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v15}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_6
    const/16 v47, 0x1

    .line 300
    :cond_7
    :goto_a
    const-string v8, "post_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    .line 301
    .local v26, "post_id":Ljava/lang/String;
    move-object/from16 v27, v57

    .line 302
    .local v27, "owner_id":Ljava/lang/String;
    const v8, 0x7f0e0086

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 303
    .local v32, "audio_container":Landroid/view/ViewGroup;
    const v8, 0x7f0e0087

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    .line 304
    .local v33, "gift_container":Landroid/view/ViewGroup;
    if-eqz v47, :cond_8

    .line 305
    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->clear()V

    .line 306
    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v29, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    move-object/from16 v23, v52

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    move-object/from16 v28, v37

    invoke-virtual/range {v22 .. v34}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :try_start_1
    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 313
    move-object/from16 v0, v57

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 319
    :goto_b
    :try_start_2
    invoke-direct/range {p0 .. p3}, Lcom/perm/kate/NewsCursorAdapter;->displayComments(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 321
    const-string v8, "signer_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    .line 322
    .local v58, "signer_id":J
    const v8, 0x7f0e02b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v56

    check-cast v56, Landroid/widget/TextView;

    .line 323
    .local v56, "signerView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->userCache:Lcom/perm/utils/UserCache;

    move-wide/from16 v0, v58

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2, v8}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;)V

    .line 326
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 328
    if-nez v43, :cond_9

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->is_clickable_count_views:Z

    if-eqz v8, :cond_9

    .line 329
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v10, 0x7f0e0231

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 330
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v10, 0x7f0e0237

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 331
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v10, 0x7f0e023a

    iget-boolean v12, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 332
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewsCursorAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    invoke-virtual {v8, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 335
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v10, 0x7f0e0231

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 336
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v10, 0x7f0e0237

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 337
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewsCursorAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v10, 0x7f0e0231

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 339
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v10, 0x7f0e0237

    iget-object v12, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v8, v10, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 340
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/NewsCursorAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    :cond_9
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    move-object/from16 v0, p1

    move/from16 v1, v47

    move-object/from16 v2, v56

    invoke-static {v0, v4, v1, v8, v2}, Lcom/perm/kate/NewsCursorAdapter;->displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 348
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "user_name":Ljava/lang/String;
    .end local v6    # "source_id_long":J
    .end local v9    # "user_photo":Ljava/lang/String;
    .end local v11    # "copy_owner_id":Ljava/lang/Long;
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .end local v15    # "copy_text":Ljava/lang/String;
    .end local v20    # "_id":J
    .end local v26    # "post_id":Ljava/lang/String;
    .end local v27    # "owner_id":Ljava/lang/String;
    .end local v32    # "audio_container":Landroid/view/ViewGroup;
    .end local v33    # "gift_container":Landroid/view/ViewGroup;
    .end local v36    # "ago_text":Ljava/lang/String;
    .end local v37    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v43    # "hide_count_views":Z
    .end local v46    # "is_comments":I
    .end local v47    # "is_spam":Z
    .end local v48    # "long_date":J
    .end local v52    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .end local v56    # "signerView":Landroid/widget/TextView;
    .end local v57    # "source_id":Ljava/lang/String;
    .end local v58    # "signer_id":J
    .end local v60    # "text":Ljava/lang/String;
    .end local v62    # "type":Ljava/lang/String;
    :catch_0
    move-exception v61

    .line 349
    .local v61, "th":Ljava/lang/Throwable;
    invoke-static/range {v61 .. v61}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 350
    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 162
    .end local v61    # "th":Ljava/lang/Throwable;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .restart local v43    # "hide_count_views":Z
    .restart local v46    # "is_comments":I
    .restart local v48    # "long_date":J
    .restart local v60    # "text":Ljava/lang/String;
    .restart local v62    # "type":Ljava/lang/String;
    :cond_a
    :try_start_3
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v10, 0x7f07035f

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 164
    :cond_b
    const-string v8, "wall_photo"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 165
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v10, 0x7f070028

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 166
    const/16 v43, 0x1

    goto/16 :goto_1

    .line 167
    :cond_c
    const-string v8, "photo_tag"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 168
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const v10, 0x7f070450

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 169
    const/16 v43, 0x1

    goto/16 :goto_1

    .line 170
    :cond_d
    const-string v8, "friend"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->getFriendsString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v42

    .line 172
    .local v42, "friends":Ljava/lang/String;
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f070448

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v42

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    move-object/from16 v0, v42

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->friends:Ljava/lang/String;

    .line 175
    const-string v8, "friend_ids"

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->friend_ids:Ljava/lang/String;

    .line 176
    const/16 v43, 0x1

    .line 177
    goto/16 :goto_1

    .line 178
    .end local v42    # "friends":Ljava/lang/String;
    :cond_e
    const-string v8, "note"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f070449

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ": "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "note_titles"

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 180
    .local v50, "note_text":Ljava/lang/String;
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 184
    .end local v50    # "note_text":Ljava/lang/String;
    :cond_f
    const-string v8, "audio"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 186
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    const/16 v43, 0x1

    goto/16 :goto_1

    .line 188
    :cond_10
    const-string v8, "video"

    move-object/from16 v0, v62

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 190
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const/16 v43, 0x1

    goto/16 :goto_1

    .line 193
    :cond_11
    new-instance v53, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v53

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    .local v53, "preview":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v10, 0x0

    move-object/from16 v0, v53

    invoke-static {v0, v8, v10}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 195
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/NewsCursorAdapter;->collapse_news:Z

    if-eqz v8, :cond_12

    .line 196
    move-object/from16 v0, p0

    iget v8, v0, Lcom/perm/kate/NewsCursorAdapter;->gray_color:I

    move-object/from16 v0, p2

    move-object/from16 v1, v53

    invoke-static {v0, v1, v8}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 198
    :cond_12
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v53

    invoke-static {v8, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v53

    .line 199
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    move-object/from16 v0, v53

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 206
    .end local v53    # "preview":Landroid/text/SpannableStringBuilder;
    :cond_13
    iget-object v8, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_text:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 238
    .restart local v5    # "user_name":Ljava/lang/String;
    .restart local v6    # "source_id_long":J
    .restart local v9    # "user_photo":Ljava/lang/String;
    .restart local v11    # "copy_owner_id":Ljava/lang/Long;
    .restart local v15    # "copy_text":Ljava/lang/String;
    .restart local v36    # "ago_text":Ljava/lang/String;
    .restart local v40    # "comment_count":J
    .restart local v57    # "source_id":Ljava/lang/String;
    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 240
    :cond_15
    const/16 v38, 0x0

    goto/16 :goto_4

    .line 243
    .restart local v38    # "comment_can_post":Z
    :cond_16
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 247
    .restart local v16    # "like_count":J
    :cond_17
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 251
    .restart local v54    # "reposts_count":J
    :cond_18
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 253
    .end local v16    # "like_count":J
    .end local v38    # "comment_can_post":Z
    .end local v40    # "comment_count":J
    .end local v54    # "reposts_count":J
    :cond_19
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    goto/16 :goto_8

    .line 290
    .restart local v20    # "_id":J
    .restart local v37    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v52    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_1a
    const/4 v8, 0x0

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->photo_owner_id:Ljava/lang/String;

    .line 291
    const/4 v8, 0x0

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->album_id:Ljava/lang/String;

    .line 292
    const/4 v8, 0x0

    iput-object v8, v14, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    goto/16 :goto_9

    .line 298
    .restart local v47    # "is_spam":Z
    :cond_1b
    const/16 v47, 0x0

    goto/16 :goto_a

    .line 315
    .restart local v26    # "post_id":Ljava/lang/String;
    .restart local v27    # "owner_id":Ljava/lang/String;
    .restart local v32    # "audio_container":Landroid/view/ViewGroup;
    .restart local v33    # "gift_container":Landroid/view/ViewGroup;
    :catch_1
    move-exception v39

    .line 316
    .local v39, "ex":Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_b
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 770
    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 771
    iput-object v1, p0, Lcom/perm/kate/NewsCursorAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 772
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 706
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 709
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 567
    iget-boolean v3, p0, Lcom/perm/kate/NewsCursorAdapter;->big_photos:Z

    iget-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0300e1

    :goto_0
    invoke-static {p1, p3, v3, v2}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object v1

    .line 568
    .local v1, "v":Landroid/view/View;
    iget-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->old_style_news:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/NewsCursorAdapter;->card_style_news:Z

    if-eqz v2, :cond_0

    .line 569
    const v2, 0x7f0e02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 570
    .local v0, "root_news_item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 574
    .end local v0    # "root_news_item":Landroid/view/View;
    :cond_0
    return-object v1

    .line 567
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const v2, 0x7f0300e0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/perm/kate/NewsCursorAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 700
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 701
    return-void
.end method
