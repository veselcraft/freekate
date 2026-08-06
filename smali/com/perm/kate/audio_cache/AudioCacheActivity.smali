.class public Lcom/perm/kate/audio_cache/AudioCacheActivity;
.super Lcom/perm/kate/BaseActivity;
.source "AudioCacheActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/AudioListAdapter;

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

.field dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field last_notify:J

.field private list:Landroid/widget/ListView;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field serviceCallback:Lcom/perm/kate/audio_cache/AudioCacheService$Callback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->last_notify:J

    .line 91
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$2;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->serviceCallback:Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    .line 119
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$3;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 131
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$4;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 161
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$5;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    .line 168
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 170
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 248
    new-instance v0, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$8;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Lcom/perm/kate/AudioListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->displayNewData()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/audio_cache/AudioCacheActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->onFilterAudios(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->clearCache()V

    return-void
.end method

.method private clearCache()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 245
    invoke-static {}, Lcom/perm/kate/audio_cache/AudioCache;->clearInThread()V

    .line 246
    return-void
.end method

.method private confirmClearCache()V
    .locals 5

    .prologue
    .line 226
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v1, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/audio_cache/AudioCacheActivity$7;

    invoke-direct {v4, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$7;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    .line 228
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 233
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 234
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 235
    .local v0, "alert":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 236
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 237
    return-void
.end method

.method private displayNewData()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Lcom/perm/kate/db/DataHelper;->getDownloadStates()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/AudioListAdapter;->downloadStates:Ljava/util/HashMap;

    .line 77
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Lcom/perm/kate/db/DataHelper;->getDownloads()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    .line 78
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 79
    return-void
.end method

.method private onFilterAudios(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 187
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v3, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 189
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v1, "filtred_audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 191
    .local v0, "a":Lcom/perm/kate/api/Audio;
    iget-object v3, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 192
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 195
    .end local v0    # "a":Lcom/perm/kate/api/Audio;
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v2, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    const v2, 0x7f070166

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 212
    :cond_0
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->setContentView(I)V

    .line 43
    const v1, 0x7f07003e

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->setupPlayerButton()V

    .line 45
    invoke-virtual {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->setupMenuButton()V

    .line 47
    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->list:Landroid/widget/ListView;

    .line 48
    const v1, 0x7f0e0094

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "noData":Landroid/widget/TextView;
    const v1, 0x7f07031a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 52
    const v1, 0x7f0e0090

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->filterText:Landroid/widget/EditText;

    .line 53
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->filterText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 54
    const v1, 0x7f0e0091

    invoke-virtual {p0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    .line 55
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->btn_clear:Landroid/widget/ImageButton;

    new-instance v2, Lcom/perm/kate/audio_cache/AudioCacheActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity$1;-><init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    new-instance v1, Lcom/perm/kate/AudioListAdapter;

    const/16 v2, 0xe

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/AudioListAdapter;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    .line 62
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perm/kate/AudioListAdapter;->displayDownloadStates:Z

    .line 63
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->displayNewData()V

    .line 67
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->list:Landroid/widget/ListView;

    check-cast v1, Lcom/mobeta/android/dslv/DragSortListView;

    iget-object v2, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->dropListener:Lcom/mobeta/android/dslv/DragSortListView$DropListener;

    invoke-virtual {v1, v2}, Lcom/mobeta/android/dslv/DragSortListView;->setDropListener(Lcom/mobeta/android/dslv/DragSortListView$DropListener;)V

    .line 70
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->serviceCallback:Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    invoke-static {v1}, Lcom/perm/kate/audio_cache/AudioCacheService;->addCallback(Lcom/perm/kate/audio_cache/AudioCacheService$Callback;)V

    .line 71
    iget-object v1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v1}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 72
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 202
    invoke-virtual {p0, p1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->serviceCallback:Lcom/perm/kate/audio_cache/AudioCacheService$Callback;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheService;->removeCallback(Lcom/perm/kate/audio_cache/AudioCacheService$Callback;)V

    .line 85
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 86
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 219
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->confirmClearCache()V

    .line 220
    const/4 v0, 0x1

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
