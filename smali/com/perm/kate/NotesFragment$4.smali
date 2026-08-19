.class Lcom/perm/kate/NotesFragment$4;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotesFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotesFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/perm/kate/NotesFragment$4;->this$0:Lcom/perm/kate/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/perm/kate/NotesFragment$4;->this$0:Lcom/perm/kate/NotesFragment;

    iget-object v0, v0, Lcom/perm/kate/NotesFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
