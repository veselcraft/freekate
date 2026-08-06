.class Lcom/perm/kate/NewMessageActivity$3;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Lcom/perm/kate/MessageSender$MessageSenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$900(Lcom/perm/kate/NewMessageActivity;)V

    .line 286
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->showProgressBar(Z)V

    .line 287
    return-void
.end method

.method public ready()V
    .locals 6

    .prologue
    .line 273
    const-string v2, ""

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 274
    const-string v2, ""

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 276
    .local v0, "uid":J
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 277
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/NewMessageActivity;->setResult(I)V

    .line 278
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v2}, Lcom/perm/kate/NewMessageActivity;->finish()V

    .line 279
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 280
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 281
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 282
    return-void

    .line 275
    .end local v0    # "uid":J
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v2}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public refreshed()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->showProgressBar(Z)V

    .line 266
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$800(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e00ea

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e025b

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$3;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v1, 0x7f0e025d

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 270
    return-void
.end method
