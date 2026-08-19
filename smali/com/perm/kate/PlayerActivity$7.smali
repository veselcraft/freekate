.class Lcom/perm/kate/PlayerActivity$7;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onCompletion"

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v0, v0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    const v1, 0x7f0f04f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onError"

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 363
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    return-void
.end method

.method public onNextEpisode()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$800(Lcom/perm/kate/PlayerActivity;)V

    .line 374
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 377
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->access$900(Lcom/perm/kate/PlayerActivity;Z)V

    return-void
.end method

.method public onPrepared()V
    .locals 2

    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onPrepared"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    return-void
.end method

.method public onStartBuffering()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v0, v0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    const v1, 0x7f0f04e9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$800(Lcom/perm/kate/PlayerActivity;)V

    .line 383
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 384
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$7;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    return-void
.end method
