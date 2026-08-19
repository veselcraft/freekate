.class Lcom/perm/kate/DialogAttachmentsFragment$13;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$is_important:Z

.field final synthetic val$long_mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;JZ)V
    .locals 0

    .line 618
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    iput-boolean p4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$is_important:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 622
    iget-wide v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    iget-boolean v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$is_important:Z

    xor-int/lit8 v1, v1, 0x1

    .line 624
    new-instance v2, Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/perm/kate/DialogAttachmentsFragment$13$1;-><init>(Lcom/perm/kate/DialogAttachmentsFragment$13;Landroid/app/Activity;Z)V

    .line 648
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/perm/kate/session/Session;->messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
