.class public Lcom/perm/kate/LikesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "LikesActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/LikesAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private filter:Ljava/lang/String;

.field private item_id:Ljava/lang/Long;

.field private item_type:Ljava/lang/String;

.field private lv_user_list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private owner_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/perm/kate/LikesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/LikesActivity$2;-><init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 97
    new-instance v0, Lcom/perm/kate/LikesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$3;-><init>(Lcom/perm/kate/LikesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/LikesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->item_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->item_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/LikesActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/LikesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/LikesActivity;)Lcom/perm/kate/LikesAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->adapter:Lcom/perm/kate/LikesAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/LikesActivity;Lcom/perm/kate/LikesAdapter;)Lcom/perm/kate/LikesAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;
    .param p1, "x1"    # Lcom/perm/kate/LikesAdapter;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/perm/kate/LikesActivity;->adapter:Lcom/perm/kate/LikesAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/LikesActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/LikesActivity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    return-object v0
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/LikesActivity;->showProgressBar(Z)V

    .line 43
    new-instance v0, Lcom/perm/kate/LikesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/LikesActivity$1;-><init>(Lcom/perm/kate/LikesActivity;)V

    .line 49
    invoke-virtual {v0}, Lcom/perm/kate/LikesActivity$1;->start()V

    .line 50
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 127
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v4, 0x0

    .line 26
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v1, 0x7f030097

    invoke-virtual {p0, v1}, Lcom/perm/kate/LikesActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/LikesActivity;->setupRefreshButton()V

    .line 29
    const v1, 0x7f0e00d6

    invoke-virtual {p0, v1}, Lcom/perm/kate/LikesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    .line 30
    iget-object v1, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/LikesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.item_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/LikesActivity;->item_id:Ljava/lang/Long;

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/LikesActivity;->owner_id:Ljava/lang/Long;

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.item_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/LikesActivity;->item_type:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/LikesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.is_copies"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    .local v0, "is_copies":Z
    if-eqz v0, :cond_0

    .line 36
    const-string v1, "copies"

    iput-object v1, p0, Lcom/perm/kate/LikesActivity;->filter:Ljava/lang/String;

    .line 37
    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x7f070519

    :goto_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/LikesActivity;->setHeaderTitle(I)V

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    .line 39
    return-void

    .line 37
    :cond_1
    const v1, 0x7f070518

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/perm/kate/LikesActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 120
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/perm/kate/LikesActivity;->lv_user_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 115
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 135
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/perm/kate/LikesActivity;->refreshInThread()V

    .line 55
    return-void
.end method
