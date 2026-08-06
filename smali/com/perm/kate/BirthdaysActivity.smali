.class public Lcom/perm/kate/BirthdaysActivity;
.super Lcom/perm/kate/BaseActivity;
.source "BirthdaysActivity.java"


# static fields
.field public static fields:Ljava/lang/String;


# instance fields
.field birthdayHelper:Lcom/perm/kate/BirthdayHelper;

.field private callback:Lcom/perm/kate/session/Callback;

.field private lv_user_list:Landroid/widget/ListView;

.field max_period:J

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private user_id:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    const-string v0, "first_name,last_name,photo_100,bdate"

    sput-object v0, Lcom/perm/kate/BirthdaysActivity;->fields:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    .line 26
    new-instance v0, Lcom/perm/kate/BirthdayHelper;

    invoke-direct {v0}, Lcom/perm/kate/BirthdayHelper;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->birthdayHelper:Lcom/perm/kate/BirthdayHelper;

    .line 57
    new-instance v0, Lcom/perm/kate/BirthdaysActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdaysActivity$1;-><init>(Lcom/perm/kate/BirthdaysActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 89
    new-instance v0, Lcom/perm/kate/BirthdaysActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdaysActivity$2;-><init>(Lcom/perm/kate/BirthdaysActivity;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 111
    new-instance v0, Lcom/perm/kate/BirthdaysActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/BirthdaysActivity$4;-><init>(Lcom/perm/kate/BirthdaysActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 153
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/perm/kate/BirthdaysActivity;->max_period:J

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BirthdaysActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BirthdaysActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/BirthdaysActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/BirthdaysActivity;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/BirthdaysActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/BirthdaysActivity;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BirthdaysActivity;->displayData()V

    return-void
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/BirthdaysActivity;->birthdayHelper:Lcom/perm/kate/BirthdayHelper;

    iget-object v4, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p0}, Lcom/perm/kate/BirthdayHelper;->buildBirthdayTree(JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 138
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BirthdaysListAdapter;

    .line 139
    .local v0, "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/perm/kate/BirthdaysListAdapter;

    .end local v0    # "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    invoke-direct {v0, v2, p0}, Lcom/perm/kate/BirthdaysListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 141
    .restart local v0    # "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    iget-object v3, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v3, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-static {v2}, Lcom/perm/kate/BirthdayHelper;->getDayToSelect(Ljava/util/ArrayList;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 150
    .end local v0    # "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 144
    .restart local v0    # "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    .restart local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v0, v2}, Lcom/perm/kate/BirthdaysListAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v0    # "adapter":Lcom/perm/kate/BirthdaysListAdapter;
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->finish()V

    .line 47
    :goto_0
    return-void

    .line 35
    :cond_0
    const v1, 0x7f03007c

    invoke-virtual {p0, v1}, Lcom/perm/kate/BirthdaysActivity;->setContentView(I)V

    .line 36
    const v1, 0x7f07014b

    invoke-virtual {p0, v1}, Lcom/perm/kate/BirthdaysActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->setupRefreshButton()V

    .line 38
    const v1, 0x7f0e00d6

    invoke-virtual {p0, v1}, Lcom/perm/kate/BirthdaysActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    .line 39
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/BirthdaysActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 40
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/BirthdaysActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/BirthdaysActivity;->displayData()V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThreadSometimes()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 165
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 166
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 176
    :goto_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 173
    :pswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    .line 52
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/perm/kate/BirthdaysActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdaysActivity$3;-><init>(Lcom/perm/kate/BirthdaysActivity;)V

    .line 108
    invoke-virtual {v0}, Lcom/perm/kate/BirthdaysActivity$3;->start()V

    .line 109
    return-void
.end method

.method refreshInThreadSometimes()V
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/perm/kate/BirthdayHelper;->getLastRefresh(Landroid/content/Context;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/perm/kate/BirthdaysActivity;->max_period:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/perm/kate/BirthdayHelper;->updateLastRefresh(Landroid/content/Context;J)V

    .line 159
    :cond_0
    return-void
.end method
