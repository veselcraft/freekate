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

.field isGrid:Z

.field private is_from_search:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private lv_message_thread:Landroid/widget/GridView;

.field private message_id:J

.field private message_uid:J

.field messages:Ljava/util/ArrayList;

.field page_size:I

.field pauser:Lcom/perm/utils/ScrollPauser;

.field photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectedMessages:Ljava/util/ArrayList;

.field private selected_mode:Z

.field public showBubbles:Z

.field private spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private state:I

.field private thread_list_adapter:Lcom/perm/kate/MessageAdapter;

.field private thread_start:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    const/16 v1, 0x64

    .line 47
    iput v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 49
    new-instance v1, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v1}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->showBubbles:Z

    const-string v1, "photo"

    .line 52
    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    .line 55
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    .line 56
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    .line 60
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    .line 62
    iput v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .line 244
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$4;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 311
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DialogAttachmentsFragment$6;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 412
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$8;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 459
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$9;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v0, p9

    .line 512
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 514
    iget-object v1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f032b

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 517
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f032a

    const/4 v4, 0x5

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 v11, 0x1

    move-object/from16 v9, p7

    .line 519
    invoke-static {v9, v11}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v8

    .line 520
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 521
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0319

    invoke-direct {v1, v2, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_1
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00b2

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0202

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-boolean v1, v10, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez v1, :cond_2

    iget-boolean v1, v10, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez v1, :cond_2

    iget-boolean v1, v10, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez v1, :cond_2

    iget-object v1, v10, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 527
    :cond_2
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00ba

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    :cond_3
    iget-boolean v1, v10, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-eqz v1, :cond_4

    .line 529
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f029f

    const/4 v4, 0x6

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 534
    :cond_5
    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 536
    new-instance v12, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v12, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v13

    new-instance v14, Lcom/perm/kate/DialogAttachmentsFragment$10;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v6, p9

    move/from16 v7, p8

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/DialogAttachmentsFragment$10;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;Ljava/util/ArrayList;JLcom/perm/kate/api/Message;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 568
    invoke-virtual {v0, v11}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 569
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 571
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 572
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->forwardSelectedMessages()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/DialogAttachmentsFragment;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/perm/kate/DialogAttachmentsFragment;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    return p1
.end method

.method static synthetic access$1500(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->scrollToMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/GridView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreDelayed()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/DialogAttachmentsFragment;I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/perm/kate/DialogAttachmentsFragment;->posToType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->selectMessage(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/DialogAttachmentsFragment;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p9}, Lcom/perm/kate/DialogAttachmentsFragment;->CreateContextMenu(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ILcom/perm/kate/api/Message;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/DialogAttachmentsFragment;JZI)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/DialogAttachmentsFragment;->markAsImportant(JZI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->showConfirmDeleteDialog(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->deleteMessage(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/DialogAttachmentsFragment;J)I
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment;->getMessageIndex(J)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->filterMessages()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->filterPhotos()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreIfRequired()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/DialogAttachmentsFragment;)J
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getPeerId()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkForwardMessages()V
    .locals 4

    .line 705
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    .line 708
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0900f6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 709
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901d5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 710
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selected_mode:Z

    const v2, 0x7f0f0202

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private deleteMessage(J)V
    .locals 5

    .line 593
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 594
    iget-wide v2, v1, Lcom/perm/kate/api/Message;->mid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 595
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 603
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment$12;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    .line 611
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private filterMessages()Ljava/util/ArrayList;
    .locals 10

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 187
    iget-object v3, v2, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 188
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Attachment;

    .line 189
    iget-object v5, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const-string v8, "audio"

    if-eqz v5, :cond_3

    .line 191
    iget-object v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_3
    iget-object v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->attachment_type:Ljava/lang/String;

    const-string v9, "voice"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    .line 198
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private filterPhotos()Ljava/util/ArrayList;
    .locals 6

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 210
    iget-object v2, v2, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 211
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Attachment;

    .line 212
    iget-object v4, v3, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    iget-object v3, v3, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private forwardSelectedMessages()V
    .locals 5

    .line 692
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 693
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 694
    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 695
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 696
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.perm.kate.only_members"

    .line 697
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.new_message"

    const/4 v3, 0x1

    .line 698
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.forward_messages"

    .line 699
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 701
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->clearSelectedMessages()V

    return-void
.end method

.method private getMessageIndex()I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 662
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    iget-wide v2, v2, Lcom/perm/kate/api/Message;->mid:J

    iget-wide v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getMessageIndex(J)I
    .locals 4

    const/4 v0, 0x0

    .line 670
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    iget-wide v1, v1, Lcom/perm/kate/api/Message;->mid:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
    .locals 3

    .line 151
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 152
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 153
    iget-wide v1, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private getPeerId()J
    .locals 5

    .line 305
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x77359400

    .line 308
    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private loadMore()V
    .locals 1

    .line 284
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DialogAttachmentsFragment$5;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadMoreDelayed()V
    .locals 4

    .line 384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/DialogAttachmentsFragment$7;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private loadMoreIfRequired()V
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    .line 266
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    .line 267
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 272
    iget-boolean v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    sub-int/2addr v0, v4

    const/4 v4, 0x0

    if-lt v2, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 273
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    move v0, v4

    :cond_5
    if-eqz v0, :cond_6

    .line 275
    iget v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    if-nez v0, :cond_6

    const-string v0, "Kate.DialogAttachmentsF"

    const-string v1, "Loading more"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iput v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->state:I

    .line 278
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMore()V

    .line 279
    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_6
    return-void
.end method

.method private markAsImportant(JZI)V
    .locals 0

    .line 618
    new-instance p4, Lcom/perm/kate/DialogAttachmentsFragment$13;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/perm/kate/DialogAttachmentsFragment$13;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;JZ)V

    .line 650
    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private posToType(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "photo"

    return-object p1

    :pswitch_0
    const-string p1, "voice"

    return-object p1

    :pswitch_1
    const-string p1, "message"

    return-object p1

    :pswitch_2
    const-string p1, "wall"

    return-object p1

    :pswitch_3
    const-string p1, "link"

    return-object p1

    :pswitch_4
    const-string p1, "doc"

    return-object p1

    :pswitch_5
    const-string p1, "audio"

    return-object p1

    :pswitch_6
    const-string p1, "video"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DialogAttachmentsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/DialogAttachmentsFragment$3;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private scrollToMessage()V
    .locals 2

    .line 654
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->getMessageIndex()I

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private selectMessage(J)V
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 683
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->checkForwardMessages()V

    return-void
.end method

.method private showConfirmDeleteDialog(J)V
    .locals 3

    .line 577
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 578
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/DialogAttachmentsFragment$11;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/DialogAttachmentsFragment$11;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V

    const p1, 0x7f0f05a7

    .line 579
    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v1, 0x0

    .line 584
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 585
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 586
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 587
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public clearSelectedMessages()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 688
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->checkForwardMessages()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 147
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 133
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.chat_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    .line 135
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.message_uid"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_uid:J

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "message_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "thread_start"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "date"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    .line 139
    iget-wide v4, p0, Lcom/perm/kate/DialogAttachmentsFragment;->message_id:J

    cmp-long p1, v4, v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "important"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    .line 141
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0061

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090216

    .line 72
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    .line 73
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "key_messages_in_bubbles_2"

    const/4 v1, 0x1

    invoke-interface {p2, p3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->showBubbles:Z

    if-eqz p2, :cond_0

    const p2, 0x7f0902ac

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->getBgByTheme()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 80
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 81
    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    const p2, 0x7f090047

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    .line 86
    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez p3, :cond_2

    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 87
    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->spinnerChange:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 88
    :cond_2
    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    const/16 p3, 0x8

    .line 89
    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 90
    :cond_4
    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-eqz p2, :cond_5

    const/16 p2, 0x1e

    .line 91
    iput p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 92
    :cond_5
    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-eqz p2, :cond_6

    const/16 p2, 0x32

    .line 93
    iput p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 94
    :cond_6
    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-eqz p2, :cond_7

    const/16 p2, 0xc8

    .line 95
    iput p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->page_size:I

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->showMessages()V

    .line 100
    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->is_from_search:Z

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_start:Z

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->date:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 101
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->requeryOnUiThread()V

    .line 104
    :cond_8
    invoke-direct {p0}, Lcom/perm/kate/DialogAttachmentsFragment;->loadMoreIfRequired()V

    const p2, 0x7f09007b

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/DialogAttachmentsFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/DialogAttachmentsFragment$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09007a

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/DialogAttachmentsFragment$2;

    invoke-direct {p3, p0}, Lcom/perm/kate/DialogAttachmentsFragment$2;-><init>(Lcom/perm/kate/DialogAttachmentsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 121
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 122
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_9

    .line 124
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    :cond_9
    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/perm/kate/MessageAdapter;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 401
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    if-eqz v1, :cond_1

    .line 402
    invoke-virtual {v1}, Lcom/perm/kate/PhotoListAdapter;->Destroy()V

    .line 403
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 404
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    .line 406
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 407
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method protected showMessages()V
    .locals 11

    const/4 v0, 0x1

    .line 223
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 226
    new-instance v2, Lcom/perm/kate/MessageAdapter;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BaseActivity;

    iget-wide v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->chat_id:J

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    cmp-long v10, v5, v7

    if-gtz v10, :cond_1

    iget-boolean v5, p0, Lcom/perm/kate/DialogAttachmentsFragment;->important:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x1

    :goto_1
    invoke-direct {v2, v3, v4, v1, v5}, Lcom/perm/kate/MessageAdapter;-><init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;Lcom/perm/kate/api/User;Z)V

    iput-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    .line 227
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->selectedMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/perm/kate/MessageAdapter;->setSelectedMessages(Ljava/util/ArrayList;)V

    .line 229
    new-instance v1, Lcom/perm/kate/PhotoListAdapter;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/perm/kate/PhotoListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;ILandroid/widget/Button;)V

    iput-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    .line 230
    iget-boolean v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    if-nez v2, :cond_2

    .line 231
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->thread_list_adapter:Lcom/perm/kate/MessageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 232
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_2

    .line 234
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 235
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment;->lv_message_thread:Landroid/widget/GridView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 238
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 239
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method
