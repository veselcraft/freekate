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

    .line 37
    iput-object p1, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v0, v0, Lcom/perm/kate/NoteActivity;->nid:Ljava/lang/Long;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v7, p0, Lcom/perm/kate/NoteActivity$1;->this$0:Lcom/perm/kate/NoteActivity;

    iget-object v1, v7, Lcom/perm/kate/NoteActivity;->uid:Ljava/lang/Long;

    iget-object v6, v7, Lcom/perm/kate/NoteActivity;->callback:Lcom/perm/kate/session/Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotes(Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
