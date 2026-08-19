.class public Lcom/perm/kate/DocsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "DocsFragment.java"


# instance fields
.field REQUEST_FROM_EXTERNAL_FILEMANAGER:I

.field REQUEST_FROM_INTERNAL_FILEMANAGER:I

.field private btn_clear:Landroid/widget/ImageButton;

.field private callback:Lcom/perm/kate/session/Callback;

.field private current_filter:Ljava/lang/CharSequence;

.field private cursor:Landroid/database/Cursor;

.field private docClickHelperCallback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

.field private docsIsDisabled:Z

.field private filterText:Landroid/widget/EditText;

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private list:Landroid/widget/ListView;

.field private load_more_callback:Lcom/perm/kate/session/Callback;

.field private offset:J

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field owner_id:Ljava/lang/Long;

.field private page_size:J

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field select_mode:Z

.field private state:I

.field protected uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    const/4 v2, 0x0

    .line 52
    iput-boolean v2, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    const/4 v3, -0x1

    .line 54
    iput v3, p0, Lcom/perm/kate/DocsFragment;->state:I

    const-wide/16 v3, 0xc8

    .line 60
    iput-wide v3, p0, Lcom/perm/kate/DocsFragment;->page_size:J

    .line 61
    iput-wide v0, p0, Lcom/perm/kate/DocsFragment;->offset:J

    .line 113
    new-instance v0, Lcom/perm/kate/DocsFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DocsFragment$3;-><init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    const-string v0, ""

    .line 138
    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 164
    new-instance v0, Lcom/perm/kate/DocsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$5;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 219
    iput v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    const/4 v0, 0x1

    .line 220
    iput v0, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    .line 312
    new-instance v0, Lcom/perm/kate/DocsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$8;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 326
    new-instance v0, Lcom/perm/kate/DocsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$9;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->docClickHelperCallback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    .line 335
    new-instance v0, Lcom/perm/kate/DocsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$10;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    .line 348
    new-instance v0, Lcom/perm/kate/DocsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$11;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 379
    new-instance v0, Lcom/perm/kate/DocsFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$12;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 405
    new-instance v0, Lcom/perm/kate/DocsFragment$14;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DocsFragment$14;-><init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DocsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/DocsFragment;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/perm/kate/DocsFragment;->page_size:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/DocsFragment;)Landroid/widget/ListView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/DocsFragment;)Landroid/widget/ImageButton;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->loadMore()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->load_more_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/DocsFragment;)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/perm/kate/DocsFragment;->offset:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/perm/kate/DocsFragment;J)J
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/perm/kate/DocsFragment;->offset:J

    return-wide p1
.end method

.method static synthetic access$314(Lcom/perm/kate/DocsFragment;J)J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/perm/kate/DocsFragment;->offset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/perm/kate/DocsFragment;->offset:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/DocsFragment;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/perm/kate/DocsFragment;->state:I

    return p0
.end method

.method static synthetic access$502(Lcom/perm/kate/DocsFragment;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/perm/kate/DocsFragment;->state:I

    return p1
.end method

.method static synthetic access$602(Lcom/perm/kate/DocsFragment;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/perm/kate/DocsFragment;)Ljava/lang/CharSequence;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/DocsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/DocsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/perm/kate/DocsFragment;->docClickHelperCallback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    return-object p0
.end method

.method private displayData()V
    .locals 6

    .line 142
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 143
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    const-string v3, "df_fetchDocs"

    .line 144
    invoke-static {v0, v1, v3, v2}, Lcom/perm/kate/Helper;->reportDbReadDuration(JLjava/lang/String;Landroid/database/Cursor;)V

    .line 145
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 146
    new-instance v0, Lcom/perm/kate/DocsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/DocsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 147
    new-instance v1, Lcom/perm/kate/DocsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/DocsFragment$4;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 156
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 159
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static internalFileManagerEnabled()Z
    .locals 3

    .line 374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 376
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "key_internal_filemanager"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private loadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 393
    iput v0, p0, Lcom/perm/kate/DocsFragment;->state:I

    .line 394
    new-instance v0, Lcom/perm/kate/DocsFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$13;-><init>(Lcom/perm/kate/DocsFragment;)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput v0, p0, Lcom/perm/kate/DocsFragment;->state:I

    .line 104
    new-instance v0, Lcom/perm/kate/DocsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$2;-><init>(Lcom/perm/kate/DocsFragment;)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DocsFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/DocsFragment$6;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private uploadDoc()V
    .locals 4

    .line 223
    invoke-static {}, Lcom/perm/kate/DocsFragment;->internalFileManagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/FileManager;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    invoke-static {v0, p0, v1, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget v1, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 231
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 232
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 198
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    .line 199
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 204
    iget-boolean v0, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7f090401

    .line 205
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 241
    iget v0, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    if-ne p1, v0, :cond_0

    .line 242
    new-instance p1, Ljava/io/File;

    const-string p2, "path"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0

    .line 244
    :cond_0
    iget v0, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    if-ne p1, v0, :cond_1

    .line 245
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 248
    invoke-virtual {p0, p2}, Lcom/perm/kate/DocsFragment;->uploadConfirm(Landroid/net/Uri;)V

    :cond_2
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 84
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "select"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/DocsFragment;->select_mode:Z

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "shared_content_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->refreshInThread()V

    :cond_0
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, v0}, Lcom/perm/kate/DocsFragment;->uploadConfirm(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0068

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090132

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    .line 67
    iget-object p3, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p2, 0x7f0900be

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcom/perm/kate/DocsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 69
    new-instance p3, Lcom/perm/kate/DocsFragment$1;

    invoke-direct {p3, p0}, Lcom/perm/kate/DocsFragment$1;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0900f7

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    .line 75
    iget-object p3, p0, Lcom/perm/kate/DocsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object p2, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/DocsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 77
    iget-object p2, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/DocsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->displayData()V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 366
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 211
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090401

    if-eq v0, v1, :cond_0

    .line 216
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->uploadDoc()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 345
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->refreshInThread()V

    return-void
.end method

.method uploadConfirm(Landroid/net/Uri;)V
    .locals 24

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "file"

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v7, v6

    const/4 v8, 0x1

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v7, v0

    const/4 v8, 0x0

    :goto_0
    if-eqz v7, :cond_2

    :try_start_1
    const-string v0, "_display_name"

    .line 265
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v9, "_size"

    .line 266
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, -0x1

    if-le v9, v10, :cond_1

    if-le v0, v10, :cond_1

    .line 269
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 270
    :try_start_2
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v11, v0

    goto :goto_2

    :cond_1
    move-wide v9, v2

    move-object v0, v6

    const/4 v8, 0x1

    :goto_1
    move-wide v10, v9

    move v9, v8

    move-object v8, v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v11, v0

    move-wide v9, v2

    :goto_2
    move-object v0, v6

    move-object v12, v0

    goto :goto_6

    :cond_2
    move-wide v10, v2

    move-object v8, v6

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_3

    .line 277
    :try_start_3
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 278
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 279
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v12, v6

    :goto_4
    move-wide/from16 v22, v10

    move-object v11, v0

    move-object v0, v8

    move v8, v9

    move-wide/from16 v9, v22

    goto :goto_6

    :cond_3
    move-object v12, v6

    :goto_5
    if-eqz v7, :cond_5

    .line 286
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v11, v0

    move-wide v9, v2

    move-object v0, v6

    move-object v7, v0

    move-object v12, v7

    const/4 v8, 0x0

    .line 282
    :goto_6
    :try_start_5
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 283
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v7, :cond_4

    .line 286
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-wide v10, v9

    move v9, v8

    move-object v8, v0

    :cond_5
    :goto_7
    if-eqz v8, :cond_6

    move-object v0, v8

    goto :goto_8

    :cond_6
    const-string v0, "file1.bin"

    :goto_8
    if-eqz v9, :cond_7

    if-eqz v12, :cond_7

    move-object v15, v12

    goto :goto_9

    :cond_7
    move-object v15, v6

    :goto_9
    if-eqz v8, :cond_8

    cmp-long v7, v10, v2

    if-lez v7, :cond_8

    .line 291
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f057c

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v4

    aput-object v2, v7, v5

    .line 292
    invoke-virtual {v1, v3, v7}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 293
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0581

    .line 294
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0f05a7

    new-instance v4, Lcom/perm/kate/DocsFragment$7;

    move-object/from16 v5, p1

    invoke-direct {v4, v1, v15, v5, v0}, Lcom/perm/kate/DocsFragment$7;-><init>(Lcom/perm/kate/DocsFragment;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f037a

    .line 302
    invoke-virtual {v0, v2, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_a

    :cond_8
    move-object/from16 v5, p1

    .line 306
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "can\'t get name and size file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 307
    new-instance v2, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    iget-object v3, v1, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    iget-object v3, v1, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/16 v21, 0x0

    move-object v13, v2

    move-object/from16 v16, p1

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    invoke-direct/range {v13 .. v21}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    const v0, 0x7f0f057e

    .line 308
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :goto_a
    return-void

    :catchall_5
    move-exception v0

    if-eqz v7, :cond_9

    .line 286
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_9
    throw v0
.end method
