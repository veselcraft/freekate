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
.field static callback_profiles:Lcom/perm/kate/session/Callback;


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

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private pin_callback:Lcom/perm/kate/session/Callback;

.field private pinned_post_id:J

.field post_count:Ljava/lang/Integer;

.field private repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field show_suggested:Z

.field private state:I

.field private uid:Ljava/lang/Long;

.field wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 290
    new-instance v0, Lcom/perm/kate/WallFragment$3;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/perm/kate/WallFragment$3;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/perm/kate/WallFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 66
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    .line 67
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    .line 68
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    .line 69
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    .line 70
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    .line 71
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    .line 72
    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    .line 74
    iput v2, p0, Lcom/perm/kate/WallFragment;->state:I

    .line 80
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    .line 164
    const/16 v0, 0x14

    iput v0, p0, Lcom/perm/kate/WallFragment;->page_size:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    .line 197
    new-instance v0, Lcom/perm/kate/WallFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$2;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 310
    new-instance v0, Lcom/perm/kate/WallFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$4;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 325
    new-instance v0, Lcom/perm/kate/WallFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$5;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 335
    new-instance v0, Lcom/perm/kate/WallFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$6;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    .line 473
    new-instance v0, Lcom/perm/kate/WallFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$8;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    .line 656
    iput v2, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 658
    new-instance v0, Lcom/perm/kate/WallFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$13;-><init>(Lcom/perm/kate/WallFragment;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 703
    new-instance v0, Lcom/perm/kate/WallFragment$15;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$15;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 855
    new-instance v0, Lcom/perm/kate/WallFragment$18;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$18;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->pin_callback:Lcom/perm/kate/session/Callback;

    .line 915
    new-instance v0, Lcom/perm/kate/WallFragment$22;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/WallFragment$22;-><init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->deleteWallCallback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getStringByFilter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/WallFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/WallFragment;->doFilterOption(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->pin_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/WallFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/WallFragment;->deleteLastWallPosts(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->deleteWallCallback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/WallFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/perm/kate/WallFragment;->account_id:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/perm/kate/WallFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/perm/kate/WallFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget v0, p0, Lcom/perm/kate/WallFragment;->state:I

    return v0
.end method

.method static synthetic access$402(Lcom/perm/kate/WallFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/perm/kate/WallFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/WallFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/WallFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/WallFragment;JJZ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # Z

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/WallFragment;->pinUnpinPost(JJZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/WallFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;
    .param p1, "x1"    # J

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/WallFragment;->getOffsetByDate(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    return-void
.end method

.method private allowShowSuggestedPosts()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 826
    iget-object v3, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 831
    :cond_0
    :goto_0
    return v1

    .line 828
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 829
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    :cond_2
    move v1, v2

    .line 831
    goto :goto_0
.end method

.method public static canEdit(Ljava/lang/String;)Z
    .locals 6
    .param p0, "post_owner_id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 481
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return v0

    .line 483
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 485
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private confirmClearWall()V
    .locals 7

    .prologue
    .line 888
    const/16 v0, 0x14

    .line 889
    .local v0, "count":I
    new-instance v1, Lcom/perm/kate/WallFragment$20;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$20;-><init>(Lcom/perm/kate/WallFragment;)V

    .line 895
    .local v1, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070078

    .line 896
    invoke-virtual {p0, v3}, Lcom/perm/kate/WallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    .line 897
    invoke-virtual {v2, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 898
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 899
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 900
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 902
    return-void
.end method

.method private deleteLastWallPosts(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 905
    new-instance v0, Lcom/perm/kate/WallFragment$21;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallFragment$21;-><init>(Lcom/perm/kate/WallFragment;I)V

    .line 912
    invoke-virtual {v0}, Lcom/perm/kate/WallFragment$21;->start()V

    .line 913
    return-void
.end method

.method private displayData()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 251
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v8, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-virtual {v0, v2, v3, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchWallPosts(JJ)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    .line 252
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 253
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v5, v7

    .line 254
    .local v5, "source":I
    :goto_0
    new-instance v0, Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/WallFragment;->itemMenuCLick:Landroid/view/View$OnClickListener;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/WallMessageListAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Landroid/support/v4/app/Fragment;Landroid/view/View$OnClickListener;I)V

    iput-object v0, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    .line 255
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v5    # "source":I
    :goto_1
    return-void

    .line 253
    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    .line 256
    :catch_0
    move-exception v6

    .line 257
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 258
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private doFilterOption(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 793
    :try_start_0
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    .line 794
    .local v0, "new_filter":Lcom/perm/kate/WallFragment$PostFilter;
    packed-switch p1, :pswitch_data_0

    .line 809
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    if-ne v2, v0, :cond_0

    .line 823
    .end local v0    # "new_filter":Lcom/perm/kate/WallFragment$PostFilter;
    :goto_1
    return-void

    .line 796
    .restart local v0    # "new_filter":Lcom/perm/kate/WallFragment$PostFilter;
    :pswitch_0
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    .line 797
    goto :goto_0

    .line 799
    :pswitch_1
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    .line 800
    goto :goto_0

    .line 802
    :pswitch_2
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    .line 803
    goto :goto_0

    .line 805
    :pswitch_3
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    goto :goto_0

    .line 811
    :cond_0
    iput-object v0, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    .line 814
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    .line 815
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    .line 816
    const/4 v2, 0x0

    iput v2, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 818
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 819
    .end local v0    # "new_filter":Lcom/perm/kate/WallFragment$PostFilter;
    :catch_0
    move-exception v1

    .line 820
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 821
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static editPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ZZZLandroid/app/Activity;Lcom/perm/kate/BaseFragment;)V
    .locals 9
    .param p0, "postId"    # Ljava/lang/String;
    .param p1, "postOwnerId"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "_id"    # J
    .param p5, "publish_date"    # Ljava/lang/Long;
    .param p6, "is_suggested"    # Z
    .param p7, "is_editor"    # Z
    .param p8, "signed"    # Z
    .param p9, "activity"    # Landroid/app/Activity;
    .param p10, "fragment"    # Lcom/perm/kate/BaseFragment;

    .prologue
    .line 489
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 490
    .local v3, "post_id":Ljava/lang/Long;
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 491
    .local v4, "post_owner_id":Ljava/lang/Long;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 492
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/perm/kate/WallPostActivity;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 493
    const-string v5, "com.perm.kate.owner_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 494
    const-string v5, "com.perm.kate.post_id"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 495
    const-string v5, "com.perm.kate.post_text"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v5, "com.perm.kate._id"

    invoke-virtual {v2, v5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 497
    const-string v5, "com.perm.kate.publish_date"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 498
    if-eqz p7, :cond_0

    .line 499
    const-string v5, "com.perm.kate.is_suggested"

    invoke-virtual {v2, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    :cond_0
    const-string v5, "signed"

    move/from16 v0, p8

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 501
    if-eqz p10, :cond_1

    .line 502
    const/4 v5, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v2, v5}, Lcom/perm/kate/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private getFilterItems()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MenuItemDetails;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v0, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-object v0

    .line 767
    :cond_1
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0702d7

    const/16 v3, 0x3e9

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_3

    const v1, 0x7f0702da

    :goto_1
    const/16 v3, 0x3ea

    invoke-direct {v2, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    :cond_2
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0702db

    const/16 v3, 0x3eb

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->allowShowSuggestedPosts()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0702dc

    const/16 v3, 0x3ec

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    :cond_3
    const v1, 0x7f0702d9

    goto :goto_1
.end method

.method public static getGroups(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    const-wide/16 v6, 0x0

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "groups_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 302
    .local v0, "comment":Lcom/perm/kate/api/WallMessage;
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 303
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_1
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 305
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    .end local v0    # "comment":Lcom/perm/kate/api/WallMessage;
    :cond_2
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method private getOffsetByDate(J)V
    .locals 1
    .param p1, "unixtime"    # J

    .prologue
    .line 639
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 640
    new-instance v0, Lcom/perm/kate/WallFragment$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/WallFragment$12;-><init>(Lcom/perm/kate/WallFragment;J)V

    .line 653
    invoke-virtual {v0}, Lcom/perm/kate/WallFragment$12;->start()V

    .line 654
    return-void
.end method

.method private getStringByFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
    sget-object v0, Lcom/perm/kate/WallFragment$23;->$SwitchMap$com$perm$kate$WallFragment$PostFilter:[I

    iget-object v1, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v1}, Lcom/perm/kate/WallFragment$PostFilter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 758
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 752
    :pswitch_0
    const-string v0, "owner"

    goto :goto_0

    .line 754
    :pswitch_1
    const-string v0, "postponed"

    goto :goto_0

    .line 756
    :pswitch_2
    const-string v0, "suggests"

    goto :goto_0

    .line 750
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getUsers(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    const-wide/16 v6, 0x0

    .line 264
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 265
    .local v1, "users_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 266
    .local v0, "comment":Lcom/perm/kate/api/WallMessage;
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 267
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 269
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_2
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 271
    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0    # "comment":Lcom/perm/kate/api/WallMessage;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    move-result v2

    return v2
.end method

.method public static getUsersOnlineState(Ljava/util/ArrayList;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "comments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    const/4 v2, 0x0

    .line 277
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 278
    .local v8, "users_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/WallMessage;

    .line 279
    .local v7, "comment":Lcom/perm/kate/api/WallMessage;
    iget-wide v4, v7, Lcom/perm/kate/api/WallMessage;->from_id:J

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_0

    .line 280
    iget-wide v4, v7, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    .end local v7    # "comment":Lcom/perm/kate/api/WallMessage;
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    const-string v3, "online"

    .line 284
    .local v3, "fields":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v4, "nom"

    sget-object v5, Lcom/perm/kate/WallFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 285
    const/4 v0, 0x1

    .line 287
    .end local v3    # "fields":Ljava/lang/String;
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 681
    new-instance v0, Lcom/perm/kate/WallFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$14;-><init>(Lcom/perm/kate/WallFragment;)V

    .line 700
    invoke-virtual {v0}, Lcom/perm/kate/WallFragment$14;->start()V

    .line 701
    return-void
.end method

.method private pinUnpinPost(JJZ)V
    .locals 9
    .param p1, "wall_owner_id"    # J
    .param p3, "post_id"    # J
    .param p5, "pin"    # Z

    .prologue
    .line 843
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 844
    new-instance v1, Lcom/perm/kate/WallFragment$17;

    move-object v2, p0

    move v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/WallFragment$17;-><init>(Lcom/perm/kate/WallFragment;ZJJ)V

    .line 852
    invoke-virtual {v1}, Lcom/perm/kate/WallFragment$17;->start()V

    .line 853
    return-void
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/WallFragment;->state:I

    .line 168
    new-instance v0, Lcom/perm/kate/WallFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallFragment$1;-><init>(Lcom/perm/kate/WallFragment;)V

    .line 187
    invoke-virtual {v0}, Lcom/perm/kate/WallFragment$1;->start()V

    .line 188
    return-void
.end method

.method private setupFilterSpinner()V
    .locals 7

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    sget-boolean v5, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    instance-of v5, v5, Lcom/perm/kate/ProfileInfoActivity;

    if-nez v5, :cond_0

    .line 870
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getFilterItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 871
    .local v4, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 872
    .local v0, "array":[Ljava/lang/CharSequence;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 873
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 874
    aget-object v5, v0, v2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 875
    :cond_3
    new-instance v1, Lcom/perm/kate/WallFragment$19;

    invoke-direct {v1, p0, v4}, Lcom/perm/kate/WallFragment$19;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V

    .line 883
    .local v1, "filterListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/BaseActivity;

    iget-boolean v6, p0, Lcom/perm/kate/WallFragment;->show_suggested:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x3

    :goto_2
    invoke-virtual {v5, v3, v1, v6}, Lcom/perm/kate/BaseActivity;->setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showDatePicker()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 612
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 613
    .local v6, "c":Ljava/util/Calendar;
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 614
    .local v3, "year":I
    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 615
    .local v4, "month":I
    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 616
    .local v5, "day":I
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 618
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->isBrokenSamsungDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    new-instance v1, Landroid/view/ContextThemeWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v7, 0x1030073

    invoke-direct {v1, v2, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 620
    .restart local v1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v0, Landroid/app/DatePickerDialog;

    new-instance v2, Lcom/perm/kate/WallFragment$11;

    invoke-direct {v2, p0}, Lcom/perm/kate/WallFragment$11;-><init>(Lcom/perm/kate/WallFragment;)V

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 634
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 635
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 636
    return-void
.end method

.method private showFilterDialog()V
    .locals 6

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->getFilterItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 779
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0702d8

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 780
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/WallFragment$16;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/WallFragment$16;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 786
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 787
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 788
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 789
    return-void
.end method


# virtual methods
.method protected CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
    .locals 22
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;

    .prologue
    .line 361
    :try_start_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 362
    .local v5, "post_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 363
    .local v6, "wall_owner_id":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, "post_owner_id":Ljava/lang/String;
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    .line 365
    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_9

    :cond_0
    const/4 v10, 0x1

    .line 366
    .local v10, "can_remove":Z
    :goto_0
    invoke-static {v8}, Lcom/perm/kate/WallFragment;->canEdit(Ljava/lang/String;)Z

    move-result v9

    .line 367
    .local v9, "can_edit":Z
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 368
    .local v12, "i_like":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v4, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0703a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/perm/kate/WallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0702bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/perm/kate/WallFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 371
    .local v14, "open_title":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const/16 v3, 0xd

    invoke-direct {v2, v14, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    .end local v14    # "open_title":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    if-nez v2, :cond_b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    if-nez v2, :cond_b

    .line 374
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070518

    const/16 v7, 0x8

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070519

    const/16 v7, 0x12

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070171

    const/4 v7, 0x6

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    if-eqz v9, :cond_2

    .line 378
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07018d

    const/16 v7, 0xb

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/WallFragment;->account_id:J

    move-wide/from16 v18, v0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_3

    .line 380
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/WallFragment;->account_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v13

    .line 381
    .local v13, "is_moder":Z
    if-eqz v13, :cond_3

    .line 382
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07029a

    const/16 v7, 0x15

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v13    # "is_moder":Z
    :cond_3
    if-eqz v10, :cond_4

    .line 385
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070084

    const/4 v7, 0x7

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-lez v2, :cond_5

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    .line 387
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/WallFragment;->account_id:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 388
    :cond_6
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/perm/kate/NewsItemTag;->is_pinned:Z

    if-eqz v2, :cond_a

    .line 389
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070297

    const/16 v7, 0x1a

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/perm/kate/WallFragment;->account_id:J

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_8

    .line 394
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07016f

    const/16 v7, 0x17

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_8
    :goto_2
    new-instance v17, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v18

    new-instance v2, Lcom/perm/kate/WallFragment$7;

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/perm/kate/WallFragment$7;-><init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v16

    .line 464
    .local v16, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual/range {v16 .. v16}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v11

    .line 465
    .local v11, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 466
    invoke-virtual {v11}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 471
    .end local v4    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v5    # "post_id":Ljava/lang/String;
    .end local v6    # "wall_owner_id":Ljava/lang/String;
    .end local v8    # "post_owner_id":Ljava/lang/String;
    .end local v9    # "can_edit":Z
    .end local v10    # "can_remove":Z
    .end local v11    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v12    # "i_like":Z
    .end local v16    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_3
    return-void

    .line 365
    .restart local v5    # "post_id":Ljava/lang/String;
    .restart local v6    # "wall_owner_id":Ljava/lang/String;
    .restart local v8    # "post_owner_id":Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 391
    .restart local v4    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v9    # "can_edit":Z
    .restart local v10    # "can_remove":Z
    .restart local v12    # "i_like":Z
    :cond_a
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070214

    const/16 v7, 0x19

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 467
    .end local v4    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v5    # "post_id":Ljava/lang/String;
    .end local v6    # "wall_owner_id":Ljava/lang/String;
    .end local v8    # "post_owner_id":Ljava/lang/String;
    .end local v9    # "can_edit":Z
    .end local v10    # "can_remove":Z
    .end local v12    # "i_like":Z
    :catch_0
    move-exception v15

    .line 468
    .local v15, "th":Ljava/lang/Throwable;
    invoke-static {v15}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 469
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 395
    .end local v15    # "th":Ljava/lang/Throwable;
    .restart local v4    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v5    # "post_id":Ljava/lang/String;
    .restart local v6    # "wall_owner_id":Ljava/lang/String;
    .restart local v8    # "post_owner_id":Ljava/lang/String;
    .restart local v9    # "can_edit":Z
    .restart local v10    # "can_remove":Z
    .restart local v12    # "i_like":Z
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/WallFragment;->is_editor:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    if-eqz v2, :cond_c

    .line 396
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070218

    const/16 v7, 0xb

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070227

    const/4 v7, 0x7

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    cmp-long v2, v2, v18

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/WallFragment;->account_id:J

    move-wide/from16 v18, v0

    cmp-long v2, v2, v18

    if-eqz v2, :cond_8

    .line 399
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07029a

    const/16 v7, 0x15

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 401
    :cond_c
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f07018d

    const/16 v7, 0xb

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f070084

    const/4 v7, 0x7

    invoke-direct {v2, v3, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v6, 0x3f4

    const/16 v5, 0x3f3

    const/16 v4, 0x3f5

    const/4 v3, 0x0

    .line 558
    const/16 v0, 0x17

    const/16 v1, 0x1f4

    const v2, 0x7f0703a5

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 559
    const/16 v1, 0x3a

    const/16 v2, 0x3eb

    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    if-eqz v0, :cond_6

    const v0, 0x7f070278

    :goto_0
    invoke-interface {p1, v3, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 561
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/perm/kate/ProfileInfoActivity;

    if-eqz v0, :cond_0

    .line 562
    const/16 v0, 0x3e8

    const/16 v1, 0x3ed

    const v2, 0x7f0702d8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 563
    :cond_0
    const/16 v0, 0x3ef

    const/16 v1, 0x3f1

    const v2, 0x7f070253

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 564
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    if-eqz v0, :cond_2

    .line 565
    :cond_1
    const v0, 0x7f070168

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 566
    :cond_2
    const v0, 0x7f0701d5

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 568
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v0, :cond_3

    .line 569
    const v0, 0x7f0703fa

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 570
    :cond_3
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_4

    .line 571
    const v0, 0x7f0703f9

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 573
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/WallFragment;->filter:Lcom/perm/kate/WallFragment$PostFilter;

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-eqz v0, :cond_5

    .line 574
    const/16 v0, 0x3f6

    const v1, 0x7f0703d0

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 575
    :cond_5
    const/4 v0, 0x1

    return v0

    .line 559
    :cond_6
    const v0, 0x7f070025

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const-wide/16 v6, 0x0

    .line 150
    if-eqz p1, :cond_0

    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 151
    :cond_0
    if-ne p2, v1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    .line 154
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    .line 155
    if-ne p2, v1, :cond_2

    .line 156
    const-string v0, "group_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 157
    .local v8, "group_id":J
    const-string v0, "repost_post_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 158
    .local v2, "repost_post_id":J
    const-string v0, "repost_post_owner_id"

    invoke-virtual {p3, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 159
    .local v4, "repost_post_owner_id":J
    new-instance v1, Lcom/perm/utils/RepostHelper;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v6, p0, Lcom/perm/kate/WallFragment;->repostCallback:Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-direct {v1, v0, v6}, Lcom/perm/utils/RepostHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/utils/RepostHelper$RepostCallback;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/utils/RepostHelper;->createRepostDialog(JJLjava/lang/Long;)V

    .line 162
    .end local v2    # "repost_post_id":J
    .end local v4    # "repost_post_owner_id":J
    .end local v8    # "group_id":J
    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 129
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 130
    sget-object v0, Lcom/perm/kate/WallFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 131
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 132
    return-void
.end method

.method onCompose()V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    if-eqz v1, :cond_0

    .line 144
    const-string v1, "com.perm.kate.is_suggest"

    iget-boolean v2, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 108
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    .line 111
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "show_suggested"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/WallFragment;->show_suggested:Z

    .line 112
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.is_suggest"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/WallFragment;->is_suggest:Z

    .line 113
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/WallFragment;->account_id:J

    .line 114
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/WallFragment;->account_id:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_me:Z

    .line 115
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 116
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_editor:Z

    .line 117
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment;->account_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->is_moder:Z

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    .line 120
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    .line 122
    if-nez p1, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 87
    const v1, 0x7f03011f

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 89
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->setupFilterSpinner()V

    .line 90
    const v1, 0x7f0e01a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    .line 91
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 94
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 96
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    iget-boolean v2, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    iget-object v3, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-static {v1, v2, v3}, Lcom/perm/kate/NewsFragment;->setupWideDivider(ZZLandroid/widget/ListView;)V

    .line 98
    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->old_style_news:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/perm/kate/WallFragment;->card_style_news:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->displayData()V

    .line 101
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 738
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/WallMessageListAdapter;->destroy()V

    .line 740
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/WallFragment;->wall_message_list_adapter:Lcom/perm/kate/WallMessageListAdapter;

    .line 742
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 744
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/WallFragment;->lv_wall_message_list:Landroid/widget/ListView;

    .line 746
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 747
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 580
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 608
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_1
    return v1

    .line 582
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    goto :goto_0

    .line 585
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->onCompose()V

    goto :goto_1

    .line 588
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->showFilterDialog()V

    goto :goto_1

    .line 591
    :sswitch_3
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->showSearchWallActivity()V

    goto :goto_1

    .line 594
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->confirmClearWall()V

    goto :goto_1

    .line 597
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/DialogsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 600
    :sswitch_6
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/perm/kate/WallFragment;->direct_order:Z

    .line 601
    iput v2, p0, Lcom/perm/kate/WallFragment;->offset_shift:I

    .line 602
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    goto :goto_1

    :cond_0
    move v0, v2

    .line 600
    goto :goto_2

    .line 605
    :sswitch_7
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->showDatePicker()V

    goto :goto_1

    .line 580
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3a -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3ef -> :sswitch_3
        0x3f3 -> :sswitch_4
        0x3f4 -> :sswitch_5
        0x3f5 -> :sswitch_6
        0x3f6 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/perm/kate/WallFragment;->refresh()V

    .line 137
    return-void
.end method

.method protected removePost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "postId"    # Ljava/lang/String;
    .param p2, "postOwnerId"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 509
    .local v0, "post_id":Ljava/lang/Long;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 510
    .local v1, "wall_owner_id":Ljava/lang/Long;
    new-instance v2, Lcom/perm/kate/WallFragment$9;

    invoke-direct {v2, p0, v0, v1}, Lcom/perm/kate/WallFragment$9;-><init>(Lcom/perm/kate/WallFragment;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 530
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070039

    .line 531
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 532
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 533
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 534
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 535
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 536
    return-void
.end method

.method requeryOnUiThread()V
    .locals 2

    .prologue
    .line 539
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/WallFragment$10;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallFragment$10;-><init>(Lcom/perm/kate/WallFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method showSearchWallActivity()V
    .locals 4

    .prologue
    .line 835
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchWallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 837
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/WallFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 838
    const-string v1, "pinned_post_id"

    iget-wide v2, p0, Lcom/perm/kate/WallFragment;->pinned_post_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 839
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 840
    return-void
.end method
