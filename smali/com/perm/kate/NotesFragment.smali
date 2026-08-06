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

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    .line 74
    new-instance v0, Lcom/perm/kate/NotesFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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

    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotesFragment$7;-><init>(Lcom/perm/kate/NotesFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/NotesFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NotesFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NotesFragment;
    .param p1, "x1"    # J

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NotesFragment;->deleteNote(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private deleteNote(J)V
    .locals 1
    .param p1, "note_id"    # J

    .prologue
    .line 182
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1, p2}, Lcom/perm/kate/db/DataHelper;->deleteNote(J)Z

    .line 183
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->requeryOnUiThread()V

    .line 185
    new-instance v0, Lcom/perm/kate/NotesFragment$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/NotesFragment$6;-><init>(Lcom/perm/kate/NotesFragment;J)V

    .line 190
    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment$6;->start()V

    .line 191
    return-void
.end method

.method private displayData()V
    .locals 6

    .prologue
    .line 97
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchNotes(J)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    .line 98
    iget-object v2, p0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/perm/kate/NotesFragment;->startManagingCursor(Landroid/database/Cursor;)V

    .line 99
    new-instance v0, Lcom/perm/kate/NotesAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    invoke-direct {v0, v2, v3}, Lcom/perm/kate/NotesAdapter;-><init>(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 100
    .local v0, "adapter":Lcom/perm/kate/NotesAdapter;
    iget-object v2, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "adapter":Lcom/perm/kate/NotesAdapter;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 103
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshOnThread()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/perm/kate/NotesFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotesFragment$1;-><init>(Lcom/perm/kate/NotesFragment;)V

    .line 60
    invoke-virtual {v0}, Lcom/perm/kate/NotesFragment$1;->start()V

    .line 61
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NotesFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/NotesFragment$4;-><init>(Lcom/perm/kate/NotesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showNewNoteActivity()V
    .locals 3

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v0}, Lcom/perm/kate/NotesFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 130
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 131
    iget-object v1, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 132
    const v1, 0x7f0e03a2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 133
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 67
    iget-object v0, p0, Lcom/perm/kate/NotesFragment;->callback_delete:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 68
    return-void
.end method

.method protected onComposeButton()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->showNewNoteActivity()V

    .line 72
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/perm/kate/NotesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->refreshOnThread()V

    .line 50
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v1, 0x7f0300bf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0e0269

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    .line 37
    iget-object v1, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NotesFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/perm/kate/NotesFragment;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NotesFragment;->onItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 39
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->displayData()V

    .line 40
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->showNewNoteActivity()V

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03a2
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/perm/kate/NotesFragment;->refreshOnThread()V

    .line 202
    return-void
.end method
