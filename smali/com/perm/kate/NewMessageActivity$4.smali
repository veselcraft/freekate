.class Lcom/perm/kate/NewMessageActivity$4;
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

    .line 326
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 349
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/NewMessageActivity;->access$900(Lcom/perm/kate/NewMessageActivity;)V

    .line 350
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready()V
    .locals 5

    const-string v0, ""

    .line 337
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$400(Lcom/perm/kate/NewMessageActivity;)J

    move-result-wide v0

    .line 340
    :goto_0
    invoke-static {v0, v1}, Lcom/perm/utils/TempMessages;->clear(J)V

    .line 341
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 342
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 343
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 345
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public refreshed()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 330
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/NewMessageActivity;->access$800(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v2, 0x7f09005f

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v2, 0x7f090036

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$4;->this$0:Lcom/perm/kate/NewMessageActivity;

    const v2, 0x7f090065

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
