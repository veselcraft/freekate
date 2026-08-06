.class Lcom/perm/kate/AttachmentsHelper$17;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AttachmentsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1266
    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1272
    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1283
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1260
    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    return-void
.end method

.method public onStartBuffering()V
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1278
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$17;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$600(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1288
    return-void
.end method
