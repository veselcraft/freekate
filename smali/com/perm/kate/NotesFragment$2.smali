.class Lcom/perm/kate/NotesFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "NotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotesFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotesFragment;->showProgressBar(Z)V

    .line 89
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 80
    .local v0, "notes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Note;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v2, v2, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createUserNotes(Ljava/util/ArrayList;J)V

    .line 81
    iget-object v1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/NotesFragment;->showProgressBar(Z)V

    .line 82
    iget-object v1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-static {v1}, Lcom/perm/kate/NotesFragment;->access$100(Lcom/perm/kate/NotesFragment;)V

    .line 83
    return-void
.end method
