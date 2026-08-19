.class public Lcom/perm/kate/MessagesFragment;
.super Lcom/perm/kate/BaseFragment;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MessagesFragment$TypingInfo;,
        Lcom/perm/kate/MessagesFragment$DeleteCallback;
    }
.end annotation


# static fields
.field public static redisplay_data:Z = false

.field static refresh_time:Ljava/util/HashMap; = null

.field static reported:Z = false


# instance fields
.field account_id:J

.field private btn_delete:Landroid/widget/Button;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field callback_messages:Lcom/perm/kate/session/Callback;

.field callback_messages_offline:Lcom/perm/kate/session/Callback;

.field callback_profiles:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private forward_messages:[J

.field public group_id:J

.field handler:Landroid/os/Handler;

.field hideTypingRunnable:Ljava/lang/Runnable;

.field public is_left_pane:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private ll_delete_region:Landroid/widget/LinearLayout;

.field private longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private lv_message_list:Landroid/widget/ListView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private message_list_adapter:Lcom/perm/kate/DialogsAdapter;

.field private new_message:Z

.field offset:J

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field page_size:I

.field pauser:Lcom/perm/utils/ScrollPauser;

.field private photo_attachment:Ljava/lang/String;

.field selectedDialogs:Ljava/util/HashSet;

.field private selected_mode_for_delete:Z

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field private state:I

.field private final typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field typing_users:Ljava/util/ArrayList;

.field unread:Z

.field uris_shared:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$e6eNRHsYxuQgALTw3JUdJdU7nts()V
    .locals 0

    invoke-static {}, Lcom/perm/kate/MessagesFragment;->lambda$reportColdStartTime$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/MessagesFragment;->refresh_time:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 503
    sput-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    const/4 v1, 0x0

    .line 66
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    .line 67
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    .line 69
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    const-wide/16 v2, 0x0

    .line 73
    iput-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 74
    new-instance v4, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v4}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/MessagesFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    const/4 v4, -0x1

    .line 76
    iput v4, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 85
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    .line 87
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    const/16 v4, 0x1e

    .line 215
    iput v4, p0, Lcom/perm/kate/MessagesFragment;->page_size:I

    .line 259
    new-instance v4, Lcom/perm/kate/MessagesFragment$6;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/MessagesFragment$6;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/perm/kate/MessagesFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    .line 291
    new-instance v1, Lcom/perm/kate/MessagesFragment$8;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/perm/kate/MessagesFragment$8;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    .line 333
    new-instance v1, Lcom/perm/kate/MessagesFragment$9;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/perm/kate/MessagesFragment$9;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->callback_messages_offline:Lcom/perm/kate/session/Callback;

    .line 408
    new-instance v1, Lcom/perm/kate/MessagesFragment$10;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$10;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 484
    new-instance v1, Lcom/perm/kate/MessagesFragment$11;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$11;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 555
    new-instance v1, Lcom/perm/kate/MessagesFragment$13;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$13;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 662
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    .line 708
    new-instance v0, Lcom/perm/kate/MessagesFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$16;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 796
    iput-wide v2, p0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 798
    new-instance v0, Lcom/perm/kate/MessagesFragment$18;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessagesFragment$18;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    .line 847
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    .line 849
    new-instance v0, Lcom/perm/kate/MessagesFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$19;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 868
    new-instance v0, Lcom/perm/kate/MessagesFragment$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$20;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ShowMessageThread(JJI)V
    .locals 4

    .line 472
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    const-string p1, "com.perm.kate.chat_id"

    .line 475
    invoke-virtual {v0, p1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p3, "com.perm.kate.message_uid"

    .line 477
    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    const-string p1, "unread_count"

    .line 479
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    iget-wide p1, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-string p3, "group_id"

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->clearSelectedDialogs()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->deleteSelectedDialogs()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/MessagesFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/MessagesFragment;J)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->selectDialogForDelete(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/MessagesFragment;JJI)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/MessagesFragment;->ShowMessageThread(JJI)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->getMissingUsersInThread()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/MessagesFragment;J)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->askPin(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/MessagesFragment;J)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->hideDialog(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/MessagesFragment;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->offlineRefresh()V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/MessagesFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/perm/kate/MessagesFragment;->refreshOnlineStatus(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MessagesFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/MessagesFragment;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    return p0
.end method

.method static synthetic access$800(Lcom/perm/kate/MessagesFragment;JJ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessagesFragment;->showCompose(JJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    return-object p0
.end method

.method private askPin(J)V
    .locals 5

    .line 626
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09010e

    .line 627
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 629
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f03e4

    .line 630
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 631
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 632
    new-instance v0, Lcom/perm/kate/MessagesFragment$14;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/perm/kate/MessagesFragment$14;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/widget/EditText;J)V

    const-string p1, "OK"

    invoke-virtual {v3, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f0f01c5

    .line 641
    invoke-virtual {v3, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 642
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 643
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 644
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private checkDeleteDialogs()V
    .locals 3

    .line 902
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_3

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    .line 905
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    const v2, 0x7f0f00ba

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x2

    const/4 v0, 0x1

    if-lt p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 767
    iget p1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    if-nez p1, :cond_2

    const-string p1, "Kate.MessagesFragment"

    const-string p2, "Loading more"

    .line 768
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iput v0, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 770
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->loadMore()V

    .line 771
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :cond_2
    return-void
.end method

.method private clearSelectedDialogs()V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 911
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->checkDeleteDialogs()V

    return-void
.end method

.method private deleteSelectedDialogs()V
    .locals 2

    .line 916
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 917
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->clearSelectedDialogs()V

    .line 918
    new-instance v1, Lcom/perm/kate/MessagesFragment$21;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MessagesFragment$21;-><init>(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 940
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V
    .locals 12

    .line 677
    new-instance v11, Lcom/perm/kate/MessagesFragment$15;

    move-object v0, v11

    move-wide v1, p0

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p8

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/MessagesFragment$15;-><init>(JJJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;)V

    .line 696
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 697
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f05a7

    .line 698
    invoke-virtual {v0, v1, v11}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    const/4 v2, 0x0

    .line 699
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private getMissingUsersInThread()V
    .locals 1

    .line 528
    new-instance v0, Lcom/perm/kate/MessagesFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$12;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 544
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getUsers(Ljava/util/ArrayList;)V
    .locals 5

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 393
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 394
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 396
    :cond_1
    iget-wide v3, v2, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :goto_1
    iget-object v2, v2, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 402
    :cond_2
    sget-object p0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    :cond_3
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 405
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    return-void
.end method

.method private hideDialog(J)V
    .locals 1

    .line 648
    invoke-static {p1, p2}, Lcom/perm/kate/HiddenChats;->add(J)V

    .line 649
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    .line 653
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f0478

    .line 654
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 656
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 657
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 658
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private static synthetic lambda$reportColdStartTime$0()V
    .locals 10

    .line 131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/StackTraceElement;

    const/4 v5, 0x0

    .line 134
    new-instance v6, Ljava/lang/StackTraceElement;

    const-string v7, "FakeClass"

    const-string v8, "coldStart"

    const-string v9, "FakeClass.java"

    invoke-direct {v6, v7, v8, v9, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 135
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method private loadMore()V
    .locals 1

    .line 776
    new-instance v0, Lcom/perm/kate/MessagesFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$17;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 790
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private newChat()V
    .locals 3

    .line 720
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.new_chat"

    const/4 v2, 0x1

    .line 721
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private offlineRefresh()V
    .locals 11

    .line 242
    :try_start_0
    iget v0, p0, Lcom/perm/kate/MessagesFragment;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 244
    :cond_0
    iput v1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 245
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 248
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 251
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    const-string v3, "*"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/perm/kate/MessagesFragment;->callback_messages_offline:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Lcom/perm/kate/session/Session;->searchMessages(Ljava/lang/String;Ljava/lang/Long;IILjava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refetchData()V
    .locals 9

    .line 666
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 668
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 670
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v4, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {}, Lcom/perm/utils/FixedChats;->get()Ljava/util/ArrayList;

    move-result-object v7

    iget-boolean v8, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    .line 671
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 672
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method private refresh()V
    .locals 9

    .line 219
    :try_start_0
    iget v0, p0, Lcom/perm/kate/MessagesFragment;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 221
    :cond_0
    iput v1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 222
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 225
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 227
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    const-wide/16 v3, 0x0

    iget v5, p0, Lcom/perm/kate/MessagesFragment;->page_size:I

    iget-boolean v6, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    iget-object v7, p0, Lcom/perm/kate/MessagesFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getMessagesDialogs(JIZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->onlineWarning(Landroid/app/Activity;)V

    .line 231
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 232
    invoke-static {}, Lcom/perm/kate/MessageThreadFragment;->setOffline()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 234
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private refreshOnlineStatus(Ljava/util/ArrayList;)V
    .locals 9

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 363
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 364
    iget-wide v2, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 365
    iget-wide v2, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    iget-object v1, v1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    :cond_3
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p1, :cond_4

    .line 372
    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 376
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 377
    sget-object v1, Lcom/perm/kate/MessagesFragment;->refresh_time:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 378
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x1d4c0

    sub-long/2addr v5, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 379
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 383
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    return-void

    .line 385
    :cond_8
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_9

    const/4 v3, 0x0

    .line 386
    iget-object v6, p0, Lcom/perm/kate/MessagesFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    const/4 v7, 0x0

    const-string v4, "online"

    const-string v5, "nom"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_9
    return-void
.end method

.method private reportColdStartTime(Landroid/view/View;)V
    .locals 5

    .line 124
    sget-boolean v0, Lcom/perm/kate/MessagesFragment;->reported:Z

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    return-void

    .line 126
    :cond_1
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 127
    sput-boolean v0, Lcom/perm/kate/MessagesFragment;->reported:Z

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x186a0

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    return-void

    .line 130
    :cond_3
    sget-object v0, Lcom/perm/kate/MessagesFragment$$ExternalSyntheticLambda0;->INSTANCE:Lcom/perm/kate/MessagesFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-eqz v0, :cond_1

    .line 280
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    .line 281
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 283
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessagesFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$7;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectDialogForDelete(J)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 896
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {p1}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    .line 899
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->checkDeleteDialogs()V

    return-void
.end method

.method private showCompose(JJ)V
    .locals 3

    .line 729
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.chat_id"

    .line 730
    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 731
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.user_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->forward_messages:[J

    if-eqz p1, :cond_0

    const-string p2, "com.perm.kate.forward_messages"

    .line 733
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->photo_attachment:Ljava/lang/String;

    const-string p2, "com.perm.kate.photo_attachment"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    const-string p2, "shared_photo"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 736
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    const-string p2, "shared_text"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    iget-object p1, p0, Lcom/perm/kate/MessagesFragment;->uris_shared:Ljava/util/ArrayList;

    const-string p2, "shared_photos"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 738
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method allMessagesBroken(Ljava/util/ArrayList;)Z
    .locals 2

    .line 833
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 835
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 836
    invoke-static {v0}, Lcom/perm/kate/LongPoll;->isMessageBroken(Lcom/perm/kate/api/Message;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7

    .line 435
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 436
    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/16 v2, 0x19

    const/16 v3, 0x1c20

    const v6, 0x7f0f01de

    .line 437
    invoke-interface {p1, v0, v2, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 438
    :cond_0
    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const/16 v2, 0x3f

    const/16 v3, 0x1c84

    const v4, 0x7f0f012e

    .line 439
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/16 v2, 0x40

    const/16 v3, 0x1ce8

    const v4, 0x7f0f0574

    .line 440
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 441
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 442
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    return v1
.end method

.method offlineRefreshInThread()V
    .locals 1

    .line 187
    new-instance v0, Lcom/perm/kate/MessagesFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$5;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 192
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 947
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 948
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f090260

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 955
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez v0, :cond_2

    return-void

    .line 957
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 958
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/FixedBottomBehavior;

    .line 959
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 960
    invoke-virtual {p1, v0}, Lcom/perm/kate/FixedBottomBehavior;->setLayout3(Landroid/view/View;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 887
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 143
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 144
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 145
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.perm.kate.new_message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.forward_messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessagesFragment;->forward_messages:[J

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.photo_attachment"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessagesFragment;->photo_attachment:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "shared_photo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "shared_photos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/MessagesFragment;->uris_shared:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "shared_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    .line 155
    :cond_1
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "group_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    .line 159
    :cond_2
    iget-boolean p1, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    if-nez p1, :cond_3

    .line 160
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/perm/kate/MessagesFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$3;-><init>(Lcom/perm/kate/MessagesFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00bc

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    const p2, 0x7f090215

    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    .line 94
    iget-object p3, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    iget-boolean p2, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    if-nez p2, :cond_0

    .line 96
    iget-object p2, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/MessagesFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 97
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/MessagesFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 98
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 99
    iget-object p2, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_1
    const p2, 0x7f0901d0

    .line 100
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    const p2, 0x7f090077

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/MessagesFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/MessagesFragment$1;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090076

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    .line 108
    new-instance p3, Lcom/perm/kate/MessagesFragment$2;

    invoke-direct {p3, p0}, Lcom/perm/kate/MessagesFragment$2;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;)V

    .line 115
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->showMessages()V

    .line 117
    invoke-direct {p0, p1}, Lcom/perm/kate/MessagesFragment;->reportColdStartTime(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->Destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 746
    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    .line 747
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    if-eqz v1, :cond_1

    .line 748
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 749
    :cond_1
    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    .line 750
    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 751
    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    .line 752
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 468
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 460
    :cond_0
    iget-boolean p1, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/perm/kate/MessagesFragment;->unread:Z

    .line 461
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    .line 464
    sget-object p1, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {p1}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->refreshInThread()V

    :cond_1
    return v2

    .line 455
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "important"

    .line 456
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 452
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->newChat()V

    return v2
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 174
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->refreshInThread()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 499
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 507
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 509
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.typing"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 514
    sget-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 515
    sput-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    .line 516
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 522
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 523
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 524
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    .line 178
    new-instance v0, Lcom/perm/kate/MessagesFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$4;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public selectDialog(J)V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iput-wide p1, v0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 759
    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected showMessages()V
    .locals 10

    .line 199
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 200
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v5, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {}, Lcom/perm/utils/FixedChats;->get()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;Ljava/util/Collection;Z)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "mf_fetchDialogs"

    .line 201
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 202
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 203
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v6

    .line 204
    new-instance v0, Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/perm/kate/BaseActivity;

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    iget-object v7, p0, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/perm/kate/DialogsAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Lcom/perm/kate/api/User;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    .line 206
    iget-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    iput-boolean v1, v0, Lcom/perm/kate/DialogsAdapter;->show_checks:Z

    .line 207
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
