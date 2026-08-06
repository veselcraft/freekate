.class Lcom/perm/kate/MessageThreadFragment$40$2;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment$40;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$40;

.field final synthetic val$remove_member_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$40;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/MessageThreadFragment$40;

    .prologue
    .line 2038
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2041
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$1200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v0, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-object v6, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->val$remove_member_callback:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$40$2;->this$1:Lcom/perm/kate/MessageThreadFragment$40;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$40;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->removeUserFromChat(JJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 2042
    return-void
.end method
