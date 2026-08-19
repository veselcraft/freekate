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

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_black_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    const-wide/16 v0, 0xc8

    .line 24
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

.method public static AddToBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_1

    .line 147
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 148
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 149
    new-instance p0, Lcom/perm/kate/BlackListActivity$6;

    invoke-direct {p0, p1, p1, p2}, Lcom/perm/kate/BlackListActivity$6;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 182
    new-instance p2, Lcom/perm/kate/BlackListActivity$7;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/perm/kate/BlackListActivity$7;-><init>(JLcom/perm/kate/session/Callback;Landroidx/fragment/app/FragmentActivity;)V

    .line 187
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BlackListActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/BlackListActivity;->count:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/BlackListActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/BlackListActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/BlackListActivity;->fillItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/BlackListActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/BlackListActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->displayData()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BlackListActivity;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/BlackListActivity;->removeItem(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/BlackListActivity;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/BlackListActivity;->adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p0
.end method

.method static synthetic access$602(Lcom/perm/kate/BlackListActivity;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity;->adapter:Lcom/perm/kate/FriendsListAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/BlackListActivity;)Landroid/widget/ListView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/BlackListActivity;->lv_black_list:Landroid/widget/ListView;

    return-object p0
.end method

.method private displayData()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Lcom/perm/kate/BlackListActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$5;-><init>(Lcom/perm/kate/BlackListActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;)V
    .locals 5

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 77
    iget-object v2, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    iget-wide v3, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->displayData()V

    return-void
.end method

.method public static removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V
    .locals 2

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    instance-of v0, p1, Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_1

    .line 194
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 195
    :cond_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 196
    new-instance p0, Lcom/perm/kate/BlackListActivity$8;

    invoke-direct {p0, p1, p1, p2}, Lcom/perm/kate/BlackListActivity$8;-><init>(Landroid/app/Activity;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 221
    new-instance p2, Lcom/perm/kate/BlackListActivity$9;

    invoke-direct {p2, v0, v1, p0, p1}, Lcom/perm/kate/BlackListActivity$9;-><init>(JLcom/perm/kate/session/Callback;Landroidx/fragment/app/FragmentActivity;)V

    .line 226
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeItem(J)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->ids:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-direct {p0}, Lcom/perm/kate/BlackListActivity;->notifyDataSetChanged()V

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/perm/kate/BlackListActivity$4;

    invoke-direct {p2, p0}, Lcom/perm/kate/BlackListActivity$4;-><init>(Lcom/perm/kate/BlackListActivity;)V

    invoke-static {p1, p0, p2}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0038

    .line 29
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01b6

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09020c

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/BlackListActivity;->lv_black_list:Landroid/widget/ListView;

    .line 33
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/BlackListActivity;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .line 43
    new-instance v0, Lcom/perm/kate/BlackListActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BlackListActivity$1;-><init>(Lcom/perm/kate/BlackListActivity;)V

    .line 49
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
