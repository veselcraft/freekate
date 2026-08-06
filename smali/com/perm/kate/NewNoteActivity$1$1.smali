.class Lcom/perm/kate/NewNoteActivity$1$1;
.super Ljava/lang/Thread;
.source "NewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewNoteActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewNoteActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewNoteActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewNoteActivity$1;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$1$1;->this$1:Lcom/perm/kate/NewNoteActivity$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewNoteActivity$1$1;->this$1:Lcom/perm/kate/NewNoteActivity$1;

    iget-object v1, v1, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v1, v1, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity$1$1;->this$1:Lcom/perm/kate/NewNoteActivity$1;

    iget-object v2, v2, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v2, v2, Lcom/perm/kate/NewNoteActivity;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/NewNoteActivity$1$1;->this$1:Lcom/perm/kate/NewNoteActivity$1;

    iget-object v3, v3, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v3, v3, Lcom/perm/kate/NewNoteActivity;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/NewNoteActivity$1$1;->this$1:Lcom/perm/kate/NewNoteActivity$1;

    iget-object v4, v4, Lcom/perm/kate/NewNoteActivity$1;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->createNote(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 63
    return-void
.end method
