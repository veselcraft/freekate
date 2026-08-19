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

    .line 16
    invoke-direct {p0, p1}, Lcom/perm/kate/NoteActivity;->display(Lcom/perm/kate/api/Note;)V

    return-void
.end method

.method private display(Lcom/perm/kate/api/Note;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/NoteActivity;->tv_note_title:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object p1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x3e9

    const v3, 0x7f0f022e

    .line 94
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const/16 v3, 0x3eb

    const v4, 0x7f0f00b2

    .line 95
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00d1

    .line 26
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0380

    .line 27
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    const p1, 0x7f090391

    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/NoteActivity;->tv_note_title:Landroid/widget/TextView;

    const p1, 0x7f090390

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.uid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.nid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    .line 34
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchNote(J)Lcom/perm/kate/api/Note;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/NoteActivity;->display(Lcom/perm/kate/api/Note;)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 37
    new-instance p1, Lcom/perm/kate/NoteActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/NoteActivity$1;-><init>(Lcom/perm/kate/NoteActivity;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/perm/kate/NoteActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 101
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NoteActivity;->tv_note_text:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x3

    .line 103
    iget-object v0, p0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p1, v0, v2, v3, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    return v1
.end method
