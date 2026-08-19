.class Lcom/perm/kate/MessageThreadFragment$47;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2560
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$47;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2564
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$47;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v1}, Lcom/perm/kate/MessageThreadFragment;->access$2200(Lcom/perm/kate/MessageThreadFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$47;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v4, v3, Lcom/perm/kate/MessageThreadFragment;->buttonCallback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/perm/kate/session/Session;->getBotButtons(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
