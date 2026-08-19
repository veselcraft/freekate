.class Lcom/perm/kate/AttachmentsHelper$17;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AttachmentsHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1618
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .line 1628
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onCompletion"

    .line 1629
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1634
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onError"

    .line 1635
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .line 1645
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onPrepared"

    .line 1623
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartBuffering()V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 1650
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    return-void
.end method
