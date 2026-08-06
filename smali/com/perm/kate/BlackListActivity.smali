.class public Lcom/perm/kate/BlackListActivity;
.super Lcom/perm/kate/BaseActivity;
.source "BlackListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/BlackListActivity$BlackListCallback;
    }
.end annotation


# instance fields
.field private adapter:Lcom/perm/kate/FriendsListAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private count:J

.field private ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_black_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    .line 24
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/perm/kate/BlackListActivity;->count:J

    .line 52
    new-instance v0, Lcom/perm/kate/BlackListActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/BlackListActivity$2;-><init>(Lcom/perm/kate/BlackListActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 84
    new-instance v0, Lcom/perm/kate/BlackListActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$3;-><init>(Lcom/perm/kate/BlackListActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public static AddToBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 5
    .param p0, "uid_str"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "blackListListener"    # Lcom/perm/kate/BlackListActivity$BlackListCallback;

    .prologue
    .line 144
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    instance-of v1, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 147
    check-cast v1, Lcom/perm/kate/BaseActivity;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 148
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 149
    .local v2, "uid":J
    new-instance v0, Lcom/perm/kate/BlackListActivity$6;

    invoke-direct {v0, p1, p1, p2}, Lcom/perm/kate/BlackListActivity$6;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 182
    .local v0, "add_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/BlackListActivity$7;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/perm/kate/BlackListActivity$7;-><init>(JLcom/perm/kate/session/Callback;Landroid/support/v4/app/FragmentActivity;)V

    .line 187
    invoke-virtual {v1}, Lcom/perm/kate/BlackListActivity$7;->start()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/BlackListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/BlackListActivity;->count:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/BlackListActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/BlackListActivity;->fillItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/BlackListActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/BlackListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->displayData()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BlackListActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/BlackListActivity;->removeItem(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/FriendsListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/BlackListActivity;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;
    .param p1, "x1"    # Lcom/perm/kate/FriendsListAdapter;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity;->adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/BlackListActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BlackListActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->lv_black_list:Landroid/widget/ListView;

    return-object v0
.end method

.method private displayData()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/perm/kate/BlackListActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$5;-><init>(Lcom/perm/kate/BlackListActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/BlackListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fillItems(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 73
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    .line 74
    if-nez p1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 77
    .local v0, "user":Lcom/perm/kate/api/User;
    iget-object v2, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    iget-wide v4, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 78
    .end local v0    # "user":Lcom/perm/kate/api/User;
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->displayData()V

    .line 128
    return-void
.end method

.method public static removeFromBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 5
    .param p0, "uid_str"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "blackListListener"    # Lcom/perm/kate/BlackListActivity$BlackListCallback;

    .prologue
    .line 191
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    instance-of v1, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 194
    check-cast v1, Lcom/perm/kate/BaseActivity;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 195
    :cond_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 196
    .local v2, "uid":J
    new-instance v0, Lcom/perm/kate/BlackListActivity$8;

    invoke-direct {v0, p1, p1, p2}, Lcom/perm/kate/BlackListActivity$8;-><init>(Landroid/app/Activity;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 221
    .local v0, "add_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/BlackListActivity$9;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/perm/kate/BlackListActivity$9;-><init>(JLcom/perm/kate/session/Callback;Landroid/support/v4/app/FragmentActivity;)V

    .line 226
    invoke-virtual {v1}, Lcom/perm/kate/BlackListActivity$9;->start()V

    goto :goto_0
.end method

.method private removeItem(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 114
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->notifyDataSetChanged()V

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/BlackListActivity$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/BlackListActivity$4;-><init>(Lcom/perm/kate/BlackListActivity;)V

    invoke-static {v0, p0, v1}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/perm/kate/BlackListActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f07014d

    invoke-virtual {p0, v0}, Lcom/perm/kate/BlackListActivity;->setHeaderTitle(I)V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->setupRefreshButton()V

    .line 32
    const v0, 0x7f0e00b7

    invoke-virtual {p0, v0}, Lcom/perm/kate/BlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->lv_black_list:Landroid/widget/ListView;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->lv_black_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/BlackListActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    .line 35
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    .line 40
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/perm/kate/BlackListActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$1;-><init>(Lcom/perm/kate/BlackListActivity;)V

    .line 49
    invoke-virtual {v0}, Lcom/perm/kate/BlackListActivity$1;->start()V

    .line 50
    return-void
.end method
