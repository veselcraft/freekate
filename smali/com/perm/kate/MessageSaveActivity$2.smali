.class Lcom/perm/kate/MessageSaveActivity$2;
.super Ljava/lang/Thread;
.source "MessageSaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageSaveActivity;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 105
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->pathEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "dir":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->fileEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 107
    .local v12, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    .line 111
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/perm/kate/MessageSaveActivity;->offset:J

    .line 112
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    .line 113
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {v1}, Lcom/perm/kate/MessageSaveActivity;->displayProgressText()V

    .line 119
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v2, v2, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    iget-object v4, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v4, v4, Lcom/perm/kate/MessageSaveActivity;->chat_id:J

    iget-object v6, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v6, v6, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget v7, v7, Lcom/perm/kate/MessageSaveActivity;->page_size:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v10, v10, Lcom/perm/kate/MessageSaveActivity;->callback_messages:Lcom/perm/kate/session/Callback;

    iget-object v11, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 120
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-boolean v1, v1, Lcom/perm/kate/MessageSaveActivity;->stop:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v13

    .line 124
    .local v13, "th":Ljava/lang/Throwable;
    invoke-virtual {v13}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    invoke-static {v13}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 126
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v1}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 127
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v2, v2, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0
.end method
