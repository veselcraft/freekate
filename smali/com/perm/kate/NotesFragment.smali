.class public Lcom/perm/kate/NotesFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NotesFragment.java"


# instance fields
.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_delete:Lcom/perm/kate/session/Callback;

.field cursor:Landroid/database/Cursor;

.field private list:Landroid/widget/ListView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field user_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    .line 74
    new-instance v0, Lcom/perm/kate/NotesFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotesFragment$2;-><init>(Lcom/perm/kate/NotesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 108
    new-instance v0, Lcom/perm/kate/NotesFragment$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotesFragment$3;-><init>(Lcom/perm/kate/NotesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 154
    new-instance v0, Lcom/perm/kate/NotesFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotesFragment$5;-><init>(Lcom/perm/kate/NotesFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 193
    new-instance v0, Lcom/perm/kate/NotesFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotesFragment$7;-><init>(Lcom/perm/kate/NotesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/NotesFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/NotesFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NotesFragment;J)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NotesFragment;->deleteNote(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private deleteNote(J)V
    .locals 1

    .line 182
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteNote(J)Z

    .line 183
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->requeryOnUiThread()V

    .line 185
    new-instance v0, Lcom/perm/kate/NotesFragment$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/NotesFragment$6;-><init>(Lcom/perm/kate/NotesFragment;J)V

    .line 190
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayData()V
    .locals 4

    .line 97
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchNotes(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    .line 98
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 99
    new-instance v0, Lcom/perm/kate/NotesAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NotesAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 100
    iget-object v1, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 102
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 103
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refreshOnThread()V
    .locals 1

    .line 53
    new-instance v0, Lcom/perm/kate/NotesFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotesFragment$1;-><init>(Lcom/perm/kate/NotesFragment;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NotesFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/NotesFragment$4;-><init>(Lcom/perm/kate/NotesFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showNewNoteActivity()V
    .locals 3

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const v0, 0x7f0900e2

    .line 132
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected onComposeButton()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->showNewNoteActivity()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 45
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->refreshOnThread()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00d2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090217

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    .line 37
    iget-object p3, p0, Lcom/perm/kate/NotesFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    iget-object p2, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/NotesFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->displayData()V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900e2

    if-eq v0, v1, :cond_0

    .line 143
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->showNewNoteActivity()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->refreshOnThread()V

    return-void
.end method
