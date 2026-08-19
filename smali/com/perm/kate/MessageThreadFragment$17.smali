.class Lcom/perm/kate/MessageThreadFragment$17;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$et_message:Landroid/widget/EditText;

.field final synthetic val$message:Lcom/perm/kate/api/Message;

.field final synthetic val$message_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;Landroid/widget/EditText;JLcom/perm/kate/api/Message;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$17;->val$et_message:Landroid/widget/EditText;

    iput-wide p3, p0, Lcom/perm/kate/MessageThreadFragment$17;->val$message_id:J

    iput-object p5, p0, Lcom/perm/kate/MessageThreadFragment$17;->val$message:Lcom/perm/kate/api/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 1301
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$17;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1302
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1306
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment$17;->val$message_id:J

    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v3, p2, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v5, p2, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->updateMessageText(JJJLjava/lang/String;)Z

    .line 1307
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p2}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    .line 1309
    iget-object p2, p0, Lcom/perm/kate/MessageThreadFragment$17;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1310
    new-instance p2, Lcom/perm/kate/MessageThreadFragment$17$1;

    invoke-direct {p2, p0, p1}, Lcom/perm/kate/MessageThreadFragment$17$1;-><init>(Lcom/perm/kate/MessageThreadFragment$17;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
