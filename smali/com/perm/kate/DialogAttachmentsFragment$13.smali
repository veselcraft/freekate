.class Lcom/perm/kate/DialogAttachmentsFragment$13;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->markAsImportant(JZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$is_important:Z

.field final synthetic val$long_mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;JZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    iput-boolean p4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$is_important:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-boolean v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$is_important:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 522
    .local v2, "new_important":Z
    :goto_0
    new-instance v0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lcom/perm/kate/DialogAttachmentsFragment$13$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$13;Landroid/app/Activity;Z)V

    .line 546
    .local v0, "cb1":Lcom/perm/kate/session/Callback;
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/perm/kate/session/Session;->messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 547
    return-void

    .line 521
    .end local v0    # "cb1":Lcom/perm/kate/session/Callback;
    .end local v2    # "new_important":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
