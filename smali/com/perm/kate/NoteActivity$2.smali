.class Lcom/perm/kate/NoteActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "NoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NoteActivity;Landroid/app/Activity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 79
    iget-object p1, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 64
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Note;

    .line 68
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    new-instance v1, Lcom/perm/kate/NoteActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NoteActivity$2$1;-><init>(Lcom/perm/kate/NoteActivity$2;Lcom/perm/kate/api/Note;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
