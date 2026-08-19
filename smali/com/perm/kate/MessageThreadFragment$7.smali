.class Lcom/perm/kate/MessageThreadFragment$7;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 492
    new-instance v4, Lcom/perm/kate/MessageThreadFragment$7$1;

    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/MessageThreadFragment$7$1;-><init>(Lcom/perm/kate/MessageThreadFragment$7;Landroid/app/Activity;)V

    .line 521
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$1500(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$7;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    const-string v3, "online, photo_100"

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getChatUsers(JLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
