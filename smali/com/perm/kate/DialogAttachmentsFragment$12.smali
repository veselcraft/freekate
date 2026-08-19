.class Lcom/perm/kate/DialogAttachmentsFragment$12;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$long_mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0

    .line 603
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->val$long_mid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 606
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 607
    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->val$long_mid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteMessage(Ljava/util/ArrayList;Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
