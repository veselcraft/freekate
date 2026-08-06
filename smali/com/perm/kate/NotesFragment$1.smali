.class Lcom/perm/kate/NotesFragment$1;
.super Ljava/lang/Thread;
.source "NotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotesFragment;->refreshOnThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 56
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotesFragment;->showProgressBar(Z)V

    .line 58
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v1, v1, Lcom/perm/kate/NotesFragment;->user_id:Ljava/lang/Long;

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v3, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-static {v3}, Lcom/perm/kate/NotesFragment;->access$000(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v3, p0, Lcom/perm/kate/NotesFragment$1;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v3}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 59
    return-void
.end method
