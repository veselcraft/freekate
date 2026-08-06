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
    .param p1, "this$0"    # Lcom/perm/kate/MessageSaveActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 168
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v0}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 169
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v0, v0, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 170
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v1, v1, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    .line 172
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    .line 138
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 139
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-wide v4, v2, Lcom/perm/kate/MessageSaveActivity;->offset:J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/perm/kate/MessageSaveActivity;->offset:J

    .line 141
    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->getMissingUsers(Ljava/util/ArrayList;)V

    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/MessageSaveActivity;->access$100(Lcom/perm/kate/MessageSaveActivity;Ljava/util/ArrayList;)V

    .line 146
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-virtual {v2}, Lcom/perm/kate/MessageSaveActivity;->displayProgressText()V

    .line 148
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget v3, v3, Lcom/perm/kate/MessageSaveActivity;->page_size:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_0

    .line 149
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    .line 151
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, v3, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 152
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v2, v2, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v2, v2, Lcom/perm/kate/MessageSaveActivity;->out:Ljava/io/Writer;

    invoke-static {v2}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 158
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    invoke-static {v2}, Lcom/perm/kate/MessageSaveActivity;->access$000(Lcom/perm/kate/MessageSaveActivity;)V

    .line 159
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 160
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iget-object v3, v3, Lcom/perm/kate/MessageSaveActivity;->view3:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/perm/kate/MessageSaveActivity;->showView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/perm/kate/MessageSaveActivity$3;->this$0:Lcom/perm/kate/MessageSaveActivity;

    iput-boolean v8, v2, Lcom/perm/kate/MessageSaveActivity;->stop:Z

    goto :goto_0
.end method
