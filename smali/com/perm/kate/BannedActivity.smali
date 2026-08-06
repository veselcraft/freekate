.class public Lcom/perm/kate/BannedActivity;
.super Lcom/perm/kate/BaseActivity;
.source "BannedActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/BannedAdapter;

.field private callback:Lcom/perm/kate/session/Callback;

.field private delete_callback:Lcom/perm/kate/session/Callback;

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/BannedAdapter$BannItem;",
            ">;"
        }
    .end annotation
.end field

.field private lv_banned_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
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
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/api/BannArg;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/BannArg;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/BannedActivity;->fillItemsByArg(Lcom/perm/kate/api/BannArg;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/BannedActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/BannedActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BannedActivity;->displayData()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/BannedAdapter$BannItem;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/BannedActivity;->removeItem(Lcom/perm/kate/BannedAdapter$BannItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/BannedAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter;)Lcom/perm/kate/BannedAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;
    .param p1, "x1"    # Lcom/perm/kate/BannedAdapter;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/BannedActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->lv_banned_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/BannedActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BannedActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->delete_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private displayData()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/perm/kate/BannedActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedActivity$4;-><init>(Lcom/perm/kate/BannedActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/BannedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fillItemsByArg(Lcom/perm/kate/api/BannArg;)V
    .locals 5
    .param p1, "arg"    # Lcom/perm/kate/api/BannArg;

    .prologue
    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    .line 70
    if-nez p1, :cond_1

    .line 90
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 73
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 74
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->members:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 75
    .local v0, "id":J
    new-instance v2, Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {v2}, Lcom/perm/kate/BannedAdapter$BannItem;-><init>()V

    .line 76
    .local v2, "item":Lcom/perm/kate/BannedAdapter$BannItem;
    const/4 v3, 0x0

    iput v3, v2, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    .line 77
    iput-wide v0, v2, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    .line 78
    iget-object v3, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v0    # "id":J
    .end local v2    # "item":Lcom/perm/kate/BannedAdapter$BannItem;
    :cond_2
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 83
    iget-object v3, p1, Lcom/perm/kate/api/BannArg;->groups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 84
    .restart local v0    # "id":J
    new-instance v2, Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {v2}, Lcom/perm/kate/BannedAdapter$BannItem;-><init>()V

    .line 85
    .restart local v2    # "item":Lcom/perm/kate/BannedAdapter$BannItem;
    const/4 v3, 0x1

    iput v3, v2, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    .line 86
    iput-wide v0, v2, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    .line 87
    iget-object v3, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeItem(Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 3
    .param p1, "item"    # Lcom/perm/kate/BannedAdapter$BannItem;

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->adapter:Lcom/perm/kate/BannedAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/BannedAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    iget v0, p1, Lcom/perm/kate/BannedAdapter$BannItem;->type:I

    if-nez v0, :cond_1

    .line 135
    iget-wide v0, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/BannedActivity;->deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-wide v0, p1, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/perm/kate/BannedActivity;->deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method


# virtual methods
.method public deleteInThread(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "uid"    # Ljava/lang/Long;
    .param p2, "gid"    # Ljava/lang/Long;

    .prologue
    .line 154
    new-instance v0, Lcom/perm/kate/BannedActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/BannedActivity$5;-><init>(Lcom/perm/kate/BannedActivity;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 166
    invoke-virtual {v0}, Lcom/perm/kate/BannedActivity$5;->start()V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/perm/kate/BannedActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f0701b3

    invoke-virtual {p0, v0}, Lcom/perm/kate/BannedActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->setupRefreshButton()V

    .line 29
    const v0, 0x7f0e00b0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BannedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/BannedActivity;->lv_banned_list:Landroid/widget/ListView;

    .line 30
    iget-object v0, p0, Lcom/perm/kate/BannedActivity;->lv_banned_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/BannedActivity;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->refreshInThread()V

    .line 32
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/BannedActivity;->refreshInThread()V

    .line 37
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/perm/kate/BannedActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BannedActivity$1;-><init>(Lcom/perm/kate/BannedActivity;)V

    .line 46
    invoke-virtual {v0}, Lcom/perm/kate/BannedActivity$1;->start()V

    .line 47
    return-void
.end method
