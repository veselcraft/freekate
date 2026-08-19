.class Lcom/perm/kate/AttachmentsHelper$18;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AttachmentsHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1654
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onCompletion"

    .line 1665
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-nez v1, :cond_0

    return-void

    .line 1672
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$700(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    .line 1674
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v1, v0}, Lcom/perm/kate/AttachmentsHelper;->access$800(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1679
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onError"

    .line 1680
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .line 1690
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onPrepared"

    .line 1659
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartBuffering()V
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 1695
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$18;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method
