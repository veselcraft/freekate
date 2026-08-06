.class Lcom/perm/kate/PlayerActivity$6;
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
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 2

    .prologue
    .line 327
    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 329
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v0, v0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    const v1, 0x7f070462

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 336
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 337
    return-void
.end method

.method public onNextEpisode()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$800(Lcom/perm/kate/PlayerActivity;)V

    .line 347
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 350
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->access$900(Lcom/perm/kate/PlayerActivity;Z)V

    .line 351
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 319
    const-string v0, "Kate.PlayerActivity"

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 323
    return-void
.end method

.method public onStartBuffering()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-object v0, v0, Lcom/perm/kate/PlayerActivity;->duration:Landroid/widget/TextView;

    const v1, 0x7f070459

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 342
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$800(Lcom/perm/kate/PlayerActivity;)V

    .line 356
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$700(Lcom/perm/kate/PlayerActivity;)V

    .line 357
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$6;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-static {v0}, Lcom/perm/kate/PlayerActivity;->access$500(Lcom/perm/kate/PlayerActivity;)V

    .line 358
    return-void
.end method
