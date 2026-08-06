.class Lcom/perm/kate/NewNoteActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "NewNoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewNoteActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewNoteActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewNoteActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 86
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewNoteActivity;->showProgressBar(Z)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v0}, Lcom/perm/kate/NewNoteActivity;->access$400(Lcom/perm/kate/NewNoteActivity;)V

    .line 88
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 71
    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    .line 72
    .local v1, "note_id":Ljava/lang/Long;
    new-instance v0, Lcom/perm/kate/api/Note;

    invoke-direct {v0}, Lcom/perm/kate/api/Note;-><init>()V

    .line 73
    .local v0, "note":Lcom/perm/kate/api/Note;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Note;->nid:J

    .line 74
    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v2, v2, Lcom/perm/kate/NewNoteActivity;->text:Ljava/lang/String;

    iput-object v2, v0, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    .line 75
    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v2, v2, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    .line 76
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Note;->owner_id:J

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, v0, Lcom/perm/kate/api/Note;->date:J

    .line 78
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J

    .line 79
    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/NewNoteActivity;->showProgressBar(Z)V

    .line 80
    iget-object v2, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {v2}, Lcom/perm/kate/NewNoteActivity;->access$300(Lcom/perm/kate/NewNoteActivity;)V

    .line 81
    return-void
.end method
