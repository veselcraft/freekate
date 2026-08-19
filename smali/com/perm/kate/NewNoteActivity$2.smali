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

    .line 69
    iput-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 88
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {p1}, Lcom/perm/kate/NewNoteActivity;->access$400(Lcom/perm/kate/NewNoteActivity;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 72
    check-cast p1, Ljava/lang/Long;

    .line 73
    new-instance v0, Lcom/perm/kate/api/Note;

    invoke-direct {v0}, Lcom/perm/kate/api/Note;-><init>()V

    .line 74
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->nid:J

    .line 75
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    iget-object v1, p1, Lcom/perm/kate/NewNoteActivity;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/Note;->text:Ljava/lang/String;

    .line 76
    iget-object p1, p1, Lcom/perm/kate/NewNoteActivity;->title:Ljava/lang/String;

    iput-object p1, v0, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    .line 77
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->owner_id:J

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/api/Note;->date:J

    .line 79
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1, v0}, Lcom/perm/kate/db/DataHelper;->createNote(Lcom/perm/kate/api/Note;)J

    .line 80
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/NewNoteActivity$2;->this$0:Lcom/perm/kate/NewNoteActivity;

    invoke-static {p1}, Lcom/perm/kate/NewNoteActivity;->access$300(Lcom/perm/kate/NewNoteActivity;)V

    return-void
.end method
