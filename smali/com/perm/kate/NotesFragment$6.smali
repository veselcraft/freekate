.class Lcom/perm/kate/NotesFragment$6;
.super Ljava/lang/Thread;
.source "NotesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotesFragment;->deleteNote(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;

.field final synthetic val$note_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotesFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$6;->this$0:Lcom/perm/kate/NotesFragment;

    iput-wide p2, p0, Lcom/perm/kate/NotesFragment$6;->val$note_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/NotesFragment$6;->val$note_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NotesFragment$6;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-static {v2}, Lcom/perm/kate/NotesFragment;->access$300(Lcom/perm/kate/NotesFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NotesFragment$6;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-virtual {v3}, Lcom/perm/kate/NotesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteNote(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 189
    return-void
.end method
