.class public Lcom/perm/kate/ForwardedMessagesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ForwardedMessagesActivity.java"


# instance fields
.field adapter:Lcom/perm/kate/MessageAdapter;

.field list:Landroid/widget/ListView;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation
.end field

.field public showBubbles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->showBubbles:Z

    .line 116
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$3;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ForwardedMessagesActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/ForwardedMessagesActivity;->getMissingUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ForwardedMessagesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ForwardedMessagesActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->redisplayData()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ForwardedMessagesActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/ForwardedMessagesActivity;->createContextMenu(Ljava/lang/String;J)V

    return-void
.end method

.method private createContextMenu(Ljava/lang/String;J)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "mid"    # J

    .prologue
    .line 133
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    const/4 v5, 0x1

    invoke-static {p1, v5}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    .local v3, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 136
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0702bd

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07007e

    const/4 v7, 0x6

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/ForwardedMessagesActivity$4;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/perm/kate/ForwardedMessagesActivity$4;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 152
    .local v4, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 153
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v3    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static deserialize([B)Lcom/perm/kate/api/Message;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 75
    if-nez p0, :cond_0

    move-object v1, v5

    .line 91
    :goto_0
    return-object v1

    .line 78
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 79
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 80
    .local v3, "oin":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 81
    .local v1, "clone":Lcom/perm/kate/api/Message;
    goto :goto_0

    .line 82
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "clone":Lcom/perm/kate/api/Message;
    .end local v3    # "oin":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    move-object v1, v5

    .line 91
    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v4

    .line 88
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private getMissingUsers(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v1, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 104
    .local v0, "att":Lcom/perm/kate/api/Message;
    iget-wide v4, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    .end local v0    # "att":Lcom/perm/kate/api/Message;
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 106
    return-void
.end method

.method private getMissingUsersInThread()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$1;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    .line 71
    invoke-virtual {v0}, Lcom/perm/kate/ForwardedMessagesActivity$1;->start()V

    .line 72
    return-void
.end method

.method private redisplayData()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$2;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/ForwardedMessagesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v2, 0x7f030078

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/perm/kate/ForwardedMessagesActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "messages"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    .line 42
    const v2, 0x7f0e01a2

    invoke-virtual {p0, v2}, Lcom/perm/kate/ForwardedMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    .line 44
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "key_messages_in_bubbles_1"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->showBubbles:Z

    .line 45
    iget-boolean v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->showBubbles:Z

    if-eqz v2, :cond_0

    .line 47
    const v2, 0x7f0e0111

    invoke-virtual {p0, v2}, Lcom/perm/kate/ForwardedMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    iget-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 51
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 52
    .local v0, "me":Lcom/perm/kate/api/User;
    new-instance v2, Lcom/perm/kate/MessageAdapter;

    iget-object v3, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v3, p0, v0, v4}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    .line 53
    iget-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/ForwardedMessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 56
    invoke-direct {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->getMissingUsersInThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "me":Lcom/perm/kate/api/User;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 97
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    .line 99
    :cond_0
    return-void
.end method
