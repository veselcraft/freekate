.class public Lcom/perm/kate/AudioFragment;
.super Lcom/perm/kate/BaseFragment;
.source "AudioFragment.java"


# instance fields
.field access_key:Ljava/lang/String;

.field adapter:Lcom/perm/kate/AudioListAdapter;

.field addPlaylistCallback:Lcom/perm/kate/session/Callback;

.field album_id:J

.field private audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field audios:Ljava/util/ArrayList;

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

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private lv_audio_list:Landroid/widget/ListView;

.field private mid_long_value:J

.field private move_callback:Lcom/perm/kate/session/Callback;

.field private move_to_me:Z

.field notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

.field private page_size:I

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field playlist:Lcom/perm/kate/api/AudioAlbum;

.field private reorder_callback:Lcom/perm/kate/session/Callback;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private selectClickListener:Landroid/view/View$OnClickListener;

.field private select_audio:Z

.field private selectedAudios:Ljava/util/HashSet;

.field private selected_mode_for_delete:Z

.field private selected_mode_for_move:Z

.field source:I

.field private state:I

.field private target_audio:Ljava/lang/String;

.field private uid:Ljava/lang/Long;

.field upload_url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PrVEzhWJggsH890Yiu0-34oP5NU(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/perm/kate/AudioFragment;->state:I

    const/16 v0, 0xc8

    .line 66
    iput v0, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    const-wide/16 v1, -0x1

    .line 73
    iput-wide v1, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 87
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    .line 88
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    .line 89
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_move:Z

    .line 246
    new-instance v0, Lcom/perm/kate/AudioFragment$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/AudioFragment$5;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 284
    new-instance v0, Lcom/perm/kate/AudioFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$6;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .line 297
    new-instance v2, Lcom/perm/kate/AudioClickHelper;

    invoke-direct {v2, v1, v0}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 299
    new-instance v0, Lcom/perm/kate/AudioFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$7;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 336
    new-instance v0, Lcom/perm/kate/AudioFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$8;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 469
    new-instance v0, Lcom/perm/kate/AudioFragment$11;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$11;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->addPlaylistCallback:Lcom/perm/kate/session/Callback;

    .line 579
    new-instance v0, Lcom/perm/kate/AudioFragment$13;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$13;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_server:Lcom/perm/kate/session/Callback;

    .line 622
    new-instance v0, Lcom/perm/kate/AudioFragment$14;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$14;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    .line 646
    new-instance v0, Lcom/perm/kate/AudioFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$15;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 689
    new-instance v0, Lcom/perm/kate/AudioFragment$17;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$17;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    .line 711
    new-instance v0, Lcom/perm/kate/AudioFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$18;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->selectClickListener:Landroid/view/View$OnClickListener;

    .line 788
    new-instance v0, Lcom/perm/kate/AudioFragment$21;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$21;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_add:Lcom/perm/kate/session/Callback;

    .line 864
    new-instance v0, Lcom/perm/kate/AudioFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$22;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_OnClickListener:Landroid/view/View$OnClickListener;

    .line 938
    new-instance v0, Lcom/perm/kate/AudioFragment$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$24;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    .line 972
    new-instance v0, Lcom/perm/kate/AudioFragment$26;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$26;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->reorder_callback:Lcom/perm/kate/session/Callback;

    .line 1166
    new-instance v0, Lcom/perm/kate/AudioFragment$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$31;-><init>(Lcom/perm/kate/AudioFragment;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 1190
    new-instance v0, Lcom/perm/kate/AudioFragment$33;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$33;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->clearSelectedAudios()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/AudioFragment;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_move:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/perm/kate/AudioFragment;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/perm/kate/AudioFragment;->move_to_me:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/AudioFragment;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioFragment;->selectAudioForMove(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/AudioFragment;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/AudioFragment;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/perm/kate/AudioFragment;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/perm/kate/AudioFragment;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->notifyList()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/AudioFragment;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->validateToken(Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/AudioFragment;)Landroid/net/Uri;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->fileUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->moveSelectedAudios()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/AudioFragment;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment;->uploadAudio(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayError()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/AudioFragment;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->onFilterAudios(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->updateDragEnabled()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/AudioFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/perm/kate/AudioFragment;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->onActionAddAudio(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->callback_add:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showGenresDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/AudioFragment;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/AudioFragment;->changeGenre(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->deleteSelectedAudios()V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/AudioFragment;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment;->audioReorder(Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->reorder_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayDataInUI()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->sendToFriend()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/AudioFragment;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioFragment;->sendToWall(J)V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->repostToGroup()V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->sharePlaylist()V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->copyPlaylist()V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/AudioFragment;ILcom/perm/kate/session/Callback;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioFragment;->downloadAudios(ILcom/perm/kate/session/Callback;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/AudioFragment;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/AudioFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    return p0
.end method

.method static synthetic access$800(Lcom/perm/kate/AudioFragment;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/perm/kate/AudioFragment;->state:I

    return p0
.end method

.method static synthetic access$802(Lcom/perm/kate/AudioFragment;I)I
    .locals 0

    .line 52
    iput p1, p0, Lcom/perm/kate/AudioFragment;->state:I

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/AudioFragment;J)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/AudioFragment;->selectAudioForDelete(J)V

    return-void
.end method

.method private addAudio(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 768
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 769
    new-instance v0, Lcom/perm/kate/AudioFragment$20;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/AudioFragment$20;-><init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V

    .line 785
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private audioFromMyAudio()V
    .locals 4

    .line 751
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 752
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 753
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    .line 754
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 755
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private audioFromSearch()V
    .locals 3

    .line 759
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    .line 761
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x4

    .line 762
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private audioReorder(Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x1

    .line 959
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 960
    new-instance v0, Lcom/perm/kate/AudioFragment$25;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/perm/kate/AudioFragment$25;-><init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 969
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private canReorder()Z
    .locals 7

    .line 914
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    if-nez v0, :cond_1

    return v1

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-virtual {v0, v2, v5, v6}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    const-wide/16 v4, -0x3

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    goto :goto_0

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method private changeGenre(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 902
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    .line 903
    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    if-eq v0, p1, :cond_1

    .line 906
    iput-object p1, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 909
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    :cond_1
    return-void
.end method

.method private checkDeleteAudios()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    .line 1014
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_delete:Z

    const v2, 0x7f0f00ba

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

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

.method private checkMoveAudios()V
    .locals 3

    .line 1054
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto :goto_3

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_move:Z

    .line 1057
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->selected_mode_for_move:Z

    const v2, 0x7f0f0030

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

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

.method private clearSelectedAudios()V
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1020
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkDeleteAudios()V

    .line 1021
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkMoveAudios()V

    return-void
.end method

.method private copyPlaylist()V
    .locals 5

    .line 1129
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playlist:Lcom/perm/kate/api/AudioAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/api/AudioAlbum;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getLink(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1130
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private deleteSelectedAudios()V
    .locals 2

    .line 1026
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1027
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->clearSelectedAudios()V

    .line 1028
    new-instance v1, Lcom/perm/kate/AudioFragment$27;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/AudioFragment$27;-><init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V

    .line 1041
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 7

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->getDownloadStates()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 231
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 235
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v5, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchAudioInList(JJ)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    const-string v2, "af_fetchAudioInList"

    const/4 v3, 0x0

    .line 236
    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 240
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 241
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private displayDataInUI()V
    .locals 2

    .line 994
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/AudioFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/perm/kate/AudioFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayError()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-virtual {v0}, Lcom/perm/kate/notifications/PhotoUploadNotification;->displayError()V

    return-void
.end method

.method private downloadAudios(ILcom/perm/kate/session/Callback;)V
    .locals 11

    const/4 v0, 0x1

    .line 205
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 206
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    iget v3, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    move v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getAudioRecommendations(Ljava/lang/String;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 208
    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 209
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v6, 0x0

    iget v7, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move v8, p1

    move-object v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/session/Session;->getAudioRecommendations(Ljava/lang/String;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x3

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 211
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v6, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    iget v7, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move v8, p1

    move-object v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/session/Session;->getAudioPopular(Ljava/lang/Integer;IILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 213
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 214
    iget-wide v1, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    const/4 v0, 0x0

    :cond_3
    move-object v4, v0

    .line 216
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-lez v5, :cond_4

    .line 217
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    iget-object v8, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move v7, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 219
    :cond_4
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    neg-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v5, 0x0

    iget v6, p0, Lcom/perm/kate/AudioFragment;->page_size:I

    iget-object v8, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    move v7, p1

    move-object v9, p2

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/ArrayList;IILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private fillSource()V
    .locals 5

    .line 173
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/16 v0, 0xd

    .line 174
    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0

    .line 175
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 176
    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 v0, 0x6

    .line 178
    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 180
    iput v0, p0, Lcom/perm/kate/AudioFragment;->source:I

    :goto_0
    return-void
.end method

.method private getPlaylistById()V
    .locals 5

    .line 1146
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-wide/16 v2, -0x3

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const-wide/16 v2, -0x2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, -0x77359400

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 1151
    :cond_1
    new-instance v0, Lcom/perm/kate/AudioFragment$29;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioFragment$29;-><init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V

    .line 1158
    new-instance v1, Lcom/perm/kate/AudioFragment$30;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/AudioFragment$30;-><init>(Lcom/perm/kate/AudioFragment;Lcom/perm/kate/session/Callback;)V

    .line 1163
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private loadMore()V
    .locals 2

    const-string v0, "Kate.AudioFragment"

    const-string v1, "Loading more"

    .line 1180
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1181
    iput v0, p0, Lcom/perm/kate/AudioFragment;->state:I

    .line 1182
    new-instance v0, Lcom/perm/kate/AudioFragment$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$32;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private moveSelectedAudios()V
    .locals 7

    .line 1063
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1064
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->clearSelectedAudios()V

    .line 1065
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-boolean v2, p0, Lcom/perm/kate/AudioFragment;->move_to_me:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/AudioClickHelper;->showAlbumActivityForMove(Ljava/util/ArrayList;JLandroidx/fragment/app/Fragment;J)V

    return-void
.end method

.method private notifyList()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onActionAddAudio(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->audioFromSearch()V

    goto :goto_0

    .line 742
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->audioFromMyAudio()V

    :goto_0
    return-void
.end method

.method private onFilterAudios(Ljava/lang/String;)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 663
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 664
    iget-object p1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 666
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 667
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 668
    iget-object v3, v2, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 669
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 671
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 1

    const/4 v0, 0x1

    .line 195
    iput v0, p0, Lcom/perm/kate/AudioFragment;->state:I

    .line 196
    new-instance v0, Lcom/perm/kate/AudioFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$4;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private repostToGroup()V
    .locals 3

    .line 1139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_group"

    const/4 v2, 0x1

    .line 1141
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 1142
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private selectAudioForDelete(J)V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 1004
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1006
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1007
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkDeleteAudios()V

    return-void
.end method

.method private selectAudioForMove(J)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1049
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1050
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->checkMoveAudios()V

    return-void
.end method

.method private sendToFriend()V
    .locals 5

    .line 1109
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playlist:Lcom/perm/kate/api/AudioAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.perm.kate.only_members"

    .line 1112
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "com.perm.kate.new_message"

    .line 1113
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.perm.kate.photo_attachment"

    .line 1114
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sendToWall(J)V
    .locals 5

    .line 1119
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playlist:Lcom/perm/kate/api/AudioAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getAttachmentString(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_1

    const-string v2, "com.perm.kate.owner_id"

    .line 1123
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const-string p1, "com.perm.kate.audio_playlist"

    .line 1124
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private sharePlaylist()V
    .locals 5

    .line 1134
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playlist:Lcom/perm/kate/api/AudioAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/perm/kate/api/AudioAlbum;->getLink()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/api/AudioAlbum;->getLink(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1135
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->share(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private showAddAudioDialog()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0f045d

    .line 728
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f045f

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 729
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0181

    .line 730
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 731
    new-instance v2, Lcom/perm/kate/AudioFragment$19;

    invoke-direct {v2, p0}, Lcom/perm/kate/AudioFragment$19;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showGenresDialog()V
    .locals 5

    .line 872
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00fc

    .line 873
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 874
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f030002

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 875
    array-length v3, v1

    add-int/2addr v3, v2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const v3, 0x7f0f0046

    .line 876
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 877
    :goto_0
    array-length v3, v1

    if-ge v4, v3, :cond_0

    add-int/lit8 v3, v4, 0x1

    .line 878
    aget-object v4, v1, v4

    aput-object v4, v2, v3

    move v4, v3

    goto :goto_0

    .line 879
    :cond_0
    new-instance v1, Lcom/perm/kate/AudioFragment$23;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/AudioFragment$23;-><init>(Lcom/perm/kate/AudioFragment;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 885
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showHideGenreButton()V
    .locals 5

    const/4 v0, 0x0

    .line 889
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->genre_id:Ljava/lang/Integer;

    .line 890
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    const-wide/16 v2, -0x3

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 891
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 892
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    const v1, 0x7f0f0046

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showShareDialog()V
    .locals 5

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023a

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0411

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0412

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b4

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01db

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1076
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/AudioFragment$28;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/AudioFragment$28;-><init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1103
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1104
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1105
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateDragEnabled()V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 935
    check-cast v0, Lcom/mobeta/android/dslv/DragSortListView;

    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->canReorder()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mobeta/android/dslv/DragSortListView;->setDragEnabled(Z)V

    :cond_0
    return-void
.end method

.method private uploadAudio(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8

    .line 605
    :try_start_0
    new-instance v0, Lcom/perm/kate/UploadProgressDisplayerToNotification;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-direct {v0, v1}, Lcom/perm/kate/UploadProgressDisplayerToNotification;-><init>(Lcom/perm/kate/notifications/PhotoUploadNotification;)V

    .line 606
    new-instance v1, Lcom/perm/utils/PhotoUploader;

    const-string v2, "file"

    const-string v3, "audio.mp3"

    invoke-direct {v1, v2, v3}, Lcom/perm/utils/PhotoUploader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/perm/utils/PhotoUploader;->upload(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Lcom/perm/utils/UploadProgressListener;)Lorg/json/JSONObject;

    move-result-object p3

    .line 607
    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 608
    invoke-static {p2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    const-string p1, "server"

    .line 609
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "audio"

    .line 610
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "hash"

    .line 611
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->saveAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 614
    :try_start_1
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayError()V

    .line 615
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 616
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 617
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 619
    throw p1
.end method

.method private validateToken(Ljava/lang/ref/WeakReference;)Z
    .locals 4

    const/4 v0, 0x0

    .line 479
    :try_start_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/perm/kate/session/Session;->getInstanceIdToken(Ljava/lang/ref/WeakReference;Z)Ljava/lang/String;

    move-result-object p1

    .line 481
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Kate.AudioFragment"

    if-eqz v1, :cond_0

    :try_start_1
    const-string p1, "Empty iid token"

    .line 482
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 486
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    invoke-virtual {v1, p1}, Lcom/perm/kate/api/Api;->refreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "Empty new token"

    .line 488
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 492
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v1, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, v1, Lcom/perm/kate/api/Api;->access_token:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "Equals token"

    .line 493
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 499
    :cond_2
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1, p1}, Lcom/perm/kate/session/Session;->setAccessToken(Ljava/lang/String;)V

    .line 500
    sget-object p1, Lcom/perm/kate/KApplication;->accountManager:Lcom/perm/kate/account/AccountManager;

    invoke-virtual {p1}, Lcom/perm/kate/account/AccountManager;->saveAccounts()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v2

    :catchall_0
    move-exception p1

    .line 503
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 504
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 505
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    return v0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 11

    .line 380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 381
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 382
    iget-boolean v0, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    const v1, 0x7f090400

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 383
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_1

    const v3, 0x7f090032

    .line 387
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 388
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const v3, 0x7f09003c

    .line 389
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 390
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 393
    :cond_2
    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    const-wide/16 v3, -0x2

    const-wide/16 v5, -0x3

    const-wide/16 v7, -0x1

    if-nez v1, :cond_3

    iget-wide v9, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_3

    cmp-long v1, v9, v5

    if-eqz v1, :cond_3

    cmp-long v1, v9, v3

    if-eqz v1, :cond_3

    const/16 v1, 0x65

    const/16 v9, 0x3e8

    const v10, 0x7f0f0035

    .line 395
    invoke-interface {p1, v2, v1, v9, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 396
    :cond_3
    iget-wide v9, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    cmp-long v1, v9, v7

    if-eqz v1, :cond_4

    cmp-long v1, v9, v5

    if-eqz v1, :cond_4

    cmp-long v1, v9, v3

    if-eqz v1, :cond_4

    const/16 v1, 0x66

    const/16 v3, 0x3ed

    const v4, 0x7f0f02ba

    .line 397
    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    const/16 v1, 0x64

    const/16 v3, 0x3f2

    const v4, 0x7f0f030c

    .line 400
    invoke-interface {p1, v2, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v0
.end method

.method public getUploadServer()V
    .locals 3

    .line 568
    new-instance v0, Lcom/perm/kate/notifications/PhotoUploadNotification;

    const v1, 0x7f0f0518

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f005b

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 569
    invoke-virtual {v0, v1, v1, v2}, Lcom/perm/kate/notifications/PhotoUploadNotification;->display(IIZ)V

    .line 570
    new-instance v0, Lcom/perm/kate/AudioFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$12;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 574
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 525
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    if-ne v0, p1, :cond_0

    .line 527
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/AudioFragment;->fileUri:Landroid/net/Uri;

    const v2, 0x7f0f057e

    .line 528
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->getUploadServer()V

    :cond_0
    if-ne p2, v1, :cond_1

    const/16 v2, 0xb

    if-ne v2, p1, :cond_1

    .line 532
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    .line 533
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    :cond_1
    if-ne p2, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 536
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "audios"

    .line 537
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 538
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, ","

    .line 539
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 540
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_4

    .line 541
    aget-object v6, v3, v5

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 542
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    .line 543
    aget-object v7, v6, v4

    const-string v9, "audio"

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 544
    aget-object v6, v6, v0

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-array v8, v8, [J

    aput-wide v6, v8, v4

    aput-wide v9, v8, v0

    .line 546
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 550
    :cond_4
    invoke-direct {p0, v2}, Lcom/perm/kate/AudioFragment;->addAudio(Ljava/util/ArrayList;)V

    :cond_5
    if-ne p2, v1, :cond_6

    const/16 v0, 0xc

    if-ne p1, v0, :cond_6

    const-wide/16 v2, 0x0

    const-string v0, "group_id"

    .line 553
    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    mul-long v2, v2, v4

    .line 554
    invoke-direct {p0, v2, v3}, Lcom/perm/kate/AudioFragment;->sendToWall(J)V

    :cond_6
    if-ne p2, v1, :cond_7

    const/16 p2, 0xd

    if-ne p2, p1, :cond_7

    .line 557
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_7
    return-void
.end method

.method onAlbums()V
    .locals 3

    .line 511
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 513
    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    const-string v2, "select_audio"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xd

    .line 514
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 185
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 186
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 187
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_server:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 188
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->callback_save_audio:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 189
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->move_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 190
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->addPlaylistCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 191
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    check-cast p1, Lcom/perm/kate/BaseActivity;

    iput-object p1, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    return-void
.end method

.method onAudioSearch()V
    .locals 3

    .line 518
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.search_audio"

    const/4 v2, 0x1

    .line 519
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 520
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 149
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "playlist_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AudioFragment;->album_id:J

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "access_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->access_key:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.select_audio"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "target_audio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->target_audio:Ljava/lang/String;

    .line 155
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    .line 156
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 157
    iget-wide v0, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/perm/kate/AudioFragment;->mid_long_value:J

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/perm/kate/AudioFragment;->is_me:Z

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->fillSource()V

    .line 162
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    if-nez p1, :cond_2

    .line 165
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    .line 169
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->getPlaylistById()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0033

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090132

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    .line 95
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 97
    new-instance p3, Lcom/perm/kate/AudioFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/AudioFragment$1;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090139

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->ll_btn_genre:Landroid/widget/FrameLayout;

    .line 104
    sget-boolean p3, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz p3, :cond_0

    .line 105
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p3

    invoke-virtual {p3}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const p2, 0x7f09007c

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->btn_genre:Landroid/widget/Button;

    .line 107
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->genre_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09020a

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    .line 109
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    iget-object p2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 111
    iget-object p2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    check-cast p2, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 112
    iget-object p2, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    check-cast p2, Lcom/mobeta/android/dslv/DragSortListView;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Lcom/mobeta/android/dslv/DragSortListView;->setMaxScrollSpeed(F)V

    .line 113
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->updateDragEnabled()V

    .line 114
    new-instance p2, Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-boolean v1, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    iget-object v2, p0, Lcom/perm/kate/AudioFragment;->selectedAudios:Ljava/util/HashSet;

    iget v3, p0, Lcom/perm/kate/AudioFragment;->source:I

    invoke-direct {p2, p3, v1, v2, v3}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;ZLjava/util/HashSet;I)V

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 115
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-boolean p2, p0, Lcom/perm/kate/AudioFragment;->select_audio:Z

    if-eqz p2, :cond_1

    const p2, 0x7f09014c

    .line 117
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    const p2, 0x7f090090

    .line 118
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f0f0051

    .line 119
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 120
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object p3, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p3, p2}, Lcom/perm/kate/AudioListAdapter;->setSelectButton(Landroid/widget/Button;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0901d0

    .line 123
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->ll_delete_region:Landroid/widget/LinearLayout;

    const p2, 0x7f090077

    .line 124
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/AudioFragment$2;

    invoke-direct {p3, p0}, Lcom/perm/kate/AudioFragment$2;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090076

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment;->btn_delete:Landroid/widget/Button;

    .line 131
    new-instance p3, Lcom/perm/kate/AudioFragment$3;

    invoke-direct {p3, p0}, Lcom/perm/kate/AudioFragment$3;-><init>(Lcom/perm/kate/AudioFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 140
    fill-array-data p2, :array_0

    invoke-static {p1, p2}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    .line 142
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->displayData()V

    .line 143
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showHideGenreButton()V

    return-object p1

    :array_0
    .array-data 4
        0x7f090141
        0x7f090142
    .end array-data
.end method

.method public onDestroy()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/perm/kate/AudioFragment;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->lv_audio_list:Landroid/widget/ListView;

    .line 370
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    .line 371
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 372
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 373
    iget-object v1, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v1}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    .line 374
    iput-object v0, p0, Lcom/perm/kate/AudioFragment;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 375
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 414
    :sswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/perm/kate/AudioHelper;->requestAudio(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    return v1

    .line 438
    :sswitch_1
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->onAudioSearch()V

    return v1

    .line 417
    :sswitch_2
    invoke-virtual {p0}, Lcom/perm/kate/AudioFragment;->onAlbums()V

    return v1

    .line 444
    :sswitch_3
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showAddAudioDialog()V

    return v1

    .line 463
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->showShareDialog()V

    return v1

    .line 453
    :sswitch_5
    new-instance v0, Lcom/perm/kate/AudioFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/AudioFragment$10;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 460
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 420
    :sswitch_6
    new-instance p1, Lcom/perm/kate/AudioFragment$9;

    invoke-direct {p1, p0}, Lcom/perm/kate/AudioFragment$9;-><init>(Lcom/perm/kate/AudioFragment;)V

    .line 435
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return v1

    .line 466
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_6
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x7f090032 -> :sswitch_3
        0x7f09003c -> :sswitch_2
        0x7f0902be -> :sswitch_1
        0x7f090400 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/perm/kate/AudioFragment;->refresh()V

    return-void
.end method

.method public removeFromAlbum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 679
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 680
    new-instance v0, Lcom/perm/kate/AudioFragment$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/perm/kate/AudioFragment$16;-><init>(Lcom/perm/kate/AudioFragment;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 686
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method
