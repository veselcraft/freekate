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

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field owner_id:Ljava/lang/Long;

.field select_mode:Z

.field protected uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 47
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    .line 51
    iput-boolean v2, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    .line 97
    new-instance v0, Lcom/perm/kate/DocsFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DocsFragment$3;-><init>(Lcom/perm/kate/DocsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    .line 143
    new-instance v0, Lcom/perm/kate/DocsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$5;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 198
    iput v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    .line 291
    new-instance v0, Lcom/perm/kate/DocsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$8;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 305
    new-instance v0, Lcom/perm/kate/DocsFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$9;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->docClickHelperCallback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    .line 314
    new-instance v0, Lcom/perm/kate/DocsFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$10;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    .line 327
    new-instance v0, Lcom/perm/kate/DocsFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$11;-><init>(Lcom/perm/kate/DocsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DocsFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$302(Lcom/perm/kate/DocsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/DocsFragment;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Lcom/perm/kate/DocsFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/DocsFragment;->current_filter:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/DocsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/perm/kate/DocsFragment;)Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->docClickHelperCallback:Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/DocsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/DocsFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->btn_clear:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 123
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v3, ""

    invoke-virtual {v2, v4, v5, v3}, Lcom/perm/kate/db/DataHelper;->fetchDocs(JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    .line 124
    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/perm/kate/DocsFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 125
    new-instance v0, Lcom/perm/kate/DocsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/DocsFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/DocsAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 126
    .local v0, "adapter":Lcom/perm/kate/DocsAdapter;
    new-instance v2, Lcom/perm/kate/DocsFragment$4;

    invoke-direct {v2, p0}, Lcom/perm/kate/DocsFragment$4;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {v0, v2}, Lcom/perm/kate/DocsAdapter;->setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V

    .line 135
    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "adapter":Lcom/perm/kate/DocsAdapter;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 138
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static internalFileManagerEnabled()Z
    .locals 3

    .prologue
    .line 353
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 355
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_internal_filemanager"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/perm/kate/DocsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/DocsFragment$2;-><init>(Lcom/perm/kate/DocsFragment;)V

    .line 94
    invoke-virtual {v0}, Lcom/perm/kate/DocsFragment$2;->start()V

    .line 95
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DocsFragment$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/DocsFragment$6;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private uploadDoc()V
    .locals 6

    .prologue
    .line 202
    invoke-static {}, Lcom/perm/kate/DocsFragment;->internalFileManagerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-class v5, Lcom/perm/kate/FileManager;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v4, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    invoke-static {v2, p0, v3, v4}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    iget v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    invoke-virtual {p0, v1, v2}, Lcom/perm/kate/DocsFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v1    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 211
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 178
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 183
    iget-boolean v1, p0, Lcom/perm/kate/DocsFragment;->docsIsDisabled:Z

    if-eqz v1, :cond_0

    .line 184
    const v1, 0x7f0e038c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 218
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "uri":Landroid/net/Uri;
    iget v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_INTERNAL_FILEMANAGER:I

    if-ne p1, v2, :cond_2

    .line 221
    new-instance v0, Ljava/io/File;

    const-string v2, "path"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 226
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 227
    invoke-virtual {p0, v1}, Lcom/perm/kate/DocsFragment;->uploadConfirm(Landroid/net/Uri;)V

    .line 229
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    return-void

    .line 223
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    iget v2, p0, Lcom/perm/kate/DocsFragment;->REQUEST_FROM_EXTERNAL_FILEMANAGER:I

    if-ne p1, v2, :cond_0

    .line 224
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/DocsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "select"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/DocsFragment;->select_mode:Z

    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->refreshInThread()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const v1, 0x7f03005e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 58
    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/perm/kate/DocsFragment;->btn_clear:Landroid/widget/ImageButton;

    .line 59
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->btn_clear:Landroid/widget/ImageButton;

    new-instance v2, Lcom/perm/kate/DocsFragment$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/DocsFragment$1;-><init>(Lcom/perm/kate/DocsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f0e0128

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    .line 65
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/DocsFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->displayData()V

    .line 68
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/perm/kate/DocsFragment;->filterText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/DocsFragment;->filterTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 348
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 349
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 192
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->uploadDoc()V

    .line 193
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e038c
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/perm/kate/DocsFragment;->refreshInThread()V

    .line 325
    return-void
.end method

.method uploadConfirm(Landroid/net/Uri;)V
    .locals 24
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 232
    const/16 v23, 0x0

    .line 233
    .local v23, "use_file":Z
    const-wide/16 v20, 0x0

    .line 234
    .local v20, "size_long":J
    const/4 v14, 0x0

    .line 235
    .local v14, "_filename":Ljava/lang/String;
    const/16 v17, 0x0

    .line 236
    .local v17, "returnCursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 238
    .local v12, "_file":Ljava/io/File;
    :try_start_0
    const-string v2, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    const/16 v23, 0x1

    .line 243
    :goto_0
    if-eqz v17, :cond_4

    .line 244
    const-string v2, "_display_name"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 245
    .local v16, "nameIndex":I
    const-string v2, "_size"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 246
    .local v19, "sizeIndex":I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 247
    const/4 v2, -0x1

    move/from16 v0, v19

    if-le v0, v2, :cond_3

    const/4 v2, -0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_3

    .line 248
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 249
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 255
    .end local v16    # "nameIndex":I
    .end local v19    # "sizeIndex":I
    :goto_1
    if-eqz v23, :cond_0

    .line 256
    new-instance v13, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v12    # "_file":Ljava/io/File;
    .local v13, "_file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 258
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    move-object v12, v13

    .line 264
    .end local v13    # "_file":Ljava/io/File;
    .restart local v12    # "_file":Ljava/io/File;
    :cond_0
    if-eqz v17, :cond_1

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_1
    :goto_2
    if-eqz v14, :cond_6

    move-object v7, v14

    .line 268
    .local v7, "filename":Ljava/lang/String;
    :goto_3
    if-eqz v23, :cond_7

    if-eqz v12, :cond_7

    move-object v5, v12

    .line 269
    .local v5, "file":Ljava/io/File;
    :goto_4
    if-eqz v14, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-lez v2, :cond_8

    .line 270
    invoke-static/range {v20 .. v21}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v18

    .line 271
    .local v18, "size":Ljava/lang/String;
    const v2, 0x7f0704f7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v18, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/DocsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 272
    .local v15, "message":Ljava/lang/String;
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0704fc

    .line 273
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {v2, v15}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/DocsFragment$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v5, v1, v7}, Lcom/perm/kate/DocsFragment$7;-><init>(Lcom/perm/kate/DocsFragment;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 281
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 289
    .end local v15    # "message":Ljava/lang/String;
    .end local v18    # "size":Ljava/lang/String;
    :goto_5
    return-void

    .line 241
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v17

    goto/16 :goto_0

    .line 251
    .restart local v16    # "nameIndex":I
    .restart local v19    # "sizeIndex":I
    :cond_3
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 254
    .end local v16    # "nameIndex":I
    .end local v19    # "sizeIndex":I
    :cond_4
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 260
    :catch_0
    move-exception v22

    .line 261
    .local v22, "th":Ljava/lang/Throwable;
    :goto_6
    :try_start_3
    invoke-static/range {v22 .. v22}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    if-eqz v17, :cond_1

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 264
    .end local v22    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v17, :cond_5

    .line 265
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 267
    :cond_6
    const-string v7, "file1.bin"

    goto/16 :goto_3

    .line 268
    .restart local v7    # "filename":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 285
    .restart local v5    # "file":Ljava/io/File;
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "can\'t get name and size file"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 286
    new-instance v3, Lcom/perm/kate/photoupload/DocUploader;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/DocsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/DocsFragment;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/DocsFragment;->uploadCallback:Lcom/perm/kate/photoupload/DocUploadCallback;

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-direct/range {v3 .. v11}, Lcom/perm/kate/photoupload/DocUploader;-><init>(Landroid/app/Activity;Ljava/io/File;Landroid/net/Uri;Ljava/lang/String;JLcom/perm/kate/photoupload/DocUploadCallback;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/perm/kate/photoupload/DocUploader;->upload()V

    .line 287
    const v2, 0x7f0704f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/DocsFragment;->displayToast(I)V

    goto :goto_5

    .line 264
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    .end local v12    # "_file":Ljava/io/File;
    .restart local v13    # "_file":Ljava/io/File;
    :catchall_1
    move-exception v2

    move-object v12, v13

    .end local v13    # "_file":Ljava/io/File;
    .restart local v12    # "_file":Ljava/io/File;
    goto :goto_7

    .line 260
    .end local v12    # "_file":Ljava/io/File;
    .restart local v13    # "_file":Ljava/io/File;
    :catch_1
    move-exception v22

    move-object v12, v13

    .end local v13    # "_file":Ljava/io/File;
    .restart local v12    # "_file":Ljava/io/File;
    goto :goto_6
.end method
