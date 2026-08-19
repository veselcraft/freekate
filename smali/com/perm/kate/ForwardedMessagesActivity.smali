.class public Lcom/perm/kate/ForwardedMessagesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ForwardedMessagesActivity.java"


# instance fields
.field adapter:Lcom/perm/kate/MessageAdapter;

.field list:Landroid/widget/ListView;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field messages:Ljava/util/ArrayList;

.field public showBubbles:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->showBubbles:Z

    .line 115
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$3;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/perm/kate/ForwardedMessagesActivity;->getMissingUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ForwardedMessagesActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->redisplayData()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/lang/String;JLcom/perm/kate/api/Message;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/ForwardedMessagesActivity;->createContextMenu(Ljava/lang/String;JLcom/perm/kate/api/Message;)V

    return-void
.end method

.method private createContextMenu(Ljava/lang/String;JLcom/perm/kate/api/Message;)V
    .locals 8

    .line 133
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x1

    .line 134
    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 136
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f0319

    const/4 v1, 0x5

    invoke-direct {p3, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    new-instance p3, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f00b2

    const/4 v1, 0x6

    invoke-direct {p3, v0, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p3, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {v2}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/ForwardedMessagesActivity$4;

    move-object v0, v7

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ForwardedMessagesActivity$4;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/Message;)V

    invoke-virtual {p3, v6, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 153
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 154
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 156
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/perm/kate/api/Message;
    .locals 1

    .line 78
    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 79
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/api/Message;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMissingUsers(Ljava/util/ArrayList;)V
    .locals 3

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 103
    iget-wide v1, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private getMissingUsersInThread()V
    .locals 1

    .line 66
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$1;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private redisplayData()V
    .locals 1

    .line 108
    new-instance v0, Lcom/perm/kate/ForwardedMessagesActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ForwardedMessagesActivity$2;-><init>(Lcom/perm/kate/ForwardedMessagesActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 36
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0084

    .line 38
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0231

    .line 39
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "messages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    const p1, 0x7f090220

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    .line 46
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "key_messages_in_bubbles_2"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->showBubbles:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0902ac

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 53
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/perm/kate/MessageAdapter;

    iget-object v2, p0, Lcom/perm/kate/ForwardedMessagesActivity;->messages:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p0, p1, v1}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    .line 55
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    iget-object p1, p0, Lcom/perm/kate/ForwardedMessagesActivity;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 58
    invoke-direct {p0}, Lcom/perm/kate/ForwardedMessagesActivity;->getMissingUsersInThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 95
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/ForwardedMessagesActivity;->adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    :cond_0
    return-void
.end method
