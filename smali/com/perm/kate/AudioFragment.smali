.class public Lcom/perm/kate/AudioFragment;
.super Lcom/perm/kate/BaseFragment;
.source "AudioFragment.java"


# instance fields
.field adapter:Lcom/perm/kate/AudioListAdapter;

.field album_id:J

.field private audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field private btn_clear:Landroid/widget/ImageButton;

.field private btn_delete:Landroid/widget/Button;

.field private btn_genre:Landroid/widget/Button;

.field callback:Lcom/perm/kate/session/Callback;

.field private callback_add:Lcom/perm/kate/session/Callback;

.field callback_save_audio:Lcom/perm/kate/session/Callback;

.field callback_server:Lcom/perm/kate/session/Callback;

.field private dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private fileUri:Landroid/net/Uri;

.field filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private genre_OnClickListener:Landroid/view/View$OnClickListener;

.field private genre_id:Ljava/lang/Integer;

.field private is_me:Z

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field private ll_btn_genre:Landroid/widget/FrameLayout;

.field private ll_delete_region:Landroid/widget/LinearLayout;

.field private lv_audio_list:Landroid/widget/ListView;

.field private mid_long_value:J

.field private move_callback:Lcom/perm/kate/session/Callback;

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field private reorder_callback:Lcom/perm/kate/session/Callback;

.field private selectClickListener:Landroid/view/View$OnClickListener;

.field private select_audio:Z

.field private selectedAudios:Ljava/util/HashSet;
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

.field source:I

.field private target_audio:Ljava/lang/String;

.field private uid:Ljava/lang/Long;

.field upload_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 61
    iput-boolean v2, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    .line 68
    iput-object v3, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 74
    iput-boolean v2, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    .line 209
    new-instance v0, Lcom/perm/kate/AudioFragment$5;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$5;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 237
    new-instance v0, Lcom/perm/kate/AudioFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$6;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .line 244
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    invoke-direct {v0, v3, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 246
    new-instance v0, Lcom/perm/kate/AudioFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$7;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 276
    new-instance v0, Lcom/perm/kate/AudioFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$8;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 447
    new-instance v0, Lcom/perm/kate/AudioFragment$10;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$10;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_server:Lcom/perm/kate/session/Callback;

    .line 488
    new-instance v0, Lcom/perm/kate/AudioFragment$11;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$11;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    .line 512
    new-instance v0, Lcom/perm/kate/AudioFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$12;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 560
    new-instance v0, Lcom/perm/kate/AudioFragment$14;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$14;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    .line 582
    new-instance v0, Lcom/perm/kate/AudioFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$15;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->selectClickListener:Landroid/view/View$OnClickListener;

    .line 658
    new-instance v0, Lcom/perm/kate/AudioFragment$18;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$18;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_add:Lcom/perm/kate/session/Callback;

    .line 732
    new-instance v0, Lcom/perm/kate/AudioFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$22;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_OnClickListener:Landroid/view/View$OnClickListener;

    .line 806
    new-instance v0, Lcom/perm/kate/AudioFragment$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$24;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 836
    new-instance v0, Lcom/perm/kate/AudioFragment$26;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$26;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->reorder_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->clearSelectedAudios()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->deleteSelectedAudios()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->notifyList()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/AudioFragment;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # Ljava/io/InputStream;
    .param p2, "x2"    # Ljava/io/InputStream;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment;->uploadAudio(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayError()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/AudioFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->onFilterAudios(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->updateDragEnabled()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/AudioFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/AudioFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->onActionAddAudio(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_add:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/perm/kate/AudioFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->audiosToCache(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->confirmAudiosToCache()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showGenresDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/AudioFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->changeGenre(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/AudioFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;
    .param p2, "x2"    # Ljava/lang/Long;
    .param p3, "x3"    # Ljava/lang/Long;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment;->audioReorder(Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->reorder_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayDataInUI()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioFragment;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioFragment;->selectAudioForDelete(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    return v0
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    return v0
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    return v0
.end method

.method private addAudio(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[J>;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    if-nez p1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 639
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 640
    new-instance v0, Lcom/perm/kate/AudioFragment$17;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AudioFragment$17;-><init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V

    .line 655
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment$17;->start()V

    goto :goto_0
.end method

.method private audioFromMyAudio()V
    .locals 4

    .prologue
    .line 622
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 623
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 624
    const-string v1, "com.perm.kate.owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 625
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 626
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 627
    return-void
.end method

.method private audioFromSearch()V
    .locals 3

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 632
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 634
    return-void
.end method

.method private audioReorder(Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p1, "a"    # Lcom/perm/kate/api/Audio;
    .param p2, "before_audio_id"    # Ljava/lang/Long;
    .param p3, "after_audio_id"    # Ljava/lang/Long;

    .prologue
    .line 827
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 828
    new-instance v0, Lcom/perm/kate/AudioFragment$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment$25;-><init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 833
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment$25;->start()V

    .line 834
    return-void
.end method

.method private audiosToCache(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 687
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 706
    :goto_0
    return-void

    .line 689
    :cond_0
    new-instance v0, Lcom/perm/kate/AudioFragment$20;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AudioFragment$20;-><init>(Lcom/perm/kate/AudioFragment;I)V

    .line 704
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment$20;->start()V

    goto :goto_0
.end method

.method private canReorder()Z
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 782
    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return v0

    .line 785
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    if-eqz v1, :cond_0

    .line 788
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v4, -0x1

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    mul-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 791
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x3

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 795
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeGenre(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 767
    if-nez p1, :cond_1

    .line 768
    const/4 v1, 0x0

    .line 773
    .local v1, "new_genre_id":Ljava/lang/Integer;
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    if-eq v2, v1, :cond_0

    .line 774
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 777
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 779
    :cond_0
    return-void

    .line 770
    .end local v1    # "new_genre_id":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "genre_ids":[Ljava/lang/String;
    add-int/lit8 v2, p1, -0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .restart local v1    # "new_genre_id":Ljava/lang/Integer;
    goto :goto_0
.end method

.method private checkDeleteAudios()V
    .locals 4

    .prologue
    const v3, 0x7f070084

    const/4 v1, 0x0

    .line 881
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    .line 884
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 885
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Lcom/perm/kate/AudioFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

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

    .line 883
    goto :goto_1

    .line 884
    :cond_3
    const/16 v1, 0x8

    goto :goto_2

    .line 885
    :cond_4
    invoke-virtual {p0, v3}, Lcom/perm/kate/AudioFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_3
.end method

.method private clearSelectedAudios()V
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 890
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkDeleteAudios()V

    .line 891
    return-void
.end method

.method private confirmAudiosToCache()V
    .locals 5

    .prologue
    .line 673
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070453

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07028d

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/AudioFragment$19;

    invoke-direct {v4, p0}, Lcom/perm/kate/AudioFragment$19;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 675
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 680
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 681
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 682
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 683
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 684
    return-void
.end method

.method private deleteSelectedAudios()V
    .locals 2

    .prologue
    .line 895
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 896
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->clearSelectedAudios()V

    .line 897
    new-instance v1, Lcom/perm/kate/AudioFragment$28;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/AudioFragment$28;-><init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V

    .line 910
    invoke-virtual {v1}, Lcom/perm/kate/AudioFragment$28;->start()V

    .line 911
    return-void
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Lcom/perm/kate/db/DataHelper;->getDownloadStates()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 197
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 207
    :goto_1
    return-void

    .line 200
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchAudioInList(JJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 204
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private displayDataInUI()V
    .locals 2

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AudioFragment$27;

    invoke-direct {v1, p0}, Lcom/perm/kate/AudioFragment$27;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    .line 469
    return-void
.end method

.method private fillSource()V
    .locals 4

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    const/16 v0, 0xd

    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    .line 153
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x5

    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 150
    const/4 v0, 0x6

    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0

    .line 152
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0
.end method

.method private notifyList()V
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 510
    return-void
.end method

.method private onActionAddAudio(I)V
    .locals 0
    .param p1, "which"    # I

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 619
    :goto_0
    return-void

    .line 613
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->audioFromMyAudio()V

    goto :goto_0

    .line 616
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->audioFromSearch()V

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onFilterAudios(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 532
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v1, "filtred_audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 534
    .local v0, "a":Lcom/perm/kate/api/Audio;
    iget-object v3, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 535
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 537
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v2, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private refresh()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/perm/kate/AudioFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$4;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 186
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment$4;->start()V

    .line 187
    return-void
.end method

.method private selectAudioForDelete(J)V
    .locals 3
    .param p1, "audio_id"    # J

    .prologue
    .line 870
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 876
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 877
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkDeleteAudios()V

    .line 878
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 874
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private showAddAudioDialog()V
    .locals 4

    .prologue
    .line 599
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const v3, 0x7f0703d2

    invoke-virtual {p0, v3}, Lcom/perm/kate/AudioFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0703d4

    invoke-virtual {p0, v3}, Lcom/perm/kate/AudioFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 600
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070113

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 602
    new-instance v2, Lcom/perm/kate/AudioFragment$16;

    invoke-direct {v2, p0}, Lcom/perm/kate/AudioFragment$16;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 607
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 608
    return-void
.end method

.method private showGenresDialog()V
    .locals 6

    .prologue
    .line 740
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 741
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0700b8

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    .line 742
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "array":[Ljava/lang/String;
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 744
    .local v3, "items":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const v5, 0x7f070030

    invoke-virtual {p0, v5}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 745
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 746
    add-int/lit8 v4, v2, 0x1

    aget-object v5, v0, v2

    aput-object v5, v3, v4

    .line 745
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 747
    :cond_0
    new-instance v4, Lcom/perm/kate/AudioFragment$23;

    invoke-direct {v4, p0, v3}, Lcom/perm/kate/AudioFragment$23;-><init>(Lcom/perm/kate/AudioFragment;[Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 753
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 754
    return-void
.end method

.method private showHideGenreButton()V
    .locals 4

    .prologue
    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 758
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showToCacheOptionsDialog()V
    .locals 8

    .prologue
    .line 709
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 710
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f070022

    invoke-virtual {v1, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 711
    const/4 v2, 0x2

    .line 712
    .local v2, "count":I
    iget-object v5, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_0

    .line 713
    add-int/lit8 v2, v2, 0x1

    .line 714
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_1

    .line 715
    add-int/lit8 v2, v2, 0x1

    .line 716
    :cond_1
    add-int/lit8 v0, v2, -0x1

    .line 717
    .local v0, "all_index":I
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 718
    .local v4, "items":[Ljava/lang/CharSequence;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 719
    add-int/lit8 v5, v3, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0702b0

    invoke-virtual {p0, v7}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    mul-int/lit8 v7, v3, 0x64

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 718
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    :cond_2
    add-int/lit8 v5, v2, -0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f07002d

    invoke-virtual {p0, v7}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 721
    new-instance v5, Lcom/perm/kate/AudioFragment$21;

    invoke-direct {v5, p0, v0}, Lcom/perm/kate/AudioFragment$21;-><init>(Lcom/perm/kate/AudioFragment;I)V

    invoke-virtual {v1, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 729
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 730
    return-void
.end method

.method private updateDragEnabled()V
    .locals 2

    .prologue
    .line 802
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->canReorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    .line 804
    :cond_0
    return-void
.end method

.method private uploadAudio(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .param p1, "inputStream1"    # Ljava/io/InputStream;
    .param p2, "inputStream2"    # Ljava/io/InputStream;
    .param p3, "url1"    # Ljava/lang/String;

    .prologue
    .line 473
    :try_start_0
    new-instance v8, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v8, v0}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 474
    .local v8, "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    new-instance v0, Lcom/perm/utils/PhotoUploader;

    const-string v4, "file"

    const-string v5, "audio.mp3"

    invoke-direct {v0, v4, v5}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v8}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object v10

    .line 475
    .local v10, "root":Lorg/json/JSONObject;
    const-string v0, "server"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, "server":Ljava/lang/String;
    const-string v0, "audio"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "audio":Ljava/lang/String;
    const-string v0, "hash"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "hash":Ljava/lang/String;
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    .end local v1    # "server":Ljava/lang/String;
    .end local v2    # "audio":Ljava/lang/String;
    .end local v3    # "hash":Ljava/lang/String;
    .end local v8    # "displayer":Lcom/perm/kate/UploadProgressDisplayerToNotification;
    .end local v10    # "root":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v9

    .line 480
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayError()V

    .line 481
    invoke-static {v9}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    invoke-static {v9}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 483
    :cond_0
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 484
    .end local v9    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v9, 0x7f0e038a

    const v8, 0x7f0e0388

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 319
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 320
    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    if-nez v1, :cond_0

    .line 321
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 325
    const v1, 0x7f0e0389

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    const v1, 0x7f0e01ce

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 328
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    :cond_2
    return v7
.end method

.method public getUploadServer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 436
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    const v1, 0x7f070489

    invoke-virtual {p0, v1}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    .line 437
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 438
    new-instance v0, Lcom/perm/kate/AudioFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$9;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 442
    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment$9;->start()V

    .line 443
    return-void
.end method

.method public moveToAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 6
    .param p1, "aid"    # Ljava/lang/Long;
    .param p2, "owner_id"    # Ljava/lang/Long;
    .param p3, "to_album_id"    # Ljava/lang/Long;

    .prologue
    .line 542
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 546
    const-wide/16 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 549
    .local v0, "gid":Ljava/lang/Long;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 550
    new-instance v1, Lcom/perm/kate/AudioFragment$13;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/perm/kate/AudioFragment$13;-><init>(Lcom/perm/kate/AudioFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 557
    invoke-virtual {v1}, Lcom/perm/kate/AudioFragment$13;->start()V

    goto :goto_0

    .line 548
    .end local v0    # "gid":Ljava/lang/Long;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "gid":Ljava/lang/Long;
    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 20
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 382
    invoke-super/range {p0 .. p3}, Lcom/perm/kate/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 383
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/AudioFragment;->fileUri:Landroid/net/Uri;

    .line 385
    const v16, 0x7f0704f9

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->displayToast(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->getUploadServer()V

    .line 388
    :cond_0
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 389
    const-string v16, "album_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/perm/kate/AudioFragment;->album_id:J

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->fillSource()V

    .line 391
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->showHideGenreButton()V

    .line 392
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->updateDragEnabled()V

    .line 393
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    .line 394
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 396
    :cond_1
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const/16 v16, 0xa

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 397
    const-string v16, "album_id"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 398
    .local v13, "to_album_id":Ljava/lang/Long;
    const-string v16, "owner_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 399
    .local v14, "owner_id":Ljava/lang/Long;
    const-string v16, "aid"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 400
    .local v4, "aid":Ljava/lang/Long;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v14, v13}, Lcom/perm/kate/AudioFragment;->moveToAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 402
    .end local v4    # "aid":Ljava/lang/Long;
    .end local v13    # "to_album_id":Ljava/lang/Long;
    .end local v14    # "owner_id":Ljava/lang/Long;
    :cond_2
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    const/16 v16, 0xb

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_3

    .line 403
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 406
    :cond_3
    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v16, 0x4

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    const/16 v16, 0x3

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 407
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    const-string v16, "audios"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 409
    .local v5, "audios":Ljava/lang/String;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_6

    .line 410
    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 411
    .local v8, "audios_array":[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_7

    .line 412
    aget-object v16, v8, v9

    const-string v17, "_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 413
    .local v11, "ids":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 414
    const/16 v16, 0x0

    aget-object v16, v11, v16

    const-string v17, "audio"

    const-string v18, ""

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 415
    .local v14, "owner_id":J
    const/16 v16, 0x1

    aget-object v16, v11, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 416
    .local v6, "audio_id":J
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [J

    const/16 v16, 0x0

    aput-wide v6, v10, v16

    const/16 v16, 0x1

    aput-wide v14, v10, v16

    .line 417
    .local v10, "id":[J
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    .end local v6    # "audio_id":J
    .end local v10    # "id":[J
    .end local v14    # "owner_id":J
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 421
    .end local v8    # "audios_array":[Ljava/lang/String;
    .end local v9    # "i":I
    .end local v11    # "ids":[Ljava/lang/String;
    :cond_6
    const-string v16, "audio_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 422
    .restart local v6    # "audio_id":J
    const-string v16, "owner_id"

    const-wide/16 v18, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 423
    .restart local v14    # "owner_id":J
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v10, v0, [J

    const/16 v16, 0x0

    aput-wide v6, v10, v16

    const/16 v16, 0x1

    aput-wide v14, v10, v16

    .line 424
    .restart local v10    # "id":[J
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v6    # "audio_id":J
    .end local v10    # "id":[J
    .end local v14    # "owner_id":J
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/perm/kate/AudioFragment;->addAudio(Ljava/util/ArrayList;)V

    .line 428
    .end local v5    # "audios":Ljava/lang/String;
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[J>;"
    :cond_8
    return-void
.end method

.method onAlbums()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/AudioFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 158
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 159
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 160
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 161
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 162
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    check-cast p1, Lcom/perm/kate/BaseActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    .line 163
    return-void
.end method

.method onAudioSearch()V
    .locals 3

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent_sa":Landroid/content/Intent;
    const-string v1, "com.perm.kate.search_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 377
    invoke-virtual {p0, v0}, Lcom/perm/kate/AudioFragment;->startActivity(Landroid/content/Intent;)V

    .line 378
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    .line 131
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.perm.kate.select_audio"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    .line 132
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "target_audio"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    .line 133
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    .line 134
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->fillSource()V

    .line 138
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 140
    if-nez p1, :cond_1

    .line 141
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 142
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 79
    const v2, 0x7f030031

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0e0090

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    .line 81
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 82
    const v2, 0x7f0e0091

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 83
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v3, Lcom/perm/kate/AudioFragment$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/AudioFragment$1;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v2, 0x7f0e00a3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    .line 90
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :cond_0
    const v2, 0x7f0e00a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    .line 93
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->genre_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v2, 0x7f0e008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    .line 95
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    check-cast v2, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v2, v3}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 97
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->updateDragEnabled()V

    .line 98
    new-instance v2, Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-boolean v4, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    iget-object v5, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    iget v6, p0, Lcom/perm/kate/AudioFragment;->source:I

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;ZLjava/util/HashSet;I)V

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 99
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-boolean v2, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    if-eqz v2, :cond_1

    .line 101
    const v2, 0x7f0e00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 102
    const v2, 0x7f0e019f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 103
    .local v0, "btn_save":Landroid/widget/Button;
    const v2, 0x7f07003a

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v2, v0}, Lcom/perm/kate/AudioListAdapter;->setSelectButton(Landroid/widget/Button;)V

    .line 123
    .end local v0    # "btn_save":Landroid/widget/Button;
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    .line 124
    return-object v1

    .line 107
    :cond_1
    const v2, 0x7f0e00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    .line 108
    const v2, 0x7f0e00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/AudioFragment$2;

    invoke-direct {v3, p0}, Lcom/perm/kate/AudioFragment$2;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v2, 0x7f0e00a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    new-instance v3, Lcom/perm/kate/AudioFragment$3;

    invoke-direct {v3, p0}, Lcom/perm/kate/AudioFragment$3;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lcom/perm/kate/AudioFragment;->setButtonsBg(Landroid/view/View;[I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x7f0e00a6
        0x7f0e00a8
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 309
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    .line 310
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    .line 311
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 312
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 313
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 314
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 342
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 365
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 344
    :sswitch_0
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perm/kate/AudioHelper;->requestAudio(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 347
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->onAlbums()V

    goto :goto_0

    .line 350
    :sswitch_2
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->onAudioSearch()V

    goto :goto_0

    .line 353
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/perm/kate/AudioFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 356
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showAddAudioDialog()V

    goto :goto_0

    .line 359
    :sswitch_5
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showToCacheOptionsDialog()V

    goto :goto_0

    .line 362
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->confirmAudiosToCache()V

    goto :goto_0

    .line 342
    :sswitch_data_0
    .sparse-switch
        0x7f0e01ce -> :sswitch_1
        0x7f0e0387 -> :sswitch_2
        0x7f0e0388 -> :sswitch_0
        0x7f0e0389 -> :sswitch_4
        0x7f0e038a -> :sswitch_5
        0x7f0e038b -> :sswitch_3
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 580
    return-void
.end method
