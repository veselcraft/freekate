.class public Lcom/perm/kate/GroupsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "GroupsFragment.java"


# instance fields
.field private btn_clear:Landroid/widget/ImageButton;

.field private btn_delete:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field private current_filter:Ljava/lang/CharSequence;

.field cursor:Landroid/database/Cursor;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private group_list:Landroid/widget/ListView;

.field private isMe:Z

.field private joinKateGroupClick:Landroid/content/DialogInterface$OnClickListener;

.field private join_callback:Lcom/perm/kate/session/Callback;

.field private ll_delete_region:Landroid/widget/LinearLayout;

.field private notes:Lcom/perm/kate/GroupsAdapter;

.field offset:I

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field page_size:I

.field private repost_post_id:J

.field private repost_post_owner_id:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private select_group:Z

.field private select_group_all:Z

.field private selectedGroups:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private selected_mode_for_delete:Z

.field private show_my_groups:Z

.field private state:I

.field private type:Ljava/lang/Integer;

.field private user_id:Ljava/lang/Long;

.field private wall_object:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    .line 45
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    .line 46
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 50
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    .line 52
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    .line 53
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    .line 54
    iput-wide v4, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    .line 55
    iput-wide v4, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    .line 57
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    .line 59
    iput v2, p0, Lcom/perm/kate/GroupsFragment;->state:I

    .line 67
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    .line 130
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/perm/kate/GroupsFragment;->page_size:I

    .line 143
    new-instance v0, Lcom/perm/kate/GroupsFragment$5;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GroupsFragment$5;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 213
    new-instance v0, Lcom/perm/kate/GroupsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$8;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 284
    new-instance v0, Lcom/perm/kate/GroupsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$10;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->joinKateGroupClick:Landroid/content/DialogInterface$OnClickListener;

    .line 301
    new-instance v0, Lcom/perm/kate/GroupsFragment$12;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GroupsFragment$12;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    .line 320
    new-instance v0, Lcom/perm/kate/GroupsFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$13;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 339
    new-instance v0, Lcom/perm/kate/GroupsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$14;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 495
    new-instance v0, Lcom/perm/kate/GroupsFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$17;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 525
    iput v2, p0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 536
    new-instance v0, Lcom/perm/kate/GroupsFragment$19;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GroupsFragment$19;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->clearSelectedGroups()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/GroupsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/GroupsFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/GroupsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/GroupsFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupsFragment;->selectGroupForDelete(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->deleteSelectedGroups()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->showInviteDialogMaybe(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->joinKateGroup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/GroupsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/GroupsFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/GroupsFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/GroupsFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->changeSource(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/GroupsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/perm/kate/GroupsFragment;->state:I

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->showInviteDialogMaybeInUiThread(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->loadMoreIfReqired()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$902(Lcom/perm/kate/GroupsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupsFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method private changeSource(I)V
    .locals 3
    .param p1, "which"    # I

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "_type":Ljava/lang/Integer;
    const/4 v0, 0x0

    .line 440
    .local v0, "_show_my_groups":Z
    packed-switch p1, :pswitch_data_0

    .line 448
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    if-eq v2, v0, :cond_1

    .line 449
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    .line 450
    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    .line 451
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->reFetchData()V

    .line 453
    :cond_1
    return-void

    .line 442
    :pswitch_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    goto :goto_0

    .line 445
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkDeleteGroups()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 571
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    .line 574
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0701c5

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 573
    goto :goto_1

    .line 574
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 575
    :cond_4
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method private clearSelectedGroups()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 580
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->checkDeleteGroups()V

    .line 581
    return-void
.end method

.method private deleteSelectedGroups()V
    .locals 2

    .prologue
    .line 585
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 586
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->clearSelectedGroups()V

    .line 587
    new-instance v1, Lcom/perm/kate/GroupsFragment$20;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupsFragment$20;-><init>(Lcom/perm/kate/GroupsFragment;Ljava/util/ArrayList;)V

    .line 600
    invoke-virtual {v1}, Lcom/perm/kate/GroupsFragment$20;->start()V

    .line 601
    return-void
.end method

.method private displayData()V
    .locals 9

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    const-string v5, ""

    iget-boolean v6, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    iget-boolean v7, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 194
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 195
    new-instance v1, Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/GroupsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashSet;)V

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    .line 196
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    new-instance v2, Lcom/perm/kate/GroupsFragment$7;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$7;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/GroupsAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 205
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 208
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getFilterItemsArrayId()I
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0013

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0012

    goto :goto_0
.end method

.method private joinKateGroup()V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    .line 293
    new-instance v0, Lcom/perm/kate/GroupsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$11;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 298
    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment$11;->start()V

    .line 299
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 528
    new-instance v0, Lcom/perm/kate/GroupsFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$18;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 533
    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment$18;->start()V

    .line 534
    return-void
.end method

.method private loadMoreIfReqired()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 510
    iget-object v5, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    if-nez v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v5, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 513
    .local v2, "totalCount":I
    iget-object v5, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 514
    .local v0, "firstVisible":I
    iget-object v5, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v5

    iget-object v6, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v3, v5, 0x1

    .line 516
    .local v3, "visibleCount":I
    add-int v5, v0, v3

    add-int/lit8 v6, v2, -0x2

    if-lt v5, v6, :cond_2

    move v1, v4

    .line 517
    .local v1, "loadMore":Z
    :goto_1
    if-eqz v1, :cond_0

    iget v5, p0, Lcom/perm/kate/GroupsFragment;->state:I

    if-nez v5, :cond_0

    .line 518
    const-string v5, "Kate.GroupsFragment"

    const-string v6, "Loading more"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput v4, p0, Lcom/perm/kate/GroupsFragment;->state:I

    .line 520
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->loadMore()V

    .line 521
    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupsFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 516
    .end local v1    # "loadMore":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private reFetchData()V
    .locals 9

    .prologue
    .line 456
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 458
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 460
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    const-string v5, ""

    iget-boolean v6, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    iget-boolean v7, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZ)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 461
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 462
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/GroupsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 464
    :cond_1
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupsFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupsFragment$6;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private selectGroupForDelete(J)V
    .locals 3
    .param p1, "group_id"    # J

    .prologue
    .line 560
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/GroupsAdapter;->notifyDataSetChanged()V

    .line 567
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->checkDeleteGroups()V

    .line 568
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 564
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setupFilterSpinner()V
    .locals 6

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    sget-boolean v4, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v4, :cond_0

    .line 480
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->getFilterItemsArrayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "array":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 483
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 484
    :cond_2
    new-instance v1, Lcom/perm/kate/GroupsFragment$16;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupsFragment$16;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 492
    .local v1, "filterListener":Landroid/widget/AdapterView$OnItemSelectedListener;
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/BaseActivity;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v1, v5}, Lcom/perm/kate/BaseActivity;->setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    goto :goto_0
.end method

.method private showFilterDialog()V
    .locals 3

    .prologue
    .line 427
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f0702d8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 429
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->getFilterItemsArrayId()I

    move-result v1

    new-instance v2, Lcom/perm/kate/GroupsFragment$15;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$15;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 435
    return-void
.end method

.method private showInviteDialog()V
    .locals 3

    .prologue
    .line 274
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020130

    .line 275
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700f3

    .line 276
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07010c

    .line 277
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0701bf

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->joinKateGroupClick:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070319

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 282
    return-void
.end method

.method private showInviteDialogMaybe(Z)V
    .locals 8
    .param p1, "user_in_kate_group"    # Z

    .prologue
    .line 256
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "me_id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v1, 0x1

    .line 260
    .local v1, "my_groups":Z
    :goto_0
    if-eqz p1, :cond_0

    .line 261
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->setShown(Ljava/lang/String;)V

    .line 263
    :cond_0
    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->getShown(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/perm/utils/GroupInvite;->randomRatio()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->setShown(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showInviteDialog()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "me_id":Ljava/lang/String;
    .end local v1    # "my_groups":Z
    :cond_1
    :goto_1
    return-void

    .line 257
    .restart local v0    # "me_id":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 267
    .end local v0    # "me_id":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 269
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private showInviteDialogMaybeInUiThread(Z)V
    .locals 2
    .param p1, "user_in_kate_group"    # Z

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupsFragment$9;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GroupsFragment$9;-><init>(Lcom/perm/kate/GroupsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showInvitesActivity()V
    .locals 3

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsInvitesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 419
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method private showNewGroupActivity()V
    .locals 3

    .prologue
    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 472
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->startActivity(Landroid/content/Intent;)V

    .line 473
    return-void
.end method

.method private toSortByDate()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 392
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_0

    .line 393
    const/16 v0, 0x47

    const/16 v1, 0x1b5d

    const v2, 0x7f0702d8

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    if-eqz v0, :cond_1

    .line 395
    const/16 v0, 0x48

    const/16 v1, 0x1b5f

    const v2, 0x7f07017f

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 396
    :cond_1
    const/4 v0, 0x2

    const/16 v1, 0x3e9

    const v2, 0x7f07046e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 397
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 125
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 126
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 127
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 128
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    .line 110
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 111
    .local v0, "me_id":J
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    .line 112
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "com.perm.kate.select_group"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    .line 113
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "select_group_all"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    .line 114
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "repost_post_id"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    .line 115
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "repost_post_owner_id"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    .line 116
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "com.perm.kate.wall_object"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    .line 118
    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    .line 120
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 111
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->setupFilterSpinner()V

    .line 74
    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->filterText:Landroid/widget/EditText;

    .line 75
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->filterText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 77
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v2, Lcom/perm/kate/GroupsFragment$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$1;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v1, 0x7f0e01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    .line 84
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 87
    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    .line 88
    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/GroupsFragment$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$2;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    .line 95
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    new-instance v2, Lcom/perm/kate/GroupsFragment$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$3;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->setButtonsBg(Landroid/view/View;)V

    .line 102
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->displayData()V

    .line 103
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 238
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    .line 239
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 240
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 241
    return-void
.end method

.method onGroupSearch()V
    .locals 3

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupsFragment;->startActivity(Landroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 413
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 404
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showFilterDialog()V

    goto :goto_0

    .line 407
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showNewGroupActivity()V

    goto :goto_0

    .line 410
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showInvitesActivity()V

    goto :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x47 -> :sswitch_0
        0x48 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    .line 385
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/GroupsFragment;->state:I

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 134
    new-instance v0, Lcom/perm/kate/GroupsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$4;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 140
    invoke-virtual {v0}, Lcom/perm/kate/GroupsFragment$4;->start()V

    .line 141
    return-void
.end method
