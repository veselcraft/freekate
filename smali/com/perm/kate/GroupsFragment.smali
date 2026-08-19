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

.field private selected_mode_for_delete:Z

.field private show_my_groups:Z

.field private state:I

.field private type:Ljava/lang/Integer;

.field private user_id:Ljava/lang/Long;

.field private wall_object:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-DpTe1-tICWIr7n2mBGLmSEYCcg(Lcom/perm/kate/GroupsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OgZWE0indRsf6jZuyddjcVv2lpE(Lcom/perm/kate/GroupsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TLIeQGr-JUuSx6jyiyL975cijSA(Lcom/perm/kate/GroupsFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    .line 46
    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 47
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    const-string v2, ""

    .line 50
    iput-object v2, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 51
    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    .line 54
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    .line 56
    iput-wide v2, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    .line 58
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    .line 60
    iput v1, p0, Lcom/perm/kate/GroupsFragment;->state:I

    .line 68
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    const/16 v0, 0x3e8

    .line 116
    iput v0, p0, Lcom/perm/kate/GroupsFragment;->page_size:I

    .line 131
    new-instance v0, Lcom/perm/kate/GroupsFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/GroupsFragment$2;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 205
    new-instance v0, Lcom/perm/kate/GroupsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$5;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 276
    new-instance v0, Lcom/perm/kate/GroupsFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$7;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->joinKateGroupClick:Landroid/content/DialogInterface$OnClickListener;

    .line 293
    new-instance v0, Lcom/perm/kate/GroupsFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/GroupsFragment$9;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    .line 312
    new-instance v0, Lcom/perm/kate/GroupsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$10;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 331
    new-instance v0, Lcom/perm/kate/GroupsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$11;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 486
    new-instance v0, Lcom/perm/kate/GroupsFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$14;-><init>(Lcom/perm/kate/GroupsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 516
    iput v1, p0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 529
    new-instance v0, Lcom/perm/kate/GroupsFragment$16;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/GroupsFragment$16;-><init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Long;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupsFragment;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupsFragment;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/GroupsFragment;)Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/GroupsFragment;J)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/GroupsFragment;->selectGroupForDelete(J)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->showInviteDialogMaybe(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->joinKateGroup()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/GroupsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/perm/kate/GroupsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/perm/kate/GroupsFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/perm/kate/GroupsFragment;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->changeSource(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/perm/kate/GroupsFragment;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/perm/kate/GroupsFragment;->state:I

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupsFragment;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupsFragment;->showInviteDialogMaybeInUiThread(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->loadMoreIfReqired()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupsFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupsFragment;)Ljava/lang/Integer;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/GroupsFragment;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    return p0
.end method

.method private changeSource(I)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_1

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    .line 434
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 440
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    if-ne p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    if-eq p1, v1, :cond_3

    .line 441
    :cond_2
    iput-object v2, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    .line 442
    iput-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    .line 443
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->reFetchData()V

    :cond_3
    return-void
.end method

.method private checkDeleteGroups()V
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_3

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    .line 567
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/perm/kate/GroupsFragment;->selected_mode_for_delete:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f0221

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v1, 0x7f0f00ba

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private clearSelectedGroups()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 573
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->checkDeleteGroups()V

    return-void
.end method

.method private deleteSelectedGroups()V
    .locals 2

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 579
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->clearSelectedGroups()V

    .line 580
    new-instance v1, Lcom/perm/kate/GroupsFragment$17;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupsFragment$17;-><init>(Lcom/perm/kate/GroupsFragment;Ljava/util/ArrayList;)V

    .line 593
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 11

    .line 183
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 184
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    const-string v6, ""

    iget-boolean v7, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    iget-boolean v8, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result v9

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZLjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "gf_fetchUserGroups"

    .line 185
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 186
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 187
    new-instance v0, Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/GroupsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    .line 188
    new-instance v1, Lcom/perm/kate/GroupsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupsFragment$4;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 197
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 199
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 200
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getFilterItemsArrayId()I
    .locals 1

    .line 415
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    if-eqz v0, :cond_0

    const v0, 0x7f030014

    goto :goto_0

    :cond_0
    const v0, 0x7f030013

    :goto_0
    return v0
.end method

.method private joinKateGroup()V
    .locals 1

    const/4 v0, 0x1

    .line 284
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 285
    new-instance v0, Lcom/perm/kate/GroupsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$8;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment;->filterText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->clearSelectedGroups()V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->deleteSelectedGroups()V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 519
    new-instance v0, Lcom/perm/kate/GroupsFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$15;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 526
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private loadMoreIfReqired()V
    .locals 4

    .line 501
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 504
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 505
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x2

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 508
    iget v0, p0, Lcom/perm/kate/GroupsFragment;->state:I

    if-nez v0, :cond_2

    const-string v0, "Kate.GroupsFragment"

    const-string v1, "Loading more"

    .line 509
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iput v3, p0, Lcom/perm/kate/GroupsFragment;->state:I

    .line 511
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->loadMore()V

    .line 512
    invoke-virtual {p0, v3}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method private reFetchData()V
    .locals 10

    .line 448
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 450
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    iget-boolean v6, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    iget-boolean v7, p0, Lcom/perm/kate/GroupsFragment;->show_my_groups:Z

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->toSortByDate()Z

    move-result v8

    const/4 v9, 0x0

    const-string v5, ""

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/db/DataHelper;->fetchUserGroups(JLjava/lang/Integer;Ljava/lang/String;ZZZLjava/lang/Long;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 453
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 454
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 163
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupsFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupsFragment$3;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectGroupForDelete(J)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 557
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->selectedGroups:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    invoke-virtual {p1}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 560
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->checkDeleteGroups()V

    return-void
.end method

.method private setupFilterSpinner()V
    .locals 4

    .line 468
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_1

    return-void

    .line 472
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->getFilterItemsArrayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 474
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 475
    new-instance v0, Lcom/perm/kate/GroupsFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$13;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lcom/perm/kate/BaseActivity;->setupFilterSpinner(Ljava/util/ArrayList;Landroid/widget/AdapterView$OnItemSelectedListener;I)V

    return-void
.end method

.method private showFilterDialog()V
    .locals 3

    .line 419
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0335

    .line 420
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 421
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->getFilterItemsArrayId()I

    move-result v1

    new-instance v2, Lcom/perm/kate/GroupsFragment$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupsFragment$12;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 426
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInviteDialog()V
    .locals 3

    .line 266
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801ef

    .line 267
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0141

    .line 268
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f015a

    .line 269
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupsFragment;->joinKateGroupClick:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0f021b

    .line 270
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showInviteDialogMaybe(Z)V
    .locals 6

    .line 248
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 253
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->setShown(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 255
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->getShown(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/perm/utils/GroupInvite;->randomRatio()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 256
    invoke-static {v0}, Lcom/perm/utils/GroupInvite;->setShown(Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showInviteDialog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 260
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private showInviteDialogMaybeInUiThread(Z)V
    .locals 2

    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupsFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GroupsFragment$6;-><init>(Lcom/perm/kate/GroupsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showInvitesActivity()V
    .locals 3

    .line 409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsInvitesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNewGroupActivity()V
    .locals 3

    .line 463
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewGroupActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toSortByDate()Z
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    .line 384
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x47

    const/16 v2, 0x1b5d

    const v3, 0x7f0f0335

    .line 385
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x48

    const/16 v2, 0x1b5f

    const v3, 0x7f0f01df

    .line 387
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x2

    const/16 v2, 0x3e9

    const v3, 0x7f0f04fd

    .line 388
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->join_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 94
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    .line 96
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 97
    iget-object v2, p0, Lcom/perm/kate/GroupsFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v2, v0

    if-nez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->isMe:Z

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_group"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->select_group:Z

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "select_group_all"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/GroupsFragment;->select_group_all:Z

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "repost_post_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_id:J

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "repost_post_owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GroupsFragment;->repost_post_owner_id:J

    .line 102
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.wall_object"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupsFragment;->wall_object:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c009d

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->setupFilterSpinner()V

    const p2, 0x7f090132

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment;->filterText:Landroid/widget/EditText;

    .line 76
    iget-object p3, p0, Lcom/perm/kate/GroupsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 78
    new-instance p3, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090210

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    .line 80
    iget-object p3, p0, Lcom/perm/kate/GroupsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/GroupsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 82
    iget-object p2, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/GroupsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const p2, 0x7f0901d0

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    const p2, 0x7f090077

    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090076

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/perm/kate/GroupsFragment;->btn_delete:Landroid/widget/Button;

    .line 86
    new-instance p3, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/perm/kate/GroupsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/GroupsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;)V

    .line 88
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment;->group_list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->notes:Lcom/perm/kate/GroupsAdapter;

    .line 231
    iput-object v1, p0, Lcom/perm/kate/GroupsFragment;->cursor:Landroid/database/Cursor;

    .line 232
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method onGroupSearch()V
    .locals 3

    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_group"

    const/4 v2, 0x1

    .line 370
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    .line 405
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 399
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showNewGroupActivity()V

    return v2

    .line 396
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showFilterDialog()V

    return v2

    .line 402
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/GroupsFragment;->showInvitesActivity()V

    return v2
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 376
    invoke-virtual {p0}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput v0, p0, Lcom/perm/kate/GroupsFragment;->state:I

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/perm/kate/GroupsFragment;->offset:I

    .line 120
    new-instance v0, Lcom/perm/kate/GroupsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupsFragment$1;-><init>(Lcom/perm/kate/GroupsFragment;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
