.class Lcom/perm/kate/NotesFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "NotesFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;Landroid/app/Activity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 79
    check-cast p1, Ljava/util/ArrayList;

    .line 80
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v1, v1, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->createUserNotes(Ljava/util/ArrayList;J)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 82
    iget-object p1, p0, Lcom/perm/kate/NotesFragment$2;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-static {p1}, Lcom/perm/kate/NotesFragment;->access$100(Lcom/perm/kate/NotesFragment;)V

    return-void
.end method
