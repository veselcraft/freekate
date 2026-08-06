.class public Lcom/perm/kate/AttachmentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AttachmentsActivity.java"


# static fields
.field private static attachmentsListener:Lcom/perm/utils/SimpleListener;


# instance fields
.field private adapter:Lcom/perm/kate/AttachmentsAdapter;

.field attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field attachments_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private comment_attachments:Z

.field private dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field forward_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private is_message_attachments:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_attachments_list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsActivity;->is_message_attachments:Z

    .line 22
    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsActivity;->comment_attachments:Z

    .line 79
    new-instance v0, Lcom/perm/kate/AttachmentsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsActivity$2;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 123
    new-instance v0, Lcom/perm/kate/AttachmentsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsActivity$3;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method private OnDeleteItem(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "is_forward_messages"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsAdapter;->notifyDataSetChanged()V

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AttachmentsActivity;)Lcom/perm/kate/AttachmentsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AttachmentsActivity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AttachmentsActivity;->OnDeleteItem(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AttachmentsActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsActivity;->displayLocation(I)V

    return-void
.end method

.method public static attachmentsChanged()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    invoke-interface {v0}, Lcom/perm/utils/SimpleListener;->call()V

    .line 147
    :cond_0
    return-void
.end method

.method private displayData()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    new-instance v1, Lcom/perm/kate/AttachmentsAdapter;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/perm/kate/AttachmentsAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    .line 68
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->adapter:Lcom/perm/kate/AttachmentsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayLocation(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 118
    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "attachment":Ljava/lang/String;
    invoke-static {v0}, Lcom/perm/kate/Helper;->parseLocationString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "location":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v2, v3, p0}, Lcom/perm/kate/Helper;->openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/perm/kate/AttachmentsActivity;->setContentView(I)V

    .line 31
    const v1, 0x7f070458

    invoke-virtual {p0, v1}, Lcom/perm/kate/AttachmentsActivity;->setHeaderTitle(I)V

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.comment_attachments"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->comment_attachments:Z

    .line 33
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.is_message_attachments"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->is_message_attachments:Z

    .line 34
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.is_thread_attachments"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 35
    .local v0, "is_thread_attachments":Z
    iget-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->comment_attachments:Z

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    .line 37
    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    .line 49
    :goto_0
    const v1, 0x7f0e008c

    invoke-virtual {p0, v1}, Lcom/perm/kate/AttachmentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    .line 50
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    iget-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->lv_attachments_list:Landroid/widget/ListView;

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsActivity;->displayData()V

    .line 55
    new-instance v1, Lcom/perm/kate/AttachmentsActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/AttachmentsActivity$1;-><init>(Lcom/perm/kate/AttachmentsActivity;)V

    sput-object v1, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    .line 62
    return-void

    .line 39
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    .line 41
    sget-object v1, Lcom/perm/kate/MessageThreadFragment;->attachments_objects:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->is_message_attachments:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    :goto_1
    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments:Ljava/util/ArrayList;

    .line 45
    iget-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->is_message_attachments:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    :goto_2
    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 46
    iget-boolean v1, p0, Lcom/perm/kate/AttachmentsActivity;->is_message_attachments:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    :goto_3
    iput-object v1, p0, Lcom/perm/kate/AttachmentsActivity;->forward_messages:Ljava/util/ArrayList;

    goto :goto_0

    .line 44
    :cond_2
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    goto :goto_1

    .line 45
    :cond_3
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    goto :goto_2

    .line 46
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/AttachmentsActivity;->attachmentsListener:Lcom/perm/utils/SimpleListener;

    .line 152
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 153
    return-void
.end method
