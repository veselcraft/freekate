.class public Lcom/perm/kate/DialogAttachmentsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "DialogAttachmentsFragment.java"


# instance fields
.field account_id:J

.field attachment_type:Ljava/lang/String;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field private chat_id:J

.field private date:Ljava/lang/String;

.field private important:Z

.field private is_from_search:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_message_thread:Landroid/widget/ListView;

.field private message_id:J

.field private message_uid:J

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

.field page_size:I

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private read:Z

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private selected_mode:Z

.field public showBubbles:Z

.field private spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private state:I

.field private thread_list_adapter:Lcom/perm/kate/MessageAdapter;

.field private thread_start:Z

.field user:Lcom/perm/kate/api/User;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 44
    iput-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    .line 46
    const/16 v0, 0x64

    iput v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->user:Lcom/perm/kate/api/User;

    .line 48
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 49
    iput-boolean v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->read:Z

    .line 50
    iput-boolean v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->showBubbles:Z

    .line 51
    const-string v0, "photo"

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    .line 54
    iput-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    .line 55
    iput-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 59
    iput-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    .line 61
    iput v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$4;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 272
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$6;

    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DialogAttachmentsFragment$6;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 361
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$8;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 390
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$9;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 16
    .param p1, "message_uid"    # J
    .param p3, "user_name"    # Ljava/lang/String;
    .param p4, "mid"    # Ljava/lang/String;
    .param p5, "read_state"    # Ljava/lang/Boolean;
    .param p6, "is_out"    # Ljava/lang/Boolean;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "position"    # I
    .param p9, "message"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 419
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v5, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    if-eqz p9, :cond_4

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    move-object/from16 v0, p9

    iget-object v3, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 422
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0702cf

    const/4 v8, 0x0

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p7

    invoke-static {v0, v3}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 427
    .local v10, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 428
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0702bd

    const/4 v8, 0x1

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    :cond_0
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 430
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07007e

    const/4 v8, 0x2

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701a6

    const/4 v8, 0x3

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 434
    :cond_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070084

    const/4 v8, 0x4

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 472
    .end local v5    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v10    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 424
    .restart local v5    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    :cond_4
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0702ce

    const/4 v8, 0x5

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v5    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    :catch_0
    move-exception v12

    .line 469
    .local v12, "ex":Ljava/lang/Throwable;
    invoke-static {v12}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 470
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 439
    .end local v12    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v10    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 441
    .local v6, "long_mid":J
    new-instance v14, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    invoke-static {v5}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v15

    new-instance v3, Lcom/perm/kate/DialogAttachmentsFragment$10;

    move-object/from16 v4, p0

    move-object/from16 v8, p9

    move/from16 v9, p8

    move-object/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/perm/kate/DialogAttachmentsFragment$10;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;Ljava/util/ArrayList;JLcom/perm/kate/api/Message;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v14, v15, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v13

    .line 465
    .local v13, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v13}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 466
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 467
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->forwardSelectedMessages()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/perm/kate/DialogAttachmentsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    return p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->scrollToMessage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreIfRequiredOnUiThread()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/DialogAttachmentsFragment;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/perm/kate/DialogAttachmentsFragment;->posToType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->selectMessage(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/DialogAttachmentsFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/Boolean;
    .param p6, "x5"    # Ljava/lang/Boolean;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # I
    .param p9, "x8"    # Lcom/perm/kate/api/Message;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p9}, Lcom/perm/kate/DialogAttachmentsFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/DialogAttachmentsFragment;JZI)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z
    .param p4, "x3"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/DialogAttachmentsFragment;->markAsImportant(JZI)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->showConfirmDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->deleteMessage(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/DialogAttachmentsFragment;J)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->getMessageIndex(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->filterMessages()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreIfRequired()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getPeerId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    return v0
.end method

.method private checkForwardMessages()V
    .locals 5

    .prologue
    const v4, 0x7f0701a6

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 603
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    .line 606
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0e0114

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 607
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0e0115

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 608
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Lcom/perm/kate/DialogAttachmentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 605
    goto :goto_1

    :cond_2
    move v0, v2

    .line 606
    goto :goto_2

    :cond_3
    move v1, v2

    .line 607
    goto :goto_3

    .line 608
    :cond_4
    invoke-virtual {p0, v4}, Lcom/perm/kate/DialogAttachmentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4
.end method

.method private deleteMessage(J)V
    .locals 5
    .param p1, "long_mid"    # J

    .prologue
    .line 491
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 492
    .local v0, "m":Lcom/perm/kate/api/Message;
    iget-wide v2, v0, Lcom/perm/kate/api/Message;->mid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 493
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 498
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 501
    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment$12;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    .line 509
    invoke-virtual {v1}, Lcom/perm/kate/DialogAttachmentsFragment$12;->start()V

    .line 512
    return-void
.end method

.method private filterMessages()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v2, "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 179
    .local v1, "m":Lcom/perm/kate/api/Message;
    iget-object v4, v1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 180
    iget-object v4, v1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 181
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v5, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    .end local v1    # "m":Lcom/perm/kate/api/Message;
    :cond_2
    return-object v2
.end method

.method private forwardSelectedMessages()V
    .locals 6

    .prologue
    .line 590
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [J

    .line 591
    .local v0, "forward_messages_array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 592
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 594
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 595
    const-string v3, "com.perm.kate.only_members"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 596
    const-string v3, "com.perm.kate.new_message"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const-string v3, "com.perm.kate.forward_messages"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 599
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->clearSelectedMessages()V

    .line 600
    return-void
.end method

.method private getMessageIndex()I
    .locals 6

    .prologue
    .line 559
    const/4 v1, 0x0

    .line 560
    .local v1, "sel":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    iget-wide v2, v2, Lcom/perm/kate/api/Message;->mid:J

    iget-wide v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 562
    move v1, v0

    .line 560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_1
    return v1
.end method

.method private getMessageIndex(J)I
    .locals 5
    .param p1, "mid"    # J

    .prologue
    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    iget-wide v2, v1, Lcom/perm/kate/api/Message;->mid:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 571
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 568
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
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
    .line 148
    .local p0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v1, "users_in_response":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 150
    .local v0, "message":Lcom/perm/kate/api/Message;
    iget-wide v4, v0, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    .end local v0    # "message":Lcom/perm/kate/api/Message;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 152
    return-void
.end method

.method private getPeerId()J
    .locals 4

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 267
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    .line 269
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x77359400

    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$5;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 261
    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment$5;->start()V

    .line 262
    return-void
.end method

.method private loadMoreIfRequired()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    iget-boolean v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 227
    .local v2, "totalCount":I
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 228
    .local v0, "firstVisible":I
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    iget-object v7, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, 0x1

    .line 233
    .local v3, "visibleCount":I
    add-int v6, v0, v3

    add-int/lit8 v7, v2, -0x2

    if-lt v6, v7, :cond_3

    move v1, v4

    .line 234
    .local v1, "loadMore":Z
    :goto_1
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 235
    if-nez v0, :cond_4

    move v1, v4

    .line 236
    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    if-nez v5, :cond_0

    .line 237
    const-string v5, "Kate.DialogAttachmentsFragment"

    const-string v6, "Loading more"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    .line 239
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMore()V

    .line 240
    invoke-virtual {p0, v4}, Lcom/perm/kate/DialogAttachmentsFragment;->showProgressBar(Z)V

    goto :goto_0

    .end local v1    # "loadMore":Z
    :cond_3
    move v1, v5

    .line 233
    goto :goto_1

    .restart local v1    # "loadMore":Z
    :cond_4
    move v1, v5

    .line 235
    goto :goto_2
.end method

.method private loadMoreIfRequiredOnUiThread()V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/DialogAttachmentsFragment$7;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private markAsImportant(JZI)V
    .locals 1
    .param p1, "long_mid"    # J
    .param p3, "is_important"    # Z
    .param p4, "position"    # I

    .prologue
    .line 516
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/DialogAttachmentsFragment$13;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;JZ)V

    .line 548
    invoke-virtual {v0}, Lcom/perm/kate/DialogAttachmentsFragment$13;->start()V

    .line 549
    return-void
.end method

.method private posToType(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 375
    packed-switch p1, :pswitch_data_0

    .line 387
    const-string v0, "photo"

    :goto_0
    return-object v0

    .line 377
    :pswitch_0
    const-string v0, "photo"

    goto :goto_0

    .line 379
    :pswitch_1
    const-string v0, "video"

    goto :goto_0

    .line 381
    :pswitch_2
    const-string v0, "audio"

    goto :goto_0

    .line 383
    :pswitch_3
    const-string v0, "doc"

    goto :goto_0

    .line 385
    :pswitch_4
    const-string v0, "link"

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/DialogAttachmentsFragment$3;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private scrollToMessage()V
    .locals 2

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getMessageIndex()I

    move-result v0

    .line 553
    .local v0, "sel":I
    if-eqz v0, :cond_0

    .line 554
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 555
    :cond_0
    return-void
.end method

.method private selectMessage(J)V
    .locals 3
    .param p1, "mid"    # J

    .prologue
    .line 575
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 580
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V

    .line 581
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->checkForwardMessages()V

    .line 582
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showConfirmDeleteDialog(J)V
    .locals 5
    .param p1, "mid"    # J

    .prologue
    .line 475
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 476
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070170

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/DialogAttachmentsFragment$11;

    invoke-direct {v4, p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment$11;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    .line 477
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 482
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 484
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 485
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 486
    return-void
.end method


# virtual methods
.method public clearSelectedMessages()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 586
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->checkForwardMessages()V

    .line 587
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 144
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.perm.kate.chat_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    .line 132
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.perm.kate.message_uid"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    .line 133
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "message_id"

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    .line 134
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "thread_start"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    .line 135
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "date"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    .line 136
    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    .line 137
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "important"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    .line 138
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    .line 139
    return-void

    :cond_0
    move v0, v1

    .line 136
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 69
    const v3, 0x7f030058

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 71
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e0113

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 72
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "key_messages_in_bubbles_1"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->showBubbles:Z

    .line 73
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->showBubbles:Z

    if-eqz v3, :cond_0

    .line 74
    const v3, 0x7f0e0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 77
    :cond_0
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v3, :cond_1

    .line 78
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->user:Lcom/perm/kate/api/User;

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 80
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    const v3, 0x7f0e0112

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 83
    .local v0, "spinner":Landroid/widget/Spinner;
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 85
    :cond_2
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 86
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 87
    :cond_4
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-eqz v3, :cond_5

    .line 88
    const/16 v3, 0x1e

    iput v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 89
    :cond_5
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-eqz v3, :cond_6

    .line 90
    const/16 v3, 0x32

    iput v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 91
    :cond_6
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-eqz v3, :cond_7

    .line 92
    const/16 v3, 0xc8

    iput v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 94
    :cond_7
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->showMessages()V

    .line 97
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->requeryOnUiThread()V

    .line 101
    :cond_8
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreIfRequired()V

    .line 103
    const v3, 0x7f0e0116

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/DialogAttachmentsFragment$1;

    invoke-direct {v4, p0}, Lcom/perm/kate/DialogAttachmentsFragment$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v3, 0x7f0e0117

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/DialogAttachmentsFragment$2;

    invoke-direct {v4, p0}, Lcom/perm/kate/DialogAttachmentsFragment$2;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/perm/kate/DialogAttachmentsFragment;->setButtonsBg(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "spinner":Landroid/widget/Spinner;
    :cond_9
    :goto_0
    return-object v2

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 120
    instance-of v3, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_9

    .line 121
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    .line 354
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 355
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 356
    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    .line 357
    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 358
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 359
    return-void
.end method

.method protected showMessages()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    .line 195
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 198
    .local v1, "me":Lcom/perm/kate/api/User;
    new-instance v5, Lcom/perm/kate/MessageAdapter;

    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/BaseActivity;

    iget-wide v8, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-gtz v3, :cond_0

    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    invoke-direct {v5, v6, v2, v1, v3}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 199
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/MessageAdapter;->setSelectedMessages(Ljava/util/ArrayList;)V

    .line 200
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v1    # "me":Lcom/perm/kate/api/User;
    :goto_1
    return-void

    .line 198
    .restart local v1    # "me":Lcom/perm/kate/api/User;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 201
    .end local v1    # "me":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 203
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
