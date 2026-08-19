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

    .line 131
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 134
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->pathEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->fileEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v0, "utf-8"

    invoke-direct {v3, v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    .line 140
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/perm/kate/MessageSaveActivity;->offset:J

    const/4 v1, 0x0

    .line 141
    iput-boolean v1, v0, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    .line 142
    invoke-virtual {v0}, Lcom/perm/kate/MessageSaveActivity;->displayProgressText()V

    .line 148
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v3, v0, Lcom/perm/kate/MessageSaveActivity;->user_id:J

    iget-wide v5, v0, Lcom/perm/kate/MessageSaveActivity;->chat_id:J

    iget-wide v0, v0, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget v8, v0, Lcom/perm/kate/MessageSaveActivity;->page_size:I

    const/4 v9, 0x0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v12, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v11, v12, Lcom/perm/kate/MessageSaveActivity;->callback_messages:Lcom/perm/kate/session/Callback;

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->getMessagesHistory(JJLjava/lang/Long;ILjava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 149
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-boolean v0, v0, Lcom/perm/kate/MessageSaveActivity;->stop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 155
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 156
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v0, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$2;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_0
    return-void
.end method
