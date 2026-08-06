.class public Lcom/perm/kate/GroupManagementActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupManagementActivity.java"


# static fields
.field static PROMOTE_REQUEST_CODE:I

.field static REFRESH_REQUEST_CODE:I


# instance fields
.field private adapter:Lcom/perm/kate/GroupManagersAdapter;

.field private contacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private dismiss_callback:Lcom/perm/kate/session/Callback;

.field private group_id:J

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

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private user_name:Ljava/lang/String;

.field private user_page_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    sput v0, Lcom/perm/kate/GroupManagementActivity;->REFRESH_REQUEST_CODE:I

    .line 215
    const/4 v0, 0x2

    sput v0, Lcom/perm/kate/GroupManagementActivity;->PROMOTE_REQUEST_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 25
    const/16 v0, 0x32

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
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupManagementActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/perm/kate/GroupManagementActivity;->user_page_size:I

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->dismiss_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/GroupManagementActivity;->onComletedDismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupManagementActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->members_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupManagementActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupManagementActivity;->displayDataInUI(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupManagementActivity;->displayData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupManagementActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/GroupManagementActivity;->addNewManager()V

    return-void
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupManagementActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/perm/kate/GroupManagementActivity;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupManagementActivity;JLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/GroupManagementActivity;->showEditActivity(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupManagementActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupManagementActivity;
    .param p1, "x1"    # J

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupManagementActivity;->dismissManager(J)V

    return-void
.end method

.method private addNewManager()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string v1, "com.perm.kate.members_for_group"

    iget-wide v2, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 247
    const-string v1, "com.perm.kate.select_user"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    sget v1, Lcom/perm/kate/GroupManagementActivity;->PROMOTE_REQUEST_CODE:I

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 249
    return-void
.end method

.method private dismissManager(J)V
    .locals 1
    .param p1, "user_id"    # J

    .prologue
    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    .line 162
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/GroupManagementActivity$5;-><init>(Lcom/perm/kate/GroupManagementActivity;J)V

    .line 169
    invoke-virtual {v0}, Lcom/perm/kate/GroupManagementActivity$5;->start()V

    .line 170
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
    .line 102
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcom/perm/kate/GroupManagersAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupManagersAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    .line 104
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->adapter:Lcom/perm/kate/GroupManagersAdapter;

    invoke-virtual {v1, p1}, Lcom/perm/kate/GroupManagersAdapter;->displayData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupManagementActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 110
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
    .line 90
    .local p1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupManagementActivity$3;-><init>(Lcom/perm/kate/GroupManagementActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onComletedDismiss()V
    .locals 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0704aa

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 190
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    .line 191
    return-void
.end method

.method private showEditActivity(JLjava/lang/String;)V
    .locals 9
    .param p1, "user_id"    # J
    .param p3, "role"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/perm/kate/EditGroupManagerActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.perm.kate.group_id"

    iget-wide v6, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 196
    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v2, v4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 197
    const-string v4, "com.perm.kate.role"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "is_contact":Z
    const/4 v1, 0x0

    .line 200
    .local v1, "contact_position":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/GroupManagementActivity;->contacts:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/perm/kate/GroupManagementActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Contact;

    .line 202
    .local v0, "c":Lcom/perm/kate/api/Contact;
    iget-object v5, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_0

    .line 203
    const/4 v3, 0x1

    .line 204
    iget-object v1, v0, Lcom/perm/kate/api/Contact;->desc:Ljava/lang/String;

    .line 209
    .end local v0    # "c":Lcom/perm/kate/api/Contact;
    :cond_1
    const-string v4, "com.perm.kate.is_contact"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string v4, "com.perm.kate.contact_position"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    sget v4, Lcom/perm/kate/GroupManagementActivity;->REFRESH_REQUEST_CODE:I

    invoke-virtual {p0, v2, v4}, Lcom/perm/kate/GroupManagementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 219
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 220
    sget v5, Lcom/perm/kate/GroupManagementActivity;->REFRESH_REQUEST_CODE:I

    if-ne p1, v5, :cond_0

    .line 221
    if-ne p2, v6, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    .line 225
    :cond_0
    sget v5, Lcom/perm/kate/GroupManagementActivity;->PROMOTE_REQUEST_CODE:I

    if-ne p1, v5, :cond_3

    .line 226
    if-ne p2, v6, :cond_3

    if-eqz p3, :cond_3

    .line 227
    const-string v5, "user_id"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "user_id_str":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 229
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 230
    .local v2, "user_id":J
    const/4 v0, 0x0

    .line 231
    .local v0, "role":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/GroupManagementActivity;->members:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 232
    .local v1, "u":Lcom/perm/kate/api/User;
    iget-wide v6, v1, Lcom/perm/kate/api/User;->uid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    .line 233
    iget-object v0, v1, Lcom/perm/kate/api/User;->role:Ljava/lang/String;

    .line 237
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_2
    invoke-direct {p0, v2, v3, v0}, Lcom/perm/kate/GroupManagementActivity;->showEditActivity(JLjava/lang/String;)V

    .line 241
    .end local v0    # "role":Ljava/lang/String;
    .end local v2    # "user_id":J
    .end local v4    # "user_id_str":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f03008b

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->setContentView(I)V

    .line 36
    const v0, 0x7f070471

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->setupRefreshButton()V

    .line 38
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupManagementActivity;->group_id:J

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.contacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->contacts:Ljava/util/ArrayList;

    .line 41
    const v0, 0x7f0e00c8

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupManagementActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 43
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    .line 44
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/perm/kate/GroupManagementActivity;->lv_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/perm/kate/GroupManagementActivity;->refreshInThread()V

    .line 49
    return-void
.end method

.method public refreshInThread()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupManagementActivity;->showProgressBar(Z)V

    .line 53
    new-instance v0, Lcom/perm/kate/GroupManagementActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupManagementActivity$1;-><init>(Lcom/perm/kate/GroupManagementActivity;)V

    .line 60
    invoke-virtual {v0}, Lcom/perm/kate/GroupManagementActivity$1;->start()V

    .line 61
    return-void
.end method
