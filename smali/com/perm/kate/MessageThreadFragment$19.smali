.class Lcom/perm/kate/MessageThreadFragment$19;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$important:Ljava/lang/Boolean;

.field final synthetic val$long_mid:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-wide p2, p0, Lcom/perm/kate/MessageThreadFragment$19;->val$long_mid:J

    iput-object p4, p0, Lcom/perm/kate/MessageThreadFragment$19;->val$important:Ljava/lang/Boolean;

    iput p5, p0, Lcom/perm/kate/MessageThreadFragment$19;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    iget-wide v1, p0, Lcom/perm/kate/MessageThreadFragment$19;->val$long_mid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$19;->val$important:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1360
    new-instance v2, Lcom/perm/kate/MessageThreadFragment$19$1;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3, v1}, Lcom/perm/kate/MessageThreadFragment$19$1;-><init>(Lcom/perm/kate/MessageThreadFragment$19;Landroid/app/Activity;Z)V

    .line 1378
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v3, v3, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v3, v4}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$19;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/perm/kate/session/Session;->messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
