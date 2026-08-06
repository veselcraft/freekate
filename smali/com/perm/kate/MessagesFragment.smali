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
.field public static redisplay_data:Z


# instance fields
.field account_id:J

.field private audio_attachment:Ljava/lang/String;

.field private btn_delete:Landroid/widget/Button;

.field callback_load_more:Lcom/perm/kate/session/Callback;

.field callback_messages:Lcom/perm/kate/session/Callback;

.field callback_profiles:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private doc_attachment:Ljava/lang/String;

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

.field private selectedDialogs:Ljava/util/HashSet;
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

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field private state:I

.field private final typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field typing_users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/MessagesFragment$TypingInfo;",
            ">;"
        }
    .end annotation
.end field

.field uris_shared:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private video_attachment:Ljava/lang/String;

.field private wall_attachment:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    .line 65
    iput-object v2, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    .line 66
    iput-object v2, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->is_left_pane:Z

    .line 72
    iput-wide v4, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 73
    new-instance v0, Lcom/perm/utils/ScrollPauser;

    invoke-direct {v0}, Lcom/perm/utils/ScrollPauser;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 84
    iput-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    .line 181
    const/16 v0, 0x1e

    iput v0, p0, Lcom/perm/kate/MessagesFragment;->page_size:I

    .line 201
    new-instance v0, Lcom/perm/kate/MessagesFragment$5;

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/MessagesFragment$5;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    .line 230
    new-instance v0, Lcom/perm/kate/MessagesFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessagesFragment$7;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    .line 305
    new-instance v0, Lcom/perm/kate/MessagesFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$8;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 369
    new-instance v0, Lcom/perm/kate/MessagesFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$9;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/perm/kate/MessagesFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$11;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 575
    new-instance v0, Lcom/perm/kate/MessagesFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$14;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 660
    iput-wide v4, p0, Lcom/perm/kate/MessagesFragment;->offset:J

    .line 662
    new-instance v0, Lcom/perm/kate/MessagesFragment$16;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/MessagesFragment$16;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->callback_load_more:Lcom/perm/kate/session/Callback;

    .line 708
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    .line 709
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->handler:Landroid/os/Handler;

    .line 711
    new-instance v0, Lcom/perm/kate/MessagesFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$17;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 729
    new-instance v0, Lcom/perm/kate/MessagesFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$18;-><init>(Lcom/perm/kate/MessagesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->hideTypingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private ShowMessageThread(JJI)V
    .locals 5
    .param p1, "message_uid"    # J
    .param p3, "chat_id"    # J
    .param p5, "unread_count"    # I

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 359
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_0

    .line 360
    const-string v1, "com.perm.kate.chat_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 364
    :goto_0
    const-string v1, "unread_count"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    const-string v1, "group_id"

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 366
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 367
    return-void

    .line 362
    :cond_0
    const-string v1, "com.perm.kate.message_uid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->clearSelectedDialogs()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->deleteSelectedDialogs()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/MessagesFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->selectDialogForDelete(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/MessagesFragment;JJI)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/MessagesFragment;->ShowMessageThread(JJI)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->getMissingUsersInThread()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/MessagesFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->askPin(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/MessagesFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->hideDialog(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/MessagesFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/MessagesFragment;->checkIfLoadMoreRequired(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refresh()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/MessagesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/MessagesFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    return p1
.end method

.method static synthetic access$500(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/MessagesFragment;->refreshOnlineStatus(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/MessagesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/MessagesFragment;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/MessagesFragment;->showCompose(JJ)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/MessagesFragment;)Lcom/perm/kate/DialogsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/MessagesFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/MessagesFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    return v0
.end method

.method private askPin(J)V
    .locals 7
    .param p1, "thread_id"    # J

    .prologue
    const/4 v6, 0x0

    .line 496
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030095

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 497
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 499
    .local v2, "edittext":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f07037b

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 501
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 502
    const-string v4, "OK"

    new-instance v5, Lcom/perm/kate/MessagesFragment$12;

    invoke-direct {v5, p0, v2, p1, p2}, Lcom/perm/kate/MessagesFragment$12;-><init>(Lcom/perm/kate/MessagesFragment;Landroid/widget/EditText;J)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 511
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 512
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 513
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 514
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 515
    return-void
.end method

.method private checkDeleteDialogs()V
    .locals 4

    .prologue
    const v3, 0x7f070084

    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    .line 765
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 766
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->selected_mode_for_delete:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/perm/kate/MessagesFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

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

    .line 764
    goto :goto_1

    .line 765
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 766
    :cond_4
    invoke-virtual {p0, v3}, Lcom/perm/kate/MessagesFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method private checkIfLoadMoreRequired(II)V
    .locals 4
    .param p1, "lstVisible"    # I
    .param p2, "totalCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 632
    if-nez p2, :cond_1

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    add-int/lit8 v2, p2, -0x2

    if-lt p1, v2, :cond_2

    move v0, v1

    .line 635
    .local v0, "loadMore":Z
    :goto_1
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/perm/kate/MessagesFragment;->state:I

    if-nez v2, :cond_0

    .line 636
    const-string v2, "Kate.MessagesFragment"

    const-string v3, "Loading more"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput v1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 638
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->loadMore()V

    .line 639
    invoke-virtual {p0, v1}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 634
    .end local v0    # "loadMore":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clearSelectedDialogs()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 771
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->checkDeleteDialogs()V

    .line 772
    return-void
.end method

.method private deleteSelectedDialogs()V
    .locals 2

    .prologue
    .line 776
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 777
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->clearSelectedDialogs()V

    .line 778
    new-instance v1, Lcom/perm/kate/MessagesFragment$19;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MessagesFragment$19;-><init>(Lcom/perm/kate/MessagesFragment;Ljava/util/ArrayList;)V

    .line 800
    invoke-virtual {v1}, Lcom/perm/kate/MessagesFragment$19;->start()V

    .line 801
    return-void
.end method

.method public static deleteThread(JJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;J)V
    .locals 14
    .param p0, "message_uid"    # J
    .param p2, "chat_id"    # J
    .param p4, "account_id"    # J
    .param p6, "callback"    # Lcom/perm/kate/MessagesFragment$DeleteCallback;
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "group_id"    # J

    .prologue
    .line 544
    new-instance v3, Lcom/perm/kate/MessagesFragment$13;

    move-wide v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p8

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v3 .. v13}, Lcom/perm/kate/MessagesFragment$13;-><init>(JJJJLcom/perm/kate/MessagesFragment$DeleteCallback;Landroid/app/Activity;)V

    .line 563
    .local v3, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070038

    .line 564
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f07051d

    .line 565
    invoke-virtual {v2, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 566
    invoke-virtual {v2, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 567
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 568
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 569
    return-void
.end method

.method private getMissingUsersInThread()V
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/perm/kate/MessagesFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$10;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 428
    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment$10;->start()V

    .line 429
    return-void
.end method

.method public static getUsers(Ljava/util/ArrayList;)V
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
    .line 287
    .local p0, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v2, "users_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "groups_in_response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    .line 290
    .local v1, "message":Lcom/perm/kate/api/Message;
    iget-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 291
    iget-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :goto_1
    iget-object v4, v1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 295
    iget-object v4, v1, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 293
    :cond_1
    iget-wide v4, v1, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->virtualUserIdToGroupId(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 299
    .end local v1    # "message":Lcom/perm/kate/api/Message;
    :cond_2
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v3, :cond_3

    .line 300
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_3
    invoke-static {v2}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 302
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 303
    return-void
.end method

.method private hideDialog(J)V
    .locals 5
    .param p1, "thread_id"    # J

    .prologue
    .line 518
    invoke-static {p1, p2}, Lcom/perm/kate/HiddenChats;->add(J)V

    .line 519
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    .line 523
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0703e8

    .line 524
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "OK"

    const/4 v3, 0x0

    .line 525
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 526
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 527
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 528
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 529
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 644
    new-instance v0, Lcom/perm/kate/MessagesFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$15;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 654
    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment$15;->start()V

    .line 655
    return-void
.end method

.method private newChat()V
    .locals 3

    .prologue
    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/CheckMembersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.new_chat"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    .line 590
    return-void
.end method

.method private refetchData()V
    .locals 7

    .prologue
    .line 533
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 535
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 537
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v4, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    .line 538
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 539
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/perm/kate/DialogsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 540
    return-void
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 185
    :try_start_0
    iget v1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    if-ne v1, v2, :cond_0

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/perm/kate/MessagesFragment;->state:I

    .line 188
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V

    .line 191
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 193
    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/perm/kate/MessagesFragment;->page_size:I

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getMessagesDialogs(JILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 194
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/perm/kate/MessagesFragment;->showProgressBar(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshOnlineStatus(Ljava/util/ArrayList;)V
    .locals 8
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
    .local p1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    const/4 v2, 0x0

    .line 271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Message;

    .line 273
    .local v7, "message":Lcom/perm/kate/api/Message;
    iget-wide v4, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    iget-wide v4, v7, Lcom/perm/kate/api/Message;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_1
    iget-object v3, v7, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, v7, Lcom/perm/kate/api/Message;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 280
    .end local v7    # "message":Lcom/perm/kate/api/Message;
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_3

    .line 281
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v0, :cond_4

    .line 283
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v3, "online"

    const-string v4, "nom"

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment;->callback_profiles:Lcom/perm/kate/session/Callback;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->getProfiles(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 284
    :cond_4
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 4

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/DialogsAdapter;->me:Lcom/perm/kate/api/User;

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/MessagesFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$6;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private selectDialogForDelete(J)V
    .locals 3
    .param p1, "thread_id"    # J

    .prologue
    .line 752
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 753
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 758
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    .line 759
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->checkDeleteDialogs()V

    .line 760
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showCompose(JJ)V
    .locals 3
    .param p1, "user_id"    # J
    .param p3, "chat_id"    # J

    .prologue
    .line 593
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.chat_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 595
    const-string v1, "com.perm.kate.user_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->forward_messages:[J

    if-eqz v1, :cond_0

    .line 597
    const-string v1, "com.perm.kate.forward_messages"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->forward_messages:[J

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 598
    :cond_0
    const-string v1, "com.perm.kate.photo_attachment"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->photo_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "com.perm.kate.wall_attachment"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->wall_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "com.perm.kate.audio_attachment"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->audio_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v1, "com.perm.kate.video_attachment"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->video_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v1, "com.perm.kate.doc_attachment"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->doc_attachment:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v1, "shared_photo"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 604
    const-string v1, "shared_text"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v1, "shared_photos"

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->uris_shared:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 606
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/MessagesFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 608
    return-void
.end method


# virtual methods
.method allMessagesBroken(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "messages1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    const/4 v1, 0x0

    .line 695
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 700
    :goto_0
    return v1

    .line 697
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    .line 698
    .local v0, "m":Lcom/perm/kate/api/Message;
    invoke-static {v0}, Lcom/perm/kate/LongPoll;->isMessageBroken(Lcom/perm/kate/api/Message;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 700
    .end local v0    # "m":Lcom/perm/kate/api/Message;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    if-nez v0, :cond_1

    .line 333
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 334
    const/16 v0, 0x19

    const/16 v1, 0x1c20

    const v2, 0x7f07017e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 335
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 336
    const/16 v0, 0x3f

    const/16 v1, 0x1c84

    const v2, 0x7f0700e3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 338
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 807
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 808
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0e020b

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 812
    .local v3, "pager":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 817
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 818
    .local v2, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/FixedBottomBehavior;

    .line 819
    .local v0, "behavior":Lcom/perm/kate/FixedBottomBehavior;
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0e00a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 820
    .local v1, "buttons":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/perm/kate/FixedBottomBehavior;->setLayout3(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 746
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 749
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 123
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.new_message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    .line 127
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.forward_messages"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->forward_messages:[J

    .line 128
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.photo_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->photo_attachment:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.wall_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->wall_attachment:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.audio_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->audio_attachment:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.video_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->video_attachment:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.doc_attachment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->doc_attachment:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_photo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->shared_photo:Landroid/net/Uri;

    .line 134
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_photos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->uris_shared:Ljava/util/ArrayList;

    .line 135
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->shared_text:Ljava/lang/String;

    .line 137
    :cond_2
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    .line 138
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    .line 141
    :cond_3
    iget-boolean v0, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/MessagesFragment$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/MessagesFragment$3;-><init>(Lcom/perm/kate/MessagesFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v1, 0x7f0300ad

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 92
    const v1, 0x7f0e0246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    .line 93
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-boolean v1, p0, Lcom/perm/kate/MessagesFragment;->new_message:Z

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->longClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    invoke-static {}, Lcom/perm/kate/MainActivity;->isHeaderScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 99
    :cond_1
    const v1, 0x7f0e00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    .line 100
    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/MessagesFragment$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/MessagesFragment$1;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    .line 107
    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->btn_delete:Landroid/widget/Button;

    new-instance v2, Lcom/perm/kate/MessagesFragment$2;

    invoke-direct {v2, p0}, Lcom/perm/kate/MessagesFragment$2;-><init>(Lcom/perm/kate/MessagesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->setButtonsBg(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->showMessages()V

    .line 116
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->Destroy()V

    .line 614
    :cond_0
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    .line 615
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 617
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    .line 618
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 619
    iput-object v1, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    .line 620
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 621
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 353
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 345
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->newChat()V

    goto :goto_0

    .line 348
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/DialogAttachmentsActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "important"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 350
    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    nop

    :sswitch_data_0
    .sparse-switch
        0x19 -> :sswitch_0
        0x3f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->refreshInThread()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onResume()V

    .line 385
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/notifications/MessagesNotification;->cancel(Landroid/content/Context;)V

    .line 386
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 392
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 393
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.new_messages"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 394
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.perm.kate.intent.action.typing"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 399
    sget-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/MessagesFragment;->redisplay_data:Z

    .line 401
    invoke-direct {p0}, Lcom/perm/kate/MessagesFragment;->refetchData()V

    .line 403
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 407
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStop()V

    .line 408
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->typingBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 156
    new-instance v0, Lcom/perm/kate/MessagesFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/MessagesFragment$4;-><init>(Lcom/perm/kate/MessagesFragment;)V

    .line 161
    invoke-virtual {v0}, Lcom/perm/kate/MessagesFragment$4;->start()V

    .line 162
    return-void
.end method

.method public selectDialog(J)V
    .locals 1
    .param p1, "thread_id"    # J

    .prologue
    .line 624
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    if-nez v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    iput-wide p1, v0, Lcom/perm/kate/DialogsAdapter;->selected_thread_id:J

    .line 627
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/DialogsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected showMessages()V
    .locals 8

    .prologue
    .line 168
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    iget-wide v4, p0, Lcom/perm/kate/MessagesFragment;->group_id:J

    invoke-static {}, Lcom/perm/kate/HiddenChats;->get()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchDialogs(JJLjava/util/Collection;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    .line 169
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/MessagesFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 170
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/MessagesFragment;->account_id:J

    invoke-virtual {v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v3

    .line 171
    .local v3, "me":Lcom/perm/kate/api/User;
    new-instance v0, Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/MessagesFragment;->cursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/perm/kate/MessagesFragment;->typing_users:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/DialogsAdapter;-><init>(Lcom/perm/kate/BaseActivity;Landroid/database/Cursor;Lcom/perm/kate/api/User;Ljava/util/ArrayList;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    .line 173
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment;->lv_message_list:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/perm/kate/MessagesFragment;->message_list_adapter:Lcom/perm/kate/DialogsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v3    # "me":Lcom/perm/kate/api/User;
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v7

    .line 175
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 176
    invoke-virtual {p0}, Lcom/perm/kate/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 177
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
