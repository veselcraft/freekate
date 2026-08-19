.class public abstract Lcom/perm/kate/WallMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "WallMessageListAdapter.java"


# instance fields
.field account_id:J

.field private activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field attachments_cache:Ljava/util/HashMap;

.field big_photos:Z

.field card_style_news:Z

.field collapse_news:Z

.field private commentsClickListener:Landroid/view/View$OnClickListener;

.field fragment:Ljava/lang/ref/WeakReference;

.field groupCache:Lcom/perm/utils/GroupCache;

.field hide_reposts:Z

.field private itemMenuClickListener:Landroid/view/View$OnClickListener;

.field private likesClickListener:Landroid/view/View$OnClickListener;

.field old_style_news:Z

.field open_news:Ljava/util/HashSet;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private repostsClickListener:Landroid/view/View$OnClickListener;

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;Landroid/view/View$OnClickListener;I)V
    .locals 9

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    .line 36
    new-instance p2, Lcom/perm/utils/GroupCache;

    invoke-direct {p2}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/WallMessageListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 37
    new-instance p2, Lcom/perm/utils/UserCache;

    invoke-direct {p2}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object p2, p0, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 38
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    .line 40
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->open_news:Ljava/util/HashSet;

    .line 41
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    .line 43
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 45
    iput-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->hide_reposts:Z

    .line 296
    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$1;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 329
    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$2;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    .line 339
    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$3;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    .line 348
    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$4;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    .line 361
    new-instance v1, Lcom/perm/kate/WallMessageListAdapter$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallMessageListAdapter$5;-><init>(Lcom/perm/kate/WallMessageListAdapter;)V

    iput-object v1, p0, Lcom/perm/kate/WallMessageListAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 49
    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 50
    iput-object p4, p0, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/perm/kate/WallMessageListAdapter;->fragment:Ljava/lang/ref/WeakReference;

    .line 52
    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/perm/kate/WallMessageListAdapter;->account_id:J

    .line 54
    sget-boolean p3, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz p3, :cond_0

    .line 55
    sget p3, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    move v4, p3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 57
    :goto_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x14

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 59
    :goto_1
    iget-object p3, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p3}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    move v6, p1

    .line 62
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v0, 0xc

    const/16 v7, 0xc

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 64
    :goto_3
    new-instance p1, Lcom/perm/kate/AttachmentsHelper;

    iget-object v2, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v3, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    invoke-static {v2}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v5

    move-object v1, p1

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 65
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p3, "key_collapse_news"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    .line 68
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    .line 70
    iget-object p1, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallMessageListAdapter;)Lcom/perm/utils/RepostHelper$RepostCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/perm/kate/WallMessageListAdapter;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    return-object p0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 39

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    .line 76
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/perm/kate/NewsItemTag;

    if-nez v15, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v14, v15, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    if-nez v14, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-static {v14}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    const-string v1, "post_id"

    .line 84
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    const-string v1, "to_id"

    .line 85
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const-string v1, "text"

    .line 86
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "from_id"

    .line 87
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date"

    .line 88
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v2, "copy_text"

    .line 90
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v2, "copy_owner_id"

    .line 91
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 95
    invoke-static {}, Lcom/perm/utils/SpamHelper;->isHideSpamEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 96
    invoke-static {v7}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v11}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 98
    :goto_0
    iget-boolean v4, v8, Lcom/perm/kate/WallMessageListAdapter;->hide_reposts:Z

    const-wide/16 v18, 0x0

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 99
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v4, v20, v18

    if-eqz v4, :cond_4

    const/16 v29, 0x1

    goto :goto_1

    :cond_4
    move/from16 v29, v2

    .line 103
    :goto_1
    move-object/from16 v2, v10

    const-string v4, "is_explicit"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_explicit_end

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_explicit_end

    sget v4, Lcom/perm/kate/KApplication;->nsfw_tolerance:I

    add-int/lit8 v4, v4, -0x2

    if-eqz v4, :cond_explicit_end

    const/16 v29, 0x1

    :cond_explicit_end
    iput-object v13, v15, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 104
    iput-object v12, v15, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    const-string v2, "like"

    .line 105
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const-wide/16 v22, 0x1

    cmp-long v2, v20, v22

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, v15, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 106
    iput-object v7, v15, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 107
    iput-object v1, v15, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    const-string v2, "is_pinned"

    .line 109
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 111
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v15, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    goto :goto_4

    :cond_7
    const/4 v4, 0x1

    .line 114
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, " "

    move-object/from16 v16, v11

    const-string v11, ""

    cmp-long v21, v24, v18

    if-lez v21, :cond_a

    :try_start_1
    const-string v4, "first_name"

    .line 115
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v19, v3

    const-string v3, "last_name"

    .line 116
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_8

    move-wide/from16 v24, v5

    .line 118
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-wide/from16 v24, v5

    move-object v4, v11

    :goto_5
    if-eqz v3, :cond_9

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_9
    const-string v3, "photo_medium_rec"

    .line 122
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v4

    goto :goto_6

    :cond_a
    move-object/from16 v19, v3

    move-wide/from16 v24, v5

    const-string v3, "name"

    .line 124
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_medium"

    .line 125
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 127
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v8, Lcom/perm/kate/WallMessageListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v1

    move-object v1, v14

    move-object v10, v2

    move-object v2, v3

    const/4 v9, 0x0

    move-wide v3, v4

    move-wide/from16 v30, v24

    move-object/from16 v5, v21

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;)V

    const v1, 0x7f0902cd

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v6, 0x8

    .line 132
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0903a1

    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v7, :cond_c

    .line 135
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 136
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    invoke-static {v7}, Lcom/perm/kate/Helper;->removeBrokenChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, v8, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v11, v1, v9}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 140
    iget-boolean v1, v8, Lcom/perm/kate/WallMessageListAdapter;->collapse_news:Z

    if-eqz v1, :cond_b

    .line 141
    iget-object v3, v8, Lcom/perm/kate/WallMessageListAdapter;->open_news:Ljava/util/HashSet;

    move-object v1, v11

    move-object v7, v4

    move-wide/from16 v4, v30

    const/16 v9, 0x8

    move-object/from16 v6, p0

    move-object v9, v7

    move-object v7, v15

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/text/SpannableStringBuilder;Landroid/view/View;Ljava/util/HashSet;JLandroid/widget/BaseAdapter;Lcom/perm/kate/NewsItemTag;)V

    goto :goto_7

    :cond_b
    move-object v9, v4

    .line 143
    :goto_7
    iget-object v1, v8, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v11}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 144
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    :cond_c
    move-object v9, v4

    const/16 v1, 0x8

    .line 146
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_8
    iget-object v1, v8, Lcom/perm/kate/WallMessageListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    iget-object v2, v8, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v3, v16

    move-object v11, v14

    move-object v4, v12

    move-object/from16 v12, v19

    move-object v5, v13

    move-object v13, v1

    move-object v6, v14

    move-object v14, v2

    move-object v1, v15

    invoke-static/range {v11 .. v18}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    move-object/from16 v2, v19

    .line 150
    iput-object v2, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 151
    iput-object v3, v1, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 154
    iget-object v2, v8, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v14, v30

    invoke-static {v2, v14, v15}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 155
    iget-boolean v3, v1, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    if-eqz v3, :cond_d

    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f026f

    move-object/from16 v7, p2

    const/4 v9, 0x0

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_d
    move-object/from16 v7, p2

    const/4 v9, 0x0

    .line 157
    :goto_9
    iget-object v3, v6, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v2, "post_type"

    move-object/from16 v3, p3

    .line 160
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_e

    .line 164
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_a

    :cond_e
    const/4 v2, -0x1

    :goto_a
    const/4 v13, 0x2

    if-ge v2, v13, :cond_10

    const-string v11, "comments_count"

    .line 166
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 167
    invoke-static {v6, v11, v12, v9}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    const-string v11, "likes_count"

    .line 170
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 171
    iget-boolean v11, v1, Lcom/perm/kate/NewsItemTag;->i_like:Z

    iget-object v12, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v13, v6, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    iget-object v10, v6, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    const/16 v38, 0x0

    move/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object/from16 v37, v10

    invoke-static/range {v32 .. v38}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    const-string v10, "reposts_count"

    .line 174
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string v12, "reposted"

    .line 177
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 178
    invoke-interface {v3, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_f

    .line 179
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v17, v12, v22

    if-nez v17, :cond_f

    const/4 v12, 0x1

    goto :goto_b

    :cond_f
    const/4 v12, 0x0

    .line 181
    :goto_b
    invoke-static {v6, v10, v11, v9, v12}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZZ)V

    goto :goto_c

    .line 183
    :cond_10
    invoke-static {v6}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    :goto_c
    const-string v10, "_id"

    .line 184
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 185
    iget-object v12, v8, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_11

    .line 187
    sget-object v12, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v12}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "attachments"

    .line 188
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    move-wide/from16 v17, v10

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v13, v9, v10}, Lcom/perm/kate/db/DataHelper;->deserializeAttachments([BJ)Ljava/util/ArrayList;

    move-result-object v9

    .line 189
    iget-object v10, v8, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v9

    goto :goto_d

    :cond_11
    move-object/from16 v17, v12

    :goto_d
    if-eqz v29, :cond_12

    .line 193
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    :cond_12
    const v9, 0x7f09004a

    .line 195
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v21, v9

    check-cast v21, Landroid/view/ViewGroup;

    const v9, 0x7f090158

    .line 196
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v22, v9

    check-cast v22, Landroid/view/ViewGroup;

    .line 197
    iget-object v11, v8, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v12, 0x0

    iget-object v9, v8, Lcom/perm/kate/WallMessageListAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v10, v6, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    iget-object v13, v6, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    const/16 v23, 0x0

    .line 198
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v20, v13

    move-object v13, v1

    move-wide/from16 v32, v14

    move-object v14, v6

    move-object v15, v5

    move-object/from16 v16, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    .line 197
    invoke-virtual/range {v11 .. v28}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "signer_id"

    .line 201
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v9, 0x7f0902d1

    .line 202
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v16, v9

    check-cast v16, Landroid/widget/TextView;

    .line 203
    iget-object v12, v8, Lcom/perm/kate/WallMessageListAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-wide v9, v4

    move-object/from16 v11, v16

    invoke-static/range {v9 .. v15}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iput-wide v4, v1, Lcom/perm/kate/NewsItemTag;->signer_id:J

    const-string v4, "copyright_name"

    .line 206
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0902db

    .line 207
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/TextView;

    .line 208
    invoke-static {v4, v9, v7}, Lcom/perm/kate/NewsCursorAdapter;->displaySource(Ljava/lang/String;Landroid/widget/TextView;Landroid/content/Context;)V

    const-string v4, "copyright_link"

    .line 210
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    .line 213
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/NewsItemTag;->copyright_link:Ljava/lang/String;

    .line 216
    :cond_13
    invoke-static {v0, v3}, Lcom/perm/kate/NewsCursorAdapter;->displayOnlineState(Landroid/view/View;Landroid/database/Cursor;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_19

    const/4 v5, 0x2

    if-ne v2, v5, :cond_15

    .line 221
    iget-object v4, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v4, :cond_14

    const/4 v7, 0x0

    .line 222
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v4, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v7, 0x7f0f0273

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 225
    :cond_14
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v4, 0x0

    .line 226
    iput-boolean v4, v1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_e

    :cond_15
    const/4 v7, 0x3

    if-ne v2, v7, :cond_17

    .line 228
    iget-object v7, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v7, :cond_16

    const/4 v10, 0x0

    .line 229
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v7, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v10, 0x7f0f02d3

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 232
    :cond_16
    iput-object v4, v1, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v4, 0x1

    .line 233
    iput-boolean v4, v1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_e

    .line 235
    :cond_17
    iget-object v7, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v7, :cond_18

    const/16 v10, 0x8

    .line 236
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_18
    iput-object v4, v1, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v4, 0x0

    .line 238
    iput-boolean v4, v1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto :goto_e

    :cond_19
    const/4 v5, 0x2

    .line 241
    iget-object v7, v6, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v7, :cond_1a

    const/16 v10, 0x8

    .line 242
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_1a
    iput-object v4, v1, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    const/4 v4, 0x0

    .line 244
    iput-boolean v4, v1, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    :goto_e
    if-ge v2, v5, :cond_1b

    .line 248
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    const v5, 0x7f09040c

    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 249
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f09040d

    invoke-virtual {v2, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 250
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v4, 0x7f09040e

    iget-boolean v10, v1, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 251
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    iget-object v4, v8, Lcom/perm/kate/WallMessageListAdapter;->likesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 253
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 254
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    iget-object v4, v8, Lcom/perm/kate/WallMessageListAdapter;->commentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 256
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v4, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 257
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v4, 0x7f090407

    iget-object v5, v1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 258
    iget-object v2, v6, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    iget-object v4, v8, Lcom/perm/kate/WallMessageListAdapter;->repostsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    :cond_1b
    iget-object v2, v8, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1c

    const v2, 0x7f090182

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1c

    const/4 v4, 0x0

    .line 265
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    iget-object v4, v8, Lcom/perm/kate/WallMessageListAdapter;->itemMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 271
    :cond_1c
    invoke-static {v3, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Landroid/database/Cursor;Lcom/perm/kate/ViewHolder;)V

    .line 275
    iget-boolean v4, v8, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    move-object/from16 v1, p1

    move-object v2, v6

    move/from16 v3, v29

    move-object/from16 v5, v16

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/NewsCursorAdapter;->displaySpam(Landroid/view/View;Lcom/perm/kate/ViewHolder;ZZLandroid/view/View;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_f

    :catchall_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void
.end method

.method public clearAttachmentsCache()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachments_cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/perm/kate/WallMessageListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 378
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 375
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 312
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 314
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 315
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 285
    iget-boolean p2, p0, Lcom/perm/kate/WallMessageListAdapter;->big_photos:Z

    iget-boolean v0, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00fc

    goto :goto_0

    :cond_0
    const v0, 0x7f0c00fb

    :goto_0
    invoke-static {p1, p3, p2, v0}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object p1

    .line 286
    iget-boolean p2, p0, Lcom/perm/kate/WallMessageListAdapter;->old_style_news:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/WallMessageListAdapter;->card_style_news:Z

    if-eqz p2, :cond_1

    const p2, 0x7f0902ad

    .line 287
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 289
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-object p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcom/perm/kate/WallMessageListAdapter;->clearAttachmentsCache()V

    .line 306
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    return-void
.end method
