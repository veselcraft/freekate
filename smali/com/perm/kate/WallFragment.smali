.class public Lcom/perm/kate/WallFragment;
.super Lcom/perm/kate/BaseFragment;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/WallFragment$PostFilter;
    }
.end annotation


# static fields
.field static positions:Ljava/util/HashMap;

.field static steps:Ljava/util/LinkedList;


# instance fields
.field private account_id:J

.field callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field card_style_news:Z

.field cursor:Landroid/database/Cursor;

.field private deleteWallCallback:Lcom/perm/kate/session/Callback;

.field direct_order:Z

.field private filter:Lcom/perm/kate/WallFragment$PostFilter;

.field private is_editor:Z

.field private is_me:Z

.field private is_moder:Z

.field private is_suggest:Z

.field private itemMenuCLick:Landroid/view/View$OnClickListener;

.field private lv_wall_message_list:Landroid/widget/ListView;

.field offset_shift:I

.field old_style_news:Z

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field page_size:I

.field private pin_callback:Lcom/perm/kate/session/Callback;

.field private pinned_post_id:J

.field post_count:Ljava/lang/Integer;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field show_suggested:Z

.field private state:I

.field private uid:Ljava/lang/Long;

.field wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/WallFragment;->positions:Ljava/util/HashMap;

    .line 88
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/perm/kate/WallFragment;->steps:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 42
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 66
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    .line 68
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    .line 69
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    .line 70
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    .line 71
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    .line 72
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    .line 74
    iput v0, p0, Lcom/perm/kate/WallFragment;->state:I

    const-wide/16 v1, 0x0

    .line 82
    iput-wide v1, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    const/16 v1, 0x14

    .line 175
    iput v1, p0, Lcom/perm/kate/WallFragment;->page_size:I

    const/4 v1, 0x1

    .line 204
    iput-boolean v1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    const/4 v1, 0x0

    .line 206
    iput-object v1, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    .line 208
    new-instance v1, Lcom/perm/kate/WallFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/WallFragment$2;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 301
    new-instance v1, Lcom/perm/kate/WallFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$3;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 316
    new-instance v1, Lcom/perm/kate/WallFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$4;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 326
    new-instance v1, Lcom/perm/kate/WallFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$5;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    .line 478
    new-instance v1, Lcom/perm/kate/WallFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$7;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 688
    iput v0, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 690
    new-instance v0, Lcom/perm/kate/WallFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$12;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 750
    new-instance v0, Lcom/perm/kate/WallFragment$14;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$14;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 922
    new-instance v0, Lcom/perm/kate/WallFragment$17;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$17;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->pin_callback:Lcom/perm/kate/session/Callback;

    .line 1010
    new-instance v0, Lcom/perm/kate/WallFragment$22;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$22;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->deleteWallCallback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getStringByFilter()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/WallFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/WallFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/perm/kate/WallFragment;->doFilterOption(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/perm/kate/WallFragment;->pin_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/WallFragment;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/perm/kate/WallFragment;->deleteLastWallPosts(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/perm/kate/WallFragment;->deleteWallCallback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/WallFragment;)J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/perm/kate/WallFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/perm/kate/WallFragment;J)J
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/perm/kate/WallFragment;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/perm/kate/WallFragment;->state:I

    return p0
.end method

.method static synthetic access$402(Lcom/perm/kate/WallFragment;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/perm/kate/WallFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/WallFragment;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/WallFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    return p0
.end method

.method static synthetic access$700(Lcom/perm/kate/WallFragment;JJZ)V
    .locals 0

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/WallFragment;->pinUnpinPost(JJZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/WallFragment;JZ)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/WallFragment;->archiveRevealPost(JZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/WallFragment;J)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/WallFragment;->getOffsetByDate(J)V

    return-void
.end method

.method private allowShowSuggestedPosts()Z
    .locals 7

    .line 893
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    return v2

    .line 895
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v3, -0x1

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-virtual {v0, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method private archiveRevealPost(JZ)V
    .locals 1

    .line 933
    new-instance v0, Lcom/perm/kate/WallFragment$18;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/WallFragment$18;-><init>(Lcom/perm/kate/WallFragment;JZ)V

    .line 955
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static canEdit(Ljava/lang/String;)Z
    .locals 6

    .line 486
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 488
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private confirmClearWall()V
    .locals 6

    .line 984
    new-instance v0, Lcom/perm/kate/WallFragment$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$20;-><init>(Lcom/perm/kate/WallFragment;)V

    .line 990
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00ab

    .line 991
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    .line 992
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 993
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 995
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private deleteLastWallPosts(I)V
    .locals 1

    .line 1000
    new-instance v0, Lcom/perm/kate/WallFragment$21;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallFragment$21;-><init>(Lcom/perm/kate/WallFragment;I)V

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 8

    const/4 v0, 0x1

    .line 259
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 260
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchWallPosts(JJ)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "fetchWallPosts"

    .line 261
    invoke-virtual {p0, v3}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    const-string v3, "wf_fetchWallPosts"

    .line 262
    iget-object v4, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 263
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 264
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const/4 v7, 0x2

    .line 265
    :goto_0
    new-instance v1, Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/perm/kate/BaseActivity;

    iget-object v4, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    move-object v2, v1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/WallFragment$WallMessageListAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroidx/fragment/app/Fragment;Landroid/view/View$OnClickListener;I)V

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    .line 266
    iget-object v2, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 268
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 269
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 270
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private doFilterOption(I)V
    .locals 1

    .line 857
    :try_start_0
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 872
    :pswitch_0
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ARCHIVED:Lcom/perm/kate/WallFragment$PostFilter;

    goto :goto_0

    .line 869
    :pswitch_1
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    goto :goto_0

    .line 866
    :pswitch_2
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    goto :goto_0

    .line 863
    :pswitch_3
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    .line 876
    :goto_0
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    if-ne p1, v0, :cond_0

    return-void

    .line 878
    :cond_0
    iput-object v0, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    const/4 p1, 0x1

    .line 881
    iput-boolean p1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    const/4 p1, 0x0

    .line 882
    iput-object p1, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 883
    iput p1, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 885
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 887
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 888
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static editPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZLjava/lang/String;Landroid/app/Activity;Lcom/perm/kate/BaseFragment;)V
    .locals 2

    .line 494
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 495
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    const-class v1, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, p8, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    .line 498
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.post_id"

    .line 499
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.post_text"

    .line 500
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.publish_date"

    .line 501
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p5, :cond_0

    const-string p0, "com.perm.kate.is_suggested"

    .line 503
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string p0, "signed"

    .line 504
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "copyright_link"

    .line 505
    invoke-virtual {v0, p0, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    if-eqz p9, :cond_1

    .line 507
    invoke-virtual {p9, v0, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p8, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private getFilterItems()Ljava/util/ArrayList;
    .locals 7

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 827
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    if-nez v1, :cond_0

    return-object v0

    .line 829
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0334

    const/16 v3, 0x3e9

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    const v2, 0x7f0f0337

    goto :goto_0

    :cond_1
    const v2, 0x7f0f0336

    :goto_0
    const/16 v3, 0x3ea

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, v4

    if-ltz v3, :cond_2

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 832
    :cond_2
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0338

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->allowShowSuggestedPosts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 834
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0339

    const/16 v3, 0x3ec

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_3
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    if-eqz v1, :cond_4

    .line 837
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0050

    const/16 v3, 0x3ed

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public static getGroups(Ljava/util/ArrayList;)Z
    .locals 7

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 293
    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    neg-long v2, v2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_1
    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v3, v1, v4

    if-gez v3, :cond_0

    neg-long v1, v1

    .line 296
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_2
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private getOffsetByDate(J)V
    .locals 1

    const/4 v0, 0x1

    .line 671
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 672
    new-instance v0, Lcom/perm/kate/WallFragment$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/WallFragment$11;-><init>(Lcom/perm/kate/WallFragment;J)V

    .line 685
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getSteps(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 1050
    :try_start_0
    instance-of p0, p0, Ljava/lang/IllegalStateException;

    if-eqz p0, :cond_0

    const-string p0, " "

    .line 1051
    sget-object v0, Lcom/perm/kate/WallFragment;->steps:Ljava/util/LinkedList;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1053
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getStringByFilter()Ljava/lang/String;
    .locals 2

    .line 810
    sget-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "archived"

    return-object v0

    :cond_1
    const-string v0, "suggests"

    return-object v0

    :cond_2
    const-string v0, "postponed"

    return-object v0

    :cond_3
    const-string v0, "owner"

    return-object v0
.end method

.method public static getUsers(Ljava/util/ArrayList;)Z
    .locals 7

    .line 275
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 276
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 277
    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_1
    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 280
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2
    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->signer_id:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_3
    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->created_by:J

    cmp-long v3, v1, v4

    if-lez v3, :cond_0

    .line 285
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method private loadMore()V
    .locals 2

    const-string v0, "loadMore_before_getCount"

    .line 712
    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 716
    new-instance v1, Lcom/perm/kate/WallFragment$13;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/WallFragment$13;-><init>(Lcom/perm/kate/WallFragment;I)V

    .line 747
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private pinUnpinPost(JJZ)V
    .locals 8

    const/4 v0, 0x1

    .line 910
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 911
    new-instance v0, Lcom/perm/kate/WallFragment$16;

    move-object v1, v0

    move-object v2, p0

    move v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/WallFragment$16;-><init>(Lcom/perm/kate/WallFragment;ZJJ)V

    .line 919
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refresh()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    iput v0, p0, Lcom/perm/kate/WallFragment;->state:I

    .line 179
    new-instance v0, Lcom/perm/kate/WallFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$1;-><init>(Lcom/perm/kate/WallFragment;)V

    .line 198
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setupFilterSpinner()V
    .locals 6

    .line 961
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 963
    :cond_0
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/ProfileInfoActivity;

    if-eqz v0, :cond_1

    return-void

    .line 965
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getFilterItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 966
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 967
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 968
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 969
    aget-object v5, v1, v4

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 970
    :cond_2
    new-instance v1, Lcom/perm/kate/WallFragment$19;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/WallFragment$19;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V

    .line 978
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-boolean v4, p0, Lcom/perm/kate/WallFragment;->show_suggested:Z

    if-eqz v4, :cond_3

    const/4 v3, 0x3

    :cond_3
    invoke-virtual {v0, v2, v1, v3}, Lcom/perm/kate/BaseActivity;->setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    return-void
.end method

.method private showDatePicker()V
    .locals 8

    .line 644
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 645
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x2

    .line 646
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v2, 0x5

    .line 647
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 648
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 650
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1030073

    invoke-direct {v0, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :cond_0
    move-object v3, v0

    .line 652
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v4, Lcom/perm/kate/WallFragment$10;

    invoke-direct {v4, p0}, Lcom/perm/kate/WallFragment$10;-><init>(Lcom/perm/kate/WallFragment;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 666
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 667
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFilterDialog()V
    .locals 4

    .line 842
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getFilterItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 843
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0335

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 844
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/WallFragment$15;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/WallFragment$15;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 851
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 852
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 18

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 354
    :try_start_0
    iget-object v4, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 355
    iget-object v5, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 356
    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 357
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 358
    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v1, v10, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 359
    :goto_1
    invoke-static {v7}, Lcom/perm/kate/WallFragment;->canEdit(Ljava/lang/String;)Z

    move-result v6

    .line 361
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v11

    if-nez v11, :cond_2

    .line 363
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0f041c

    invoke-virtual {v8, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v12, 0x7f0f0319

    invoke-virtual {v8, v12}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 364
    new-instance v12, Lcom/perm/kate/MenuItemDetails;

    const/16 v13, 0xd

    invoke-direct {v12, v11, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    iget-boolean v11, v0, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    const v13, 0x7f0f02f2

    const v15, 0x7f0f01ec

    const/16 v9, 0xb

    if-nez v11, :cond_a

    iget-object v14, v0, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    if-nez v14, :cond_a

    .line 367
    new-instance v11, Lcom/perm/kate/MenuItemDetails;

    const v14, 0x7f0f05a2

    const/16 v12, 0x8

    invoke-direct {v11, v14, v12}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v11, Lcom/perm/kate/MenuItemDetails;

    const v12, 0x7f0f05a3

    const/16 v14, 0x12

    invoke-direct {v11, v12, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v11, Lcom/perm/kate/MenuItemDetails;

    const v12, 0x7f0f01d9

    const/4 v14, 0x6

    invoke-direct {v11, v12, v14}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_3

    .line 371
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v6, v15, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_3
    iget-object v6, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v14, -0x1

    cmp-long v6, v11, v2

    if-gez v6, :cond_4

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v6, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v6, v11, v16

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-wide v2, v8, Lcom/perm/kate/WallFragment;->account_id:J

    cmp-long v6, v11, v2

    if-eqz v6, :cond_4

    .line 373
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long v11, v11, v14

    invoke-virtual {v6, v2, v11, v12}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 375
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const/16 v3, 0x15

    invoke-direct {v2, v13, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v1, :cond_5

    .line 378
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_5
    iget-object v1, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v3, v1, v11

    if-lez v3, :cond_6

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v3, v1, v11

    if-gez v3, :cond_9

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, v8, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long v11, v11, v14

    invoke-virtual {v1, v2, v11, v12}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 381
    :cond_7
    iget-boolean v1, v0, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    if-eqz v1, :cond_8

    .line 382
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02ef

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 384
    :cond_8
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f026e

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_9
    :goto_2
    iget-wide v1, v8, Lcom/perm/kate/WallFragment;->account_id:J

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v3, v1, v11

    if-eqz v3, :cond_c

    .line 387
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01d7

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 388
    :cond_a
    iget-boolean v1, v8, Lcom/perm/kate/WallFragment;->is_editor:Z

    if-eqz v1, :cond_b

    if-eqz v11, :cond_b

    .line 389
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0272

    invoke-direct {v1, v2, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0281

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v1, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmp-long v3, v1, v11

    if-gez v3, :cond_c

    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, v8, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v3, v1, v11

    if-eqz v3, :cond_c

    iget-object v1, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v11, v8, Lcom/perm/kate/WallFragment;->account_id:J

    cmp-long v3, v1, v11

    if-eqz v3, :cond_c

    .line 392
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const/16 v2, 0x15

    invoke-direct {v1, v13, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 394
    :cond_b
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v1, v15, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_c
    :goto_3
    iget-boolean v1, v8, Lcom/perm/kate/WallFragment;->is_me:Z

    if-eqz v1, :cond_e

    .line 398
    iget-object v1, v8, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    sget-object v2, Lcom/perm/kate/WallFragment$PostFilter;->ARCHIVED:Lcom/perm/kate/WallFragment$PostFilter;

    if-ne v1, v2, :cond_d

    .line 399
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f044b

    const/16 v3, 0x1d

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 401
    :cond_d
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f004f

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    :cond_e
    :goto_4
    new-instance v9, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v9, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    invoke-static {v10}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v12, Lcom/perm/kate/WallFragment$6;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/WallFragment$6;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 471
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 473
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method

.method addStep(Ljava/lang/String;)V
    .locals 1

    .line 1039
    :try_start_0
    sget-object v0, Lcom/perm/kate/WallFragment;->steps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1040
    sget-object p1, Lcom/perm/kate/WallFragment;->steps:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    .line 1041
    sget-object p1, Lcom/perm/kate/WallFragment;->steps:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1044
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 571
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 572
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0f02d1

    goto :goto_0

    :cond_0
    const v1, 0x7f0f003d

    :goto_0
    const/16 v2, 0x3a

    const/16 v3, 0x3eb

    invoke-interface {p1, v0, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 574
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/perm/kate/ProfileInfoActivity;

    if-eqz v1, :cond_1

    const/16 v1, 0x3e8

    const/16 v2, 0x3ed

    const v3, 0x7f0f0335

    .line 575
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/16 v1, 0x3ef

    const/16 v2, 0x3f1

    const v3, 0x7f0f02ad

    .line 576
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 577
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    if-eqz v1, :cond_3

    :cond_2
    const v1, 0x7f0f01d0

    const/16 v2, 0x3f3

    .line 578
    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_3
    const v1, 0x7f0f0231

    const/16 v2, 0x3f4

    .line 579
    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x3f8

    const v3, 0x7f0f04ea

    .line 580
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 582
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    const/16 v2, 0x3f5

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0f048e

    .line 583
    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 584
    :cond_4
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v1, :cond_5

    const v1, 0x7f0f048d

    .line 585
    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    sget-object v3, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    if-ne v1, v3, :cond_6

    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x3f6

    const v3, 0x7f0f0459

    .line 588
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 589
    :cond_6
    sget-object v1, Lcom/perm/kate/WallFragment;->positions:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x3f7

    const v3, 0x7f0f0446

    .line 590
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_7
    const/16 v1, 0x3f9

    const/16 v2, 0x7d0

    const v3, 0x7f0f0118

    .line 592
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    .line 593
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 594
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    iget-boolean v1, v1, Lcom/perm/kate/WallMessageListAdapter;->hide_reposts:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const/16 v1, 0x65

    if-ne p1, v1, :cond_1

    :cond_0
    if-ne p2, v0, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    const-string p1, "group_id"

    const-wide/16 v0, 0x0

    .line 167
    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-string v2, "repost_post_id"

    .line 168
    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v2, "repost_post_owner_id"

    .line 169
    invoke-virtual {p3, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 170
    new-instance v3, Lcom/perm/utils/RepostHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/WallFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v3, p3, v0}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;Z)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 140
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method onCompose()V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    if-eqz v1, :cond_0

    const-string v2, "com.perm.kate.is_suggest"

    .line 155
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 118
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "show_suggested"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->show_suggested:Z

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.is_suggest"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    .line 125
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallFragment;->account_id:J

    .line 126
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/perm/kate/WallFragment;->account_id:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    .line 127
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 128
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    .line 129
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    .line 131
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    if-nez p1, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c013f

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 101
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->setupFilterSpinner()V

    const p2, 0x7f090220

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    .line 103
    iget-object p3, p0, Lcom/perm/kate/WallFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 105
    iget-object p2, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/WallFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 106
    iget-object p2, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/WallFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 108
    iget-boolean p2, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    iget-boolean p3, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-static {p2, p3, v1}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 110
    iget-boolean p2, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    if-eqz p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 798
    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 799
    iput-object v0, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    .line 801
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 803
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    .line 805
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    const-string v0, "closemancursors"

    .line 806
    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHiddenChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 1034
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 601
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 636
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallFragment$WallMessageListAdapter;

    iget-boolean v0, p1, Lcom/perm/kate/WallMessageListAdapter;->hide_reposts:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lcom/perm/kate/WallMessageListAdapter;->hide_reposts:Z

    .line 637
    invoke-virtual {p1}, Lcom/perm/kate/WallMessageListAdapter;->notifyDataSetChanged()V

    return v2

    .line 621
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-wide v0, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/DashboardFragment;->ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    return v2

    .line 632
    :pswitch_2
    sget-object p1, Lcom/perm/kate/WallFragment;->positions:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 633
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    return v2

    .line 629
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->showDatePicker()V

    return v2

    .line 624
    :pswitch_4
    iget-boolean p1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    const/4 p1, 0x0

    .line 625
    iput p1, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 626
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    return v2

    .line 618
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/DialogsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 615
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->confirmClearWall()V

    return v2

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->showSearchWallActivity()V

    return v2

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->showFilterDialog()V

    return v2

    .line 606
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->onCompose()V

    return v2

    .line 603
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    .line 640
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    return-void
.end method

.method public onStart()V
    .locals 1

    const-string v0, "onStartrequeryManagedCursors"

    .line 1027
    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 1028
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    const-string v0, "onStopdeactivateManagedCursors"

    .line 1019
    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 1020
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 1021
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    sget-object v0, Lcom/perm/kate/WallFragment;->positions:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    iget v2, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    iget-object v3, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 513
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 514
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 515
    new-instance v0, Lcom/perm/kate/WallFragment$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/WallFragment$8;-><init>(Lcom/perm/kate/WallFragment;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 536
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f01d8

    .line 537
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    .line 538
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 539
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 541
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method requeryOnUiThread()V
    .locals 2

    .line 545
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 547
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 549
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/WallFragment$9;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$9;-><init>(Lcom/perm/kate/WallFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method showSearchWallActivity()V
    .locals 4

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 903
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 905
    iget-wide v1, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    const-string v3, "pinned_post_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0x65

    .line 906
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
