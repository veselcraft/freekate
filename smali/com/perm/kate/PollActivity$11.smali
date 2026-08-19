.class Lcom/perm/kate/PollActivity$11;
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

    .line 313
    iput-object p1, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const v1, 0x7f090329

    .line 317
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 318
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    const-class v3, Lcom/perm/kate/PollVotersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.perm.kate.answer_id"

    .line 319
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 320
    iget-object v0, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$600(Lcom/perm/kate/PollActivity;)J

    move-result-wide v2

    const-string v0, "com.perm.kate.poll_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 321
    iget-object v0, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$700(Lcom/perm/kate/PollActivity;)J

    move-result-wide v2

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 322
    iget-object v0, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    invoke-static {v0}, Lcom/perm/kate/PollActivity;->access$800(Lcom/perm/kate/PollActivity;)Z

    move-result v0

    const-string v2, "com.perm.kate.is_board"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "com.perm.kate.title"

    .line 323
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    iget-object p1, p0, Lcom/perm/kate/PollActivity$11;->this$0:Lcom/perm/kate/PollActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
