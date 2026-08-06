.class Lcom/perm/kate/NoteActivity$2$1;
.super Ljava/lang/Object;
.source "NoteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NoteActivity$2;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NoteActivity$2;

.field final synthetic val$note:Lcom/perm/kate/api/Note;


# direct methods
.method constructor <init>(Lcom/perm/kate/NoteActivity$2;Lcom/perm/kate/api/Note;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NoteActivity$2;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/NoteActivity$2$1;->this$1:Lcom/perm/kate/NoteActivity$2;

    iput-object p2, p0, Lcom/perm/kate/NoteActivity$2$1;->val$note:Lcom/perm/kate/api/Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$2$1;->this$1:Lcom/perm/kate/NoteActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NoteActivity;->showProgressBar(Z)V

    .line 72
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$2$1;->this$1:Lcom/perm/kate/NoteActivity$2;

    iget-object v0, v0, Lcom/perm/kate/NoteActivity$2;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v1, p0, Lcom/perm/kate/NoteActivity$2$1;->val$note:Lcom/perm/kate/api/Note;

    invoke-static {v0, v1}, Lcom/perm/kate/NoteActivity;->access$000(Lcom/perm/kate/NoteActivity;Lcom/perm/kate/api/Note;)V

    .line 73
    return-void
.end method
