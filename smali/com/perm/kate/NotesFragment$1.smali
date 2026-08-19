.class Lcom/perm/kate/NotesFragment$1;
.super Ljava/lang/Thread;
.source "NotesFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 58
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v3, v0, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-static {v0}, Lcom/perm/kate/NotesFragment;->access$000(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
