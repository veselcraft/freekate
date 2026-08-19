.class public Lcom/perm/kate/BannedActivity;
.super Lcom/perm/kate/BaseActivity;
.source "BannedActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/BannedAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private items:Ljava/util/ArrayList;

.field private lv_banned_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Lcom/perm/kate/BannedActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/BannedActivity$2;-><init>(Lcom/perm/kate/BannedActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 96
    new-instance v0, Lcom/perm/kate/BannedActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedActivity$3;-><init>(Lcom/perm/kate/BannedActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 169
    new-instance v0, Lcom/perm/kate/BannedActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/BannedActivity$6;-><init>(Lcom/perm/kate/BannedActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/BannedActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/api/BannArg;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/BannedActivity;->fillItemsByArg(Lcom/perm/kate/api/BannArg;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/BannedActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BannedActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/BannedActivity;->removeItem(Lcom/perm/kate/BannedAdapter$BannItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/BannedAdapter;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    return-object p0
.end method

.method static synthetic access$502(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter;)Lcom/perm/kate/BannedAdapter;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/BannedActivity;)Landroid/widget/ListView;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/BannedActivity;->lv_banned_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/BannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private displayData()V
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/perm/kate/BannedActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedActivity$4;-><init>(Lcom/perm/kate/BannedActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fillItemsByArg(Lcom/perm/kate/api/BannArg;)V
    .locals 5

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 73
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 74
    iget-object v0, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 75
    new-instance v3, Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {v3}, Lcom/perm/kate/BannedAdapter$BannItem;-><init>()V

    const/4 v4, 0x0

    .line 76
    iput v4, v3, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    .line 77
    iput-wide v1, v3, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    .line 78
    iget-object v1, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 82
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 83
    iget-object p1, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 84
    new-instance v2, Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {v2}, Lcom/perm/kate/BannedAdapter$BannItem;-><init>()V

    const/4 v3, 0x1

    .line 85
    iput v3, v2, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    .line 86
    iput-wide v0, v2, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    .line 87
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private removeItem(Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    iget v0, p1, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 135
    iget-wide v2, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/perm/kate/BannedActivity;->deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 137
    :cond_1
    iget-wide v2, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/perm/kate/BannedActivity;->deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 154
    new-instance v0, Lcom/perm/kate/BannedActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/BannedActivity$5;-><init>(Lcom/perm/kate/BannedActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0035

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f020f

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09020b

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/BannedActivity;->lv_banned_list:Landroid/widget/ListView;

    .line 30
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->refreshInThread()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .line 40
    new-instance v0, Lcom/perm/kate/BannedActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedActivity$1;-><init>(Lcom/perm/kate/BannedActivity;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
