.class Lcom/perm/kate/MessageThreadFragment$48;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$48;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2574
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$48;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    const-wide/32 v3, 0x77359400

    add-long/2addr v1, v3

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$48;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v4, v3, Lcom/perm/kate/MessageThreadFragment;->callbackConversation:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/perm/kate/session/Session;->getConversationsById(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
