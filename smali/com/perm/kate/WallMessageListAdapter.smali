.class public Lcom/perm/kate/WallMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "WallMessageListAdapter.java"


# instance fields
.field account_id:J

.field private activity:Lcom/perm/kate/BaseActivity;

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

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private likesClickListener:Landroid/view/View$OnClickListener;

.field old_style_news:Z

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private repostsClickListener:Landroid/view/View$OnClickListener;

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;Landroid/view/View$OnClickListener;I)V
    .locals 8
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p4, "imcl"    # Landroid/view/View$OnClickListener;
    .param p5, "source"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    .line 35
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 36
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 37
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$1;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 302
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$2;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    .line 312
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$3;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    .line 321
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$4;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    .line 334
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallMessageListAdapter$5;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 47
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 48
    iput-object p4, p0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    .line 50
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallMessageListAdapter;->account_id:J

    .line 51
    const/4 v3, 0x0

    .line 52
    .local v3, "left_pane_offset":I
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_0

    .line 53
    sget v3, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 55
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v5, 0x14

    .line 57
    .local v5, "bubble_offset":I
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    const/4 v5, 0x0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v6, 0xc

    .line 62
    .local v6, "photo_offset":I
    :goto_1
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v2, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    iget-object v4, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 63
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_collapse_news"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    .line 66
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getReadMoreColor(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/WallMessageListAdapter;->gray_color:I

    .line 69
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    .line 71
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    .line 72
    return-void

    .line 55
    .end local v5    # "bubble_offset":I
    .end local v6    # "photo_offset":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 60
    .restart local v5    # "bubble_offset":I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallMessageListAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallMessageListAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 60
    .param p1, "vi"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/NewsItemTag;

    .line 78
    .local v14, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v14, :cond_1

    .line 254
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_1
    iget-object v4, v14, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 81
    .local v4, "h":Lcom/perm/kate/ViewHolder;
    if-eqz v4, :cond_0

    .line 83
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 85
    const-string v6, "post_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    .line 86
    .local v26, "post_id":Ljava/lang/String;
    const-string v6, "to_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v27

    .line 87
    .local v27, "owner_id":Ljava/lang/String;
    const-string v6, "text"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 88
    .local v53, "text":Ljava/lang/String;
    const-string v6, "from_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    .line 89
    .local v58, "uid":Ljava/lang/Long;
    const-string v6, "date"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 91
    .local v46, "long_date":J
    const-string v6, "copy_text"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 88
    .local v53, "text":Ljava/lang/String;
    const-string v6, "is_explicit"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_explicit_no

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_explicit_no

    const/4 v6, 0x1

    goto :cond_explicit_set

    :cond_explicit_no
    const/4 v6, 0x0

    :cond_explicit_set
    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_explicit:Z

    .line 93
    .local v15, "copy_text":Ljava/lang/String;
    const/16 v43, 0x0

    .line 95
    .local v43, "is_spam":Z
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 96
    invoke-static/range {v53 .. v53}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v15}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    :cond_2
    const/16 v43, 0x1

    .line 98
    :cond_3
    :goto_1
    iget-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_explicit:Z

    if-eqz v6, :cond_afternsfw

    sget v6, Lcom/perm/kate/KApplication;->nsfw_tolerance:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_afternsfw

    const/16 v43, 0x1

    :cond_afternsfw

    move-wide/from16 v0, v46

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->date:J

    .line 99
    move-object/from16 v0, v26

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 100
    move-object/from16 v0, v27

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 101
    const-string v6, "like"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v12, 0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_10

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 102
    move-object/from16 v0, v53

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 103
    move-object/from16 v0, v58

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    .line 105
    const-string v6, "is_pinned"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 106
    .local v42, "is_pinned_index":I
    const/4 v6, -0x1

    move/from16 v0, v42

    if-eq v0, v6, :cond_4

    .line 107
    move-object/from16 v0, p3

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_11

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    .line 109
    :cond_4
    const-string v6, "first_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 110
    .local v40, "first_name":Ljava/lang/String;
    const-string v6, "last_name"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 111
    .local v44, "last_name":Ljava/lang/String;
    const-string v5, ""

    .line 112
    .local v5, "display_name":Ljava/lang/String;
    if-eqz v40, :cond_5

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_5
    if-eqz v44, :cond_6

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    :cond_6
    const-string v6, "photo_medium_rec"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "url_from_user":Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/WallMessageListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/WallMessageListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;Lcom/perm/utils/GroupCache;)V

    .line 121
    const v6, 0x7f0e026c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v57

    check-cast v57, Landroid/widget/TextView;

    .line 122
    .local v57, "tv_wall_text":Landroid/widget/TextView;
    if-eqz v53, :cond_12

    const-string v6, ""

    move-object/from16 v0, v53

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 123
    const/4 v6, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    new-instance v49, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v49

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v49, "preview":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v7, 0x0

    move-object/from16 v0, v49

    invoke-static {v0, v6, v7}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 126
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    if-eqz v6, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget v6, v0, Lcom/perm/kate/WallMessageListAdapter;->gray_color:I

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-static {v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 129
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v49

    invoke-static {v6, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v49

    .line 130
    move-object/from16 v0, v57

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .end local v49    # "preview":Landroid/text/SpannableStringBuilder;
    :goto_4
    const-string v6, "copy_owner_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 136
    .local v11, "copy_owner_id":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/WallMessageListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v4

    invoke-static/range {v10 .. v17}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 137
    iput-object v11, v14, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 138
    iput-object v15, v14, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 141
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v0, v46

    invoke-static {v6, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v37

    .line 142
    .local v37, "ago_text":Ljava/lang/String;
    iget-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    if-eqz v6, :cond_8

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f070215

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 144
    :cond_8
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const-string v6, "post_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 148
    .local v41, "index":I
    const/16 v48, -0x1

    .line 150
    .local v48, "post_type":I
    const/4 v6, -0x1

    move/from16 v0, v41

    if-eq v0, v6, :cond_9

    .line 151
    move-object/from16 v0, p3

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v48

    .line 152
    :cond_9
    const/4 v6, 0x2

    move/from16 v0, v48

    if-ge v0, v6, :cond_13

    .line 153
    const-string v6, "comments_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 154
    .local v38, "comment_count":J
    const/4 v6, 0x0

    move-wide/from16 v0, v38

    invoke-static {v4, v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 157
    const-string v6, "likes_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 158
    .local v16, "like_count":J
    iget-boolean v0, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    move/from16 v18, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 161
    const-string v6, "reposts_count"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v50

    .line 162
    .local v50, "reposts_count":J
    const/4 v6, 0x0

    move-wide/from16 v0, v50

    invoke-static {v4, v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 165
    .end local v16    # "like_count":J
    .end local v38    # "comment_count":J
    .end local v50    # "reposts_count":J
    :goto_5
    const-string v6, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 166
    .local v20, "_id":J
    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 167
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    .line 168
    .local v28, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    if-nez v28, :cond_a

    .line 169
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    .line 170
    .local v36, "account_id":Ljava/lang/Long;
    sget-object v18, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/16 v19, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const/16 v24, 0x0

    invoke-virtual/range {v18 .. v24}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v28

    .line 171
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v36    # "account_id":Ljava/lang/Long;
    :cond_a
    if-eqz v43, :cond_b

    .line 175
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 177
    :cond_b
    const v6, 0x7f0e0086

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/view/ViewGroup;

    .line 178
    .local v32, "audio_container":Landroid/view/ViewGroup;
    const v6, 0x7f0e0087

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/view/ViewGroup;

    .line 179
    .local v33, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v29, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    move-object/from16 v30, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    move-object/from16 v31, v0

    const/16 v34, 0x0

    .line 180
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    move-object/from16 v24, v14

    move-object/from16 v25, v4

    .line 179
    invoke-virtual/range {v22 .. v35}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;)V

    .line 183
    const-string v6, "signer_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    .line 184
    .local v54, "signer_id":J
    const v6, 0x7f0e02b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v52

    check-cast v52, Landroid/widget/TextView;

    .line 185
    .local v52, "signerView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    move-wide/from16 v0, v54

    move-object/from16 v2, v52

    invoke-static {v0, v1, v2, v6}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;)V

    .line 186
    move-wide/from16 v0, v54

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->signer_id:J

    .line 189
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/perm/kate/NewsCursorAdapter;->displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V

    .line 192
    const/4 v6, -0x1

    move/from16 v0, v48

    if-eq v0, v6, :cond_18

    .line 193
    const/4 v6, 0x2

    move/from16 v0, v48

    if-ne v0, v6, :cond_14

    .line 194
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 195
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 196
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v7, 0x7f070219

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 198
    :cond_c
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 199
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    .line 219
    :goto_6
    const/4 v6, 0x2

    move/from16 v0, v48

    if-ge v0, v6, :cond_d

    .line 221
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 222
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e023a

    iget-boolean v8, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 224
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageListAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 226
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 227
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageListAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 229
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 230
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0062

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 231
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallMessageListAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz v6, :cond_e

    .line 235
    const v6, 0x7f0e02b2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v45

    check-cast v45, Landroid/widget/ImageView;

    .line 237
    .local v45, "menu_view":Landroid/widget/ImageView;
    if-eqz v45, :cond_e

    .line 238
    const/4 v6, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 244
    .end local v45    # "menu_view":Landroid/widget/ImageView;
    :cond_e
    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V

    .line 248
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    move-object/from16 v0, p1

    move/from16 v1, v43

    move-object/from16 v2, v52

    invoke-static {v0, v4, v1, v6, v2}, Lcom/perm/kate/NewsCursorAdapter;->displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 250
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "display_name":Ljava/lang/String;
    .end local v9    # "url_from_user":Ljava/lang/String;
    .end local v11    # "copy_owner_id":Ljava/lang/Long;
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .end local v15    # "copy_text":Ljava/lang/String;
    .end local v20    # "_id":J
    .end local v26    # "post_id":Ljava/lang/String;
    .end local v27    # "owner_id":Ljava/lang/String;
    .end local v28    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v32    # "audio_container":Landroid/view/ViewGroup;
    .end local v33    # "gift_container":Landroid/view/ViewGroup;
    .end local v37    # "ago_text":Ljava/lang/String;
    .end local v40    # "first_name":Ljava/lang/String;
    .end local v41    # "index":I
    .end local v42    # "is_pinned_index":I
    .end local v43    # "is_spam":Z
    .end local v44    # "last_name":Ljava/lang/String;
    .end local v46    # "long_date":J
    .end local v48    # "post_type":I
    .end local v52    # "signerView":Landroid/widget/TextView;
    .end local v53    # "text":Ljava/lang/String;
    .end local v54    # "signer_id":J
    .end local v57    # "tv_wall_text":Landroid/widget/TextView;
    .end local v58    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v56

    .line 251
    .local v56, "th":Ljava/lang/Throwable;
    invoke-static/range {v56 .. v56}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 252
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v56    # "th":Ljava/lang/Throwable;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .restart local v15    # "copy_text":Ljava/lang/String;
    .restart local v26    # "post_id":Ljava/lang/String;
    .restart local v27    # "owner_id":Ljava/lang/String;
    .restart local v43    # "is_spam":Z
    .restart local v46    # "long_date":J
    .restart local v53    # "text":Ljava/lang/String;
    .restart local v58    # "uid":Ljava/lang/Long;
    :cond_f
    const/16 v43, 0x0

    goto/16 :goto_1

    .line 101
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 107
    .restart local v42    # "is_pinned_index":I
    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 132
    .restart local v5    # "display_name":Ljava/lang/String;
    .restart local v9    # "url_from_user":Ljava/lang/String;
    .restart local v40    # "first_name":Ljava/lang/String;
    .restart local v44    # "last_name":Ljava/lang/String;
    .restart local v57    # "tv_wall_text":Landroid/widget/TextView;
    :cond_12
    const/16 v6, 0x8

    :try_start_1
    move-object/from16 v0, v57

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 164
    .restart local v11    # "copy_owner_id":Ljava/lang/Long;
    .restart local v37    # "ago_text":Ljava/lang/String;
    .restart local v41    # "index":I
    .restart local v48    # "post_type":I
    :cond_13
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    goto/16 :goto_5

    .line 200
    .restart local v20    # "_id":J
    .restart local v28    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v32    # "audio_container":Landroid/view/ViewGroup;
    .restart local v33    # "gift_container":Landroid/view/ViewGroup;
    .restart local v52    # "signerView":Landroid/widget/TextView;
    .restart local v54    # "signer_id":J
    :cond_14
    const/4 v6, 0x3

    move/from16 v0, v48

    if-ne v0, v6, :cond_16

    .line 201
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_15

    .line 202
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v7, 0x7f07027a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 205
    :cond_15
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 206
    const/4 v6, 0x1

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto/16 :goto_6

    .line 208
    :cond_16
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_17

    .line 209
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    :cond_17
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 211
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto/16 :goto_6

    .line 214
    :cond_18
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_19

    .line 215
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    :cond_19
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 217
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method public clearAttachmentsCache()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 299
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 295
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 285
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 288
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
    .line 258
    iget-boolean v3, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    iget-boolean v2, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0300e1

    :goto_0
    invoke-static {p1, p3, v3, v2}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object v1

    .line 259
    .local v1, "v":Landroid/view/View;
    iget-boolean v2, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    if-eqz v2, :cond_0

    .line 260
    const v2, 0x7f0e02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 261
    .local v0, "root_news_item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    .end local v0    # "root_news_item":Landroid/view/View;
    :cond_0
    return-object v1

    .line 258
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const v2, 0x7f0300e0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageListAdapter;->clearAttachmentsCache()V

    .line 279
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 280
    return-void
.end method
