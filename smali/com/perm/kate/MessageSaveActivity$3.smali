.class Lcom/perm/kate/MessageSaveActivity$3;
.super Lcom/perm/kate/session/Callback;
.source "MessageSaveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSaveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSaveActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSaveActivity;Landroid/app/Activity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 197
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {p1}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 198
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object p1, p1, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 199
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, p1, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 200
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 167
    check-cast p1, Ljava/util/ArrayList;

    .line 168
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v1, v0, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/perm/kate/MessageSaveActivity;->offset:J

    .line 170
    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v1, p1}, Lcom/perm/kate/MessageSaveActivity;->access$100(Lcom/perm/kate/MessageSaveActivity;Ljava/util/ArrayList;)V

    .line 175
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {v1}, Lcom/perm/kate/MessageSaveActivity;->displayProgressText()V

    .line 177
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget v2, v1, Lcom/perm/kate/MessageSaveActivity;->page_size:I

    div-int/lit8 v2, v2, 0x2

    if-gt p1, v2, :cond_0

    .line 178
    iput-boolean v0, v1, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    .line 180
    iget-object p1, v1, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 181
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object p1, p1, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {p1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 185
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 187
    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v1}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 188
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 189
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, p1, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 190
    iget-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iput-boolean v0, p1, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    :cond_0
    :goto_0
    return-void
.end method
