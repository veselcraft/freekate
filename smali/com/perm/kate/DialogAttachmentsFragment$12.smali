.class Lcom/perm/kate/DialogAttachmentsFragment$12;
.super Ljava/lang/Thread;
.source "DialogAttachmentsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->deleteMessage(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;

.field final synthetic val$long_mid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iput-wide p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->val$long_mid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 504
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 505
    .local v0, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->val$long_mid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$12;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->deleteMessage(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 508
    return-void
.end method
