.class public Lcom/perm/kate/GroupManagementActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupManagementActivity.java"


# static fields
.field static PROMOTE_REQUEST_CODE:I = 0x2

.field static REFRESH_REQUEST_CODE:I = 0x1


# instance fields
.field private adapter:Lcom/perm/kate/GroupManagersAdapter;

.field private contacts:Ljava/util/ArrayList;

.field private dismiss_callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

.field private lv_list:Landroid/widget/ListView;

.field private members:Ljava/util/ArrayList;

.field private members_callback:Lcom/perm/kate/session/Callback;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private user_name:Ljava/lang/String;

.field private user_page_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/16 v0, 0x32

    .line 25
    iput v0, p0, Lcom/perm/kate/GroupManagementActivity;->user_page_size:I

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupManagementActivity$2;-><init>(Lcom/perm/kate/GroupManagementActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->members_callback:Lcom/perm/kate/session/Callback;

    .line 118
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagementActivity$4;-><init>(Lcom/perm/kate/GroupManagementActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 172
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupManagementActivity$6;-><init>(Lcom/perm/kate/GroupManagementActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->dismiss_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupManagementActivity;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupManagementActivity;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/perm/kate/GroupManagementActivity;->user_page_size:I

    return p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/GroupManagementActivity;->dismiss_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/GroupManagementActivity;->onComletedDismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/GroupManagementActivity;->members_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupManagementActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupManagementActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupManagementActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/perm/kate/GroupManagementActivity;->addNewManager()V

    return-void
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupManagementActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupManagementActivity;JLjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupManagementActivity;->showEditActivity(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupManagementActivity;J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupManagementActivity;->dismissManager(J)V

    return-void
.end method

.method private addNewManager()V
    .locals 5

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_user"

    const/4 v2, 0x1

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-wide v3, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    const-string v1, "com.perm.kate.members_for_group"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_user"

    .line 247
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    sget v1, Lcom/perm/kate/GroupManagementActivity;->PROMOTE_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private dismissManager(J)V
    .locals 1

    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 162
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/GroupManagementActivity$5;-><init>(Lcom/perm/kate/GroupManagementActivity;J)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData(Ljava/util/ArrayList;)V
    .locals 2

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/perm/kate/GroupManagersAdapter;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    .line 104
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    invoke-virtual {v0, p1}, Lcom/perm/kate/GroupManagersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayDataInUI(Ljava/util/ArrayList;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupManagementActivity$3;-><init>(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onComletedDismiss()V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f0f0531

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    return-void
.end method

.method private showEditActivity(JLjava/lang/String;)V
    .locals 5

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    iget-wide v1, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    const-string v3, "com.perm.kate.group_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 196
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.role"

    .line 197
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object p3, p0, Lcom/perm/kate/GroupManagementActivity;->contacts:Ljava/util/ArrayList;

    if-eqz p3, :cond_1

    .line 201
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Contact;

    .line 202
    iget-object v2, v1, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    const/4 p1, 0x1

    .line 204
    iget-object p2, v1, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    :goto_0
    const-string p3, "com.perm.kate.is_contact"

    .line 209
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.perm.kate.contact_position"

    .line 210
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget p1, Lcom/perm/kate/GroupManagementActivity;->REFRESH_REQUEST_CODE:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 219
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    sget v0, Lcom/perm/kate/GroupManagementActivity;->REFRESH_REQUEST_CODE:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    .line 225
    :cond_0
    sget v0, Lcom/perm/kate/GroupManagementActivity;->PROMOTE_REQUEST_CODE:I

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    const-string p1, "user_id"

    .line 227
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 229
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const/4 p3, 0x0

    .line 231
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 232
    iget-wide v2, v1, Lcom/perm/kate/api/User;->uid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_1

    .line 233
    iget-object p3, v1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 237
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupManagementActivity;->showEditActivity(JLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0098

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0500

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.group_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.contacts"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->contacts:Ljava/util/ArrayList;

    const p1, 0x7f090213

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    return-void
.end method

.method public refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 53
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagementActivity$1;-><init>(Lcom/perm/kate/GroupManagementActivity;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
