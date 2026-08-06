.class public Lcom/perm/kate/NoteActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NoteActivity.java"


# instance fields
.field callback:Lcom/perm/kate/session/Callback;

.field nid:Ljava/lang/Long;

.field private tv_note_text:Landroid/widget/TextView;

.field private tv_note_title:Landroid/widget/TextView;

.field uid:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/perm/kate/NoteActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NoteActivity$2;-><init>(Lcom/perm/kate/NoteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NoteActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NoteActivity;Lcom/perm/kate/api/Note;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NoteActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Note;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/perm/kate/NoteActivity;->display(Lcom/perm/kate/api/Note;)V

    return-void
.end method

.method private display(Lcom/perm/kate/api/Note;)V
    .locals 3
    .param p1, "note"    # Lcom/perm/kate/api/Note;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->tv_note_title:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/16 v0, 0x3e9

    const v1, 0x7f0701d2

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 95
    const/4 v0, 0x2

    const/16 v1, 0x3eb

    const v2, 0x7f07007e

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 96
    return v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f0300be

    invoke-virtual {p0, v0}, Lcom/perm/kate/NoteActivity;->setContentView(I)V

    .line 27
    const v0, 0x7f07031f

    invoke-virtual {p0, v0}, Lcom/perm/kate/NoteActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/NoteActivity;->setupMenuButton()V

    .line 29
    const v0, 0x7f0e0267

    invoke-virtual {p0, v0}, Lcom/perm/kate/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/NoteActivity;->tv_note_title:Landroid/widget/TextView;

    .line 30
    const v0, 0x7f0e0268

    invoke-virtual {p0, v0}, Lcom/perm/kate/NoteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/perm/kate/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.uid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    .line 32
    invoke-virtual {p0}, Lcom/perm/kate/NoteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.nid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    .line 34
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchNote(J)Lcom/perm/kate/api/Note;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/NoteActivity;->display(Lcom/perm/kate/api/Note;)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NoteActivity;->showProgressBar(Z)V

    .line 37
    new-instance v0, Lcom/perm/kate/NoteActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NoteActivity$1;-><init>(Lcom/perm/kate/NoteActivity;)V

    .line 44
    invoke-virtual {v0}, Lcom/perm/kate/NoteActivity$1;->start()V

    .line 45
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/perm/kate/NoteActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 89
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 103
    :pswitch_0
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
