.class public Lcom/perm/kate/AttachmentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AttachmentsActivity.java"


# static fields
.field private static attachmentsListener:Lcom/perm/utils/SimpleListener;


# instance fields
.field private adapter:Lcom/perm/kate/AttachmentsAdapter;

.field attachments:Ljava/util/ArrayList;

.field attachments_objects:Ljava/util/ArrayList;

.field private dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field forward_messages:Ljava/util/ArrayList;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_attachments_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 79
    new-instance v0, Lcom/perm/kate/AttachmentsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsActivity$2;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 141
    new-instance v0, Lcom/perm/kate/AttachmentsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsActivity$3;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method private OnDeleteItem(IZ)V
    .locals 0

    .line 114
    iget-object p2, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    iget-object p2, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 117
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 118
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AttachmentsActivity;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AttachmentsActivity;->OnDeleteItem(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AttachmentsActivity;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsActivity;->displayLocation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AttachmentsActivity;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsActivity;->openPoll(I)V

    return-void
.end method

.method public static attachmentsChanged()V
    .locals 1

    .line 163
    sget-object v0, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    if-eqz v0, :cond_0

    .line 164
    invoke-interface {v0}, Lcom/perm/utils/SimpleListener;->call()V

    :cond_0
    return-void
.end method

.method private displayData()V
    .locals 4

    .line 66
    :try_start_0
    new-instance v0, Lcom/perm/kate/AttachmentsAdapter;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/perm/kate/AttachmentsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    .line 67
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayLocation(I)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 137
    invoke-static {p1}, Lcom/perm/kate/Helper;->parseLocationString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 138
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1, p0}, Lcom/perm/kate/Helper;->openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method private openPoll(I)V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "poll"

    const-string v1, ""

    .line 124
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "_"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 126
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    .line 127
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 128
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 129
    const-class v4, Lcom/perm/kate/PollActivity;

    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "com.perm.kate.poll_id"

    .line 130
    invoke-virtual {p1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.perm.kate.owner_id"

    .line 131
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002a

    .line 29
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f04e8

    .line 30
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.comment_attachments"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.perm.kate.is_message_attachments"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.is_thread_attachments"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz p1, :cond_0

    .line 35
    sget-object p1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    .line 36
    sget-object p1, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    goto :goto_3

    :cond_0
    if-eqz v1, :cond_1

    .line 39
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    .line 40
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 41
    sget-object p1, Lcom/perm/kate/MessageThreadFragment;->forward_messages:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    goto :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 43
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    :goto_0
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 44
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    :goto_1
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 45
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    :goto_3
    const p1, 0x7f090209

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 50
    iget-object p1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    check-cast p1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p1, v0}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsActivity;->displayData()V

    .line 54
    new-instance p1, Lcom/perm/kate/AttachmentsActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/AttachmentsActivity$1;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    sput-object p1, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    sput-object v0, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    .line 170
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
