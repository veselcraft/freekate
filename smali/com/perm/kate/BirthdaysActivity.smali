.class public Lcom/perm/kate/BirthdaysActivity;
.super Lcom/perm/kate/BaseActivity;
.source "BirthdaysActivity.java"


# static fields
.field public static fields:Ljava/lang/String; = "first_name,last_name,photo_100,bdate"


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
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 25
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

    const-wide/32 v0, 0x5265c00

    .line 153
    iput-wide v0, p0, Lcom/perm/kate/BirthdaysActivity;->max_period:J

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/BirthdaysActivity;)Ljava/lang/Long;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/BirthdaysActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/perm/kate/BirthdaysActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/BirthdaysActivity;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/perm/kate/BirthdaysActivity;->displayData()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->birthdayHelper:Lcom/perm/kate/BirthdayHelper;

    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/perm/kate/BirthdayHelper;->buildBirthdayTree(JLandroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BirthdaysListAdapter;

    if-nez v1, :cond_0

    .line 140
    new-instance v1, Lcom/perm/kate/BirthdaysListAdapter;

    invoke-direct {v1, v0, p0}, Lcom/perm/kate/BirthdaysListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 141
    iget-object v2, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/perm/kate/BirthdayHelper;->getDayToSelect(Ljava/util/ArrayList;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v1, v0}, Lcom/perm/kate/BirthdaysListAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 30
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0c0089

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01b4

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    const p1, 0x7f09021e

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity;->lv_user_list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/BirthdaysActivity;->displayData()V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThreadSometimes()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 165
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    .line 176
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    .line 102
    new-instance v0, Lcom/perm/kate/BirthdaysActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/BirthdaysActivity$3;-><init>(Lcom/perm/kate/BirthdaysActivity;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method refreshInThreadSometimes()V
    .locals 5

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

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/perm/kate/BirthdaysActivity;->refreshInThread()V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/perm/kate/BirthdayHelper;->updateLastRefresh(Landroid/content/Context;J)V

    :cond_0
    return-void
.end method
