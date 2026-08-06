.class public Lcom/perm/kate/GroupTopicsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupTopicsActivity.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private group_id:J

.field private list:Landroid/widget/ListView;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private page_size:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 31
    const/16 v0, 0x28

    iput v0, p0, Lcom/perm/kate/GroupTopicsActivity;->page_size:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    .line 75
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupTopicsActivity$2;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 126
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$3;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 174
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$5;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 262
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$10;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 292
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$12;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupTopicsActivity$12;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method private ShowNewTopicActivity()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewGroupTopicActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string v1, "com.perm.kate.group_id"

    iget-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupTopicsActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupTopicsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    return v0
.end method

.method static synthetic access$002(Lcom/perm/kate/GroupTopicsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/perm/kate/GroupTopicsActivity;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupTopicsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupTopicsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/perm/kate/GroupTopicsActivity;->page_size:I

    return v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupTopicsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/GroupTopicsActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->refreshOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupTopicsActivity;->getUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->displayContextMenu(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->confirmRemoveGroupTopic(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupTopicsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity;->copyGroupTopicLink(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupTopicsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupTopicsActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->loadMore()V

    return-void
.end method

.method private confirmRemoveGroupTopic(J)V
    .locals 5
    .param p1, "topic_id"    # J

    .prologue
    .line 225
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f0704a6

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/GroupTopicsActivity$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$7;-><init>(Lcom/perm/kate/GroupTopicsActivity;J)V

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 234
    return-void
.end method

.method private copyGroupTopicLink(J)V
    .locals 3
    .param p1, "topic_id"    # J

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-static {p1, p2, v0, v1, p0}, Lcom/perm/kate/Helper;->copyGroupTopicLink(JJLandroid/content/Context;)V

    .line 222
    return-void
.end method

.method private displayContextMenu(J)V
    .locals 7
    .param p1, "topic_id"    # J

    .prologue
    .line 190
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070178

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070084

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v4, Lcom/perm/kate/MenuItemDetails;

    const v5, 0x7f070345

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v4, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v6, Lcom/perm/kate/GroupTopicsActivity$6;

    invoke-direct {v6, p0, v1, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$6;-><init>(Lcom/perm/kate/GroupTopicsActivity;Ljava/util/ArrayList;J)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 211
    .local v3, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 212
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 213
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v2

    .line 215
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 216
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 115
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroupTopics(J)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    .line 116
    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupTopicsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 117
    new-instance v0, Lcom/perm/kate/GroupTopicsAdapter;

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/GroupTopicsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 118
    .local v0, "adapter":Lcom/perm/kate/GroupTopicsAdapter;
    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "adapter":Lcom/perm/kate/GroupTopicsAdapter;
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 121
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupTopicsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getGroupTopics()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$1;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 72
    invoke-virtual {v0}, Lcom/perm/kate/GroupTopicsActivity$1;->start()V

    .line 73
    return-void
.end method

.method private getUsers(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/GroupTopic;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/GroupTopic;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/GroupTopic;

    .line 107
    .local v0, "topic":Lcom/perm/kate/api/GroupTopic;
    iget-wide v4, v0, Lcom/perm/kate/api/GroupTopic;->updated_by:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    .end local v0    # "topic":Lcom/perm/kate/api/GroupTopic;
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 109
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$11;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    .line 289
    invoke-virtual {v0}, Lcom/perm/kate/GroupTopicsActivity$11;->start()V

    .line 290
    return-void
.end method

.method private refreshOnUiThread()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupTopicsActivity$4;-><init>(Lcom/perm/kate/GroupTopicsActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupTopicsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 154
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 155
    const/4 v1, 0x1

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03008f

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupTopicsActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f070493

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupTopicsActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->setupMenuButton()V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->setupRefreshButton()V

    .line 46
    const v1, 0x7f0e01f1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupTopicsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    .line 47
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 48
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 49
    iget-object v1, p0, Lcom/perm/kate/GroupTopicsActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupTopicsActivity;->long_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.gid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "str_gid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GroupTopicsActivity;->finish()V

    .line 53
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupTopicsActivity;->group_id:J

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->displayData()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->getGroupTopics()V

    .line 56
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 148
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupTopicsActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 159
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 161
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->ShowNewTopicActivity()V

    .line 162
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03a8
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/perm/kate/GroupTopicsActivity;->getGroupTopics()V

    .line 61
    return-void
.end method

.method protected removeGroupTopic(J)V
    .locals 3
    .param p1, "topic_id"    # J

    .prologue
    .line 237
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupTopicsActivity;->showProgressBar(Z)V

    .line 238
    new-instance v0, Lcom/perm/kate/GroupTopicsActivity$8;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/kate/GroupTopicsActivity$8;-><init>(Lcom/perm/kate/GroupTopicsActivity;Landroid/app/Activity;J)V

    .line 254
    .local v0, "callback_delete":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/GroupTopicsActivity$9;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/GroupTopicsActivity$9;-><init>(Lcom/perm/kate/GroupTopicsActivity;JLcom/perm/kate/session/Callback;)V

    .line 259
    invoke-virtual {v1}, Lcom/perm/kate/GroupTopicsActivity$9;->start()V

    .line 260
    return-void
.end method
