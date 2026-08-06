.class Lcom/perm/kate/NoteActivity$1;
.super Ljava/lang/Thread;
.source "NoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NoteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NoteActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NoteActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v2, "nids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v0, v0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v1, v1, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v6, v4, Lcom/perm/kate/NoteActivity;->callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 43
    return-void
.end method
