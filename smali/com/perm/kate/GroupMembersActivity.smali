.class public Lcom/perm/kate/GroupMembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupMembersActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/UsersListAdapter;

.field private filter:Ljava/lang/String;

.field private gid:J

.field private is_event:Z

.field private is_moder:Z

.field private lv_list:Landroid/widget/ListView;

.field private members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;"
        }
    .end annotation
.end field

.field private members_callback:Lcom/perm/kate/session/Callback;

.field private members_load_more_callback:Lcom/perm/kate/session/Callback;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private pauser:Lcom/perm/utils/ScrollPauser;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sort:Ljava/lang/String;

.field private state:I

.field private user_page_size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 31
    const/16 v0, 0x32

    iput v0, p0, Lcom/perm/kate/GroupMembersActivity;->user_page_size:I

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    .line 38
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    .line 41
    iput-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    .line 43
    iput-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    .line 85
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupMembersActivity$2;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_callback:Lcom/perm/kate/session/Callback;

    .line 141
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$4;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 156
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$5;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 201
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$6;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 232
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupMembersActivity$8;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupMembersActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/perm/kate/GroupMembersActivity;->user_page_size:I

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/utils/ScrollPauser;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->pauser:Lcom/perm/utils/ScrollPauser;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_load_more_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupMembersActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->changeSort(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupMembersActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->changeFilter(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupMembersActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # J

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupMembersActivity;->removeMemberInUI(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupMembersActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupMembersActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupMembersActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupMembersActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    return v0
.end method

.method static synthetic access$602(Lcom/perm/kate/GroupMembersActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupMembersActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupMembersActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->loadMore()V

    return-void
.end method

.method private changeFilter(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, "_filter":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 338
    const/4 v0, 0x0

    .line 339
    const v1, 0x7f07046d

    .line 342
    .local v1, "title":I
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    if-eq v2, v0, :cond_0

    .line 343
    iput-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->filter:Ljava/lang/String;

    .line 344
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 345
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/GroupMembersActivity;->displayData(Ljava/util/ArrayList;)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupMembersActivity;->setHeaderTitle(I)V

    .line 347
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    .line 349
    :cond_0
    return-void

    .line 330
    .end local v1    # "title":I
    :pswitch_0
    const-string v0, "friends"

    .line 331
    const v1, 0x7f0701d4

    .line 332
    .restart local v1    # "title":I
    goto :goto_0

    .line 334
    .end local v1    # "title":I
    :pswitch_1
    const-string v0, "unsure"

    .line 335
    const v1, 0x7f070298

    .line 336
    .restart local v1    # "title":I
    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private changeSort(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "value_array":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 309
    aget-object v1, v0, p1

    iput-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->sort:Ljava/lang/String;

    .line 310
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    .line 312
    :cond_0
    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    if-nez v1, :cond_0

    .line 130
    new-instance v1, Lcom/perm/kate/UsersListAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/UsersListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    .line 131
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupMembersActivity;->adapter:Lcom/perm/kate/UsersListAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/UsersListAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupMembersActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 119
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupMembersActivity$3;-><init>(Lcom/perm/kate/GroupMembersActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupMembersActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$7;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    .line 229
    invoke-virtual {v0}, Lcom/perm/kate/GroupMembersActivity$7;->start()V

    .line 230
    return-void
.end method

.method private removeMemberInUI(J)V
    .locals 7
    .param p1, "user_id"    # J

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 375
    .local v0, "removed_user":Lcom/perm/kate/api/User;
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 376
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v4, v1, Lcom/perm/kate/api/User;->uid:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 377
    move-object v0, v1

    .line 381
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    if-eqz v0, :cond_2

    .line 382
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 383
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->members:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/perm/kate/GroupMembersActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    .line 385
    :cond_2
    return-void
.end method

.method private showFilterDialog()V
    .locals 3

    .prologue
    .line 315
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 317
    iget-boolean v1, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d0011

    :goto_0
    new-instance v2, Lcom/perm/kate/GroupMembersActivity$10;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupMembersActivity$10;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 323
    return-void

    .line 317
    :cond_0
    const v1, 0x7f0d0010

    goto :goto_0
.end method

.method private showSortDialog()V
    .locals 4

    .prologue
    .line 294
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070271

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 296
    const v2, 0x7f0d001c

    new-instance v3, Lcom/perm/kate/GroupMembersActivity$9;

    invoke-direct {v3, p0}, Lcom/perm/kate/GroupMembersActivity$9;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 302
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 303
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 304
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    iget-boolean v0, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    if-eqz v0, :cond_0

    .line 275
    const/16 v0, 0x3ec

    const v1, 0x7f070271

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 276
    :cond_0
    const/16 v0, 0x47

    const/16 v1, 0x1b5d

    const v2, 0x7f0702d8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 277
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v2, 0x7f03008b

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupMembersActivity;->setContentView(I)V

    .line 50
    const v2, 0x7f07046d

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupMembersActivity;->setHeaderTitle(I)V

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->setupSearchButton()V

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->setupRefreshButton()V

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.gid"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    .line 54
    iget-wide v2, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->finish()V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.is_event"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/GroupMembersActivity;->is_event:Z

    .line 57
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    .local v0, "mid_long_value":J
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/GroupMembersActivity;->is_moder:Z

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->setupMenuButton()V

    .line 60
    const v2, 0x7f0e00c8

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupMembersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    .line 61
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/GroupMembersActivity;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 62
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/GroupMembersActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    iget-object v2, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/GroupMembersActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    .line 65
    iput v6, p0, Lcom/perm/kate/GroupMembersActivity;->state:I

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 268
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupMembersActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 269
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupMembersActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 290
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 284
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->showSortDialog()V

    goto :goto_0

    .line 287
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/GroupMembersActivity;->showFilterDialog()V

    .line 288
    const/4 v0, 0x1

    goto :goto_1

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x47 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/GroupMembersActivity;->refreshInThread()V

    .line 71
    return-void
.end method

.method protected onSearchButton()V
    .locals 4

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    const-string v1, "com.perm.kate.members_for_group"

    iget-wide v2, p0, Lcom/perm/kate/GroupMembersActivity;->gid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupMembersActivity;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupMembersActivity;->showProgressBar(Z)V

    .line 75
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupMembersActivity$1;-><init>(Lcom/perm/kate/GroupMembersActivity;)V

    .line 82
    invoke-virtual {v0}, Lcom/perm/kate/GroupMembersActivity$1;->start()V

    .line 83
    return-void
.end method

.method public removeUserFromGroup(JJ)V
    .locals 7
    .param p1, "group_id"    # J
    .param p3, "user_id"    # J

    .prologue
    .line 352
    new-instance v6, Lcom/perm/kate/GroupMembersActivity$11;

    invoke-direct {v6, p0, p0, p3, p4}, Lcom/perm/kate/GroupMembersActivity$11;-><init>(Lcom/perm/kate/GroupMembersActivity;Landroid/app/Activity;J)V

    .line 360
    .local v6, "remove_user_callback":Lcom/perm/kate/session/Callback;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupMembersActivity;->showProgressBar(Z)V

    .line 361
    new-instance v0, Lcom/perm/kate/GroupMembersActivity$12;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/GroupMembersActivity$12;-><init>(Lcom/perm/kate/GroupMembersActivity;JJLcom/perm/kate/session/Callback;)V

    .line 370
    invoke-virtual {v0}, Lcom/perm/kate/GroupMembersActivity$12;->start()V

    .line 371
    return-void
.end method
