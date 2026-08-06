.class Lcom/perm/kate/PollActivity$10;
.super Ljava/lang/Object;
.source "PollActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PollActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PollActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PollActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PollActivity;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 253
    .local v0, "_id":Ljava/lang/Long;
    const v3, 0x7f0e0080

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 254
    .local v2, "title":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    const-class v4, Lcom/perm/kate/PollVotersActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.perm.kate.answer_id"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 256
    const-string v3, "com.perm.kate.poll_id"

    iget-object v4, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v4}, Lcom/perm/kate/PollActivity;->access$600(Lcom/perm/kate/PollActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 257
    const-string v3, "com.perm.kate.owner_id"

    iget-object v4, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v4}, Lcom/perm/kate/PollActivity;->access$700(Lcom/perm/kate/PollActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    const-string v3, "com.perm.kate.topic_id"

    iget-object v4, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v4}, Lcom/perm/kate/PollActivity;->access$800(Lcom/perm/kate/PollActivity;)J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 259
    const-string v3, "com.perm.kate.title"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v3, p0, Lcom/perm/kate/PollActivity$10;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual {v3, v1}, Lcom/perm/kate/PollActivity;->startActivity(Landroid/content/Intent;)V

    .line 261
    return-void
.end method
