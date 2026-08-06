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
    .param p1, "this$0"    # Lcom/perm/kate/NoteActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 79
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NoteActivity;->showProgressBar(Z)V

    .line 80
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 64
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 65
    .local v1, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Note;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Note;

    .line 68
    .local v0, "note":Lcom/perm/kate/api/Note;
    iget-object v2, p0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    new-instance v3, Lcom/perm/kate/NoteActivity$2$1;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/NoteActivity$2$1;-><init>(Lcom/perm/kate/NoteActivity$2;Lcom/perm/kate/api/Note;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/NoteActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
