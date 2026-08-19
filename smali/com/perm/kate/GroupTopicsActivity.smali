.class public Lcom/perm/kate/GroupTopicsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupTopicsActivity.java"


# instance fields
.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private group_id:J

.field private list:Landroid/widget/ListView;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field offset:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public static synthetic $r8$lambda$Ee2n7vKkVlHpAHlTuLy6DXxA3rU(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/perm/kate/GroupTopicsActivity;->lambda$onCreate$0(Landroid/widget/EditText;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/16 v0, 0x28

    .line 40
    iput v0, p0, Lcom/perm/kate/GroupTopicsActivity;->page_size:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/perm/kate/GroupTopicsActivity;->offset:I

    .line 92
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupTopicsActivity$2;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 154
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$4;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 202
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$6;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 446
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$19;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 473
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$21;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupTopicsActivity$21;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    .line 505
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$22;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private ShowNewTopicActivity()V
    .locals 4

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    const-class v1, Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 198
    iget-wide v1, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupTopicsActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    return p0
.end method

.method static synthetic access$002(Lcom/perm/kate/GroupTopicsActivity;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupTopicsActivity;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupTopicsActivity;JZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupTopicsActivity;->closeAndOpenTopic(JZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupTopicsActivity;JZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupTopicsActivity;->fixUnfixTopic(JZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupTopicsActivity;JLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupTopicsActivity;->editTopicTitle(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->loadMore()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/perm/kate/GroupTopicsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/GroupTopicsActivity;)Landroid/widget/ListView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/GroupTopicsActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/perm/kate/GroupTopicsActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupTopicsActivity;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/perm/kate/GroupTopicsActivity;->page_size:I

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/perm/kate/GroupTopicsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->refreshOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupTopicsActivity;->getUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupTopicsActivity;JJZZ)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/GroupTopicsActivity;->displayContextMenu(JJZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->confirmRemoveGroupTopic(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->copyGroupTopicLink(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->showEditTitleDialog(J)V

    return-void
.end method

.method private closeAndOpenTopic(JZ)V
    .locals 8

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 317
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$10;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$10;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;JZ)V

    .line 333
    new-instance v7, Lcom/perm/kate/GroupTopicsActivity$11;

    move-object v1, v7

    move v3, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$11;-><init>(Lcom/perm/kate/GroupTopicsActivity;ZJLcom/perm/kate/session/Callback;)V

    .line 341
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private confirmRemoveGroupTopic(J)V
    .locals 3

    .line 409
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 410
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/GroupTopicsActivity$16;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$16;-><init>(Lcom/perm/kate/GroupTopicsActivity;J)V

    const p1, 0x7f0f05a7

    .line 411
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v1, 0x0

    .line 416
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private copyGroupTopicLink(J)V
    .locals 2

    .line 405
    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-static {p1, p2, v0, v1, p0}, Lcom/perm/kate/Helper;->copyGroupTopicLink(JJLandroid/content/Context;)V

    return-void
.end method

.method private displayContextMenu(JJZZ)V
    .locals 7

    .line 227
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01db

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, p3

    if-eqz v3, :cond_0

    .line 230
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    :cond_0
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0f042f

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p6, :cond_2

    .line 234
    new-instance p6, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f02ef

    const/16 v4, 0x8

    invoke-direct {p6, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    :cond_2
    new-instance p6, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f026e

    const/4 v4, 0x7

    invoke-direct {p6, v3, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p5, :cond_3

    .line 238
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const p6, 0x7f0f032c

    const/4 v3, 0x6

    invoke-direct {p5, p6, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_3
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const p6, 0x7f0f0329

    const/4 v3, 0x5

    invoke-direct {p5, p6, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    const/4 p5, 0x1

    cmp-long p6, v1, p3

    if-eqz p6, :cond_5

    .line 242
    sget-object p3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iget-wide v1, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-virtual {p3, p4, v1, v2}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 243
    :cond_5
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f00ba

    invoke-direct {p3, p4, p5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_6
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const p4, 0x7f0f03aa

    const/4 p6, 0x3

    invoke-direct {p3, p4, p6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p4

    new-instance p6, Lcom/perm/kate/GroupTopicsActivity$7;

    invoke-direct {p6, p0, v0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$7;-><init>(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;J)V

    invoke-virtual {p3, p4, p6}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 277
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 278
    invoke-virtual {p1, p5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 279
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 281
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 282
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private displayData()V
    .locals 6

    .line 133
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 134
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroupTopics(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    const-string v3, "gta_fetchGroupTopics"

    .line 135
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 137
    new-instance v0, Lcom/perm/kate/GroupTopicsAdapter;

    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GroupTopicsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 138
    new-instance v1, Lcom/perm/kate/GroupTopicsActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupTopicsActivity$3;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 146
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private editTopicTitle(JLjava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    .line 379
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 380
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$14;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$14;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;JLjava/lang/String;)V

    .line 396
    new-instance v7, Lcom/perm/kate/GroupTopicsActivity$15;

    move-object v1, v7

    move-wide v3, p1

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$15;-><init>(Lcom/perm/kate/GroupTopicsActivity;JLjava/lang/String;Lcom/perm/kate/session/Callback;)V

    .line 401
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fixUnfixTopic(JZ)V
    .locals 8

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 288
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$8;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;JZ)V

    .line 304
    new-instance v7, Lcom/perm/kate/GroupTopicsActivity$9;

    move-object v1, v7

    move v3, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupTopicsActivity$9;-><init>(Lcom/perm/kate/GroupTopicsActivity;ZJLcom/perm/kate/session/Callback;)V

    .line 312
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getGroupTopics()V
    .locals 1

    .line 80
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$1;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getUsers(Ljava/util/ArrayList;)V
    .locals 3

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/GroupTopic;

    .line 125
    iget-wide v1, v1, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    const-string p1, ""

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 463
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$20;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 470
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshOnUiThread()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$5;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showEditTitleDialog(J)V
    .locals 6

    .line 345
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 346
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011d

    .line 347
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f0f04e7

    .line 348
    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 349
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 350
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/GroupTopicsActivity$12;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$12;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/widget/EditText;J)V

    const v5, 0x7f0f0398

    .line 351
    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0f01c5

    .line 357
    invoke-virtual {v0, v4, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v2, 0x0

    .line 359
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 360
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 362
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchTopicTitle(J)Ljava/lang/String;

    move-result-object p1

    .line 363
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 369
    new-instance p1, Lcom/perm/kate/GroupTopicsActivity$13;

    invoke-direct {p1, p0, v1}, Lcom/perm/kate/GroupTopicsActivity$13;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/widget/EditText;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    .line 182
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c009c

    .line 52
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0520

    .line 53
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 54
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09021d

    .line 56
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    .line 57
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 58
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p1, 0x7f090132

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 62
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0900be

    .line 63
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 64
    new-instance v1, Lcom/perm/kate/GroupTopicsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/perm/kate/GroupTopicsActivity$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.gid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 69
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    .line 70
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->displayData()V

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->getGroupTopics()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupTopicsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900e3

    if-eq v0, v1, :cond_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->ShowNewTopicActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->getGroupTopics()V

    return-void
.end method

.method protected removeGroupTopic(J)V
    .locals 2

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 422
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$17;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$17;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;J)V

    .line 438
    new-instance v1, Lcom/perm/kate/GroupTopicsActivity$18;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/GroupTopicsActivity$18;-><init>(Lcom/perm/kate/GroupTopicsActivity;JLcom/perm/kate/session/Callback;)V

    .line 443
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
