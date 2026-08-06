.class Lcom/perm/kate/MessageThreadFragment$11;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->markAsImportant(JLjava/lang/Boolean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$important:Ljava/lang/Boolean;

.field final synthetic val$long_mid:J

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;JLjava/lang/Boolean;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput-wide p2, p0, Lcom/perm/kate/MessageThreadFragment$11;->val$long_mid:J

    iput-object p4, p0, Lcom/perm/kate/MessageThreadFragment$11;->val$important:Ljava/lang/Boolean;

    iput p5, p0, Lcom/perm/kate/MessageThreadFragment$11;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 789
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v4, p0, Lcom/perm/kate/MessageThreadFragment$11;->val$long_mid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$11;->val$important:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 792
    .local v2, "new_important":Z
    :goto_0
    new-instance v0, Lcom/perm/kate/MessageThreadFragment$11$1;

    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v3}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, p0, v3, v2}, Lcom/perm/kate/MessageThreadFragment$11$1;-><init>(Lcom/perm/kate/MessageThreadFragment$11;Landroid/app/Activity;Z)V

    .line 810
    .local v0, "cb1":Lcom/perm/kate/session/Callback;
    iget-object v3, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v3, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    invoke-static {v4, v5}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/MessageThreadFragment$11;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-virtual {v4}, Lcom/perm/kate/MessageThreadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/perm/kate/session/Session;->messageMarkAsImportant(Ljava/util/Collection;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 811
    return-void

    .line 791
    .end local v0    # "cb1":Lcom/perm/kate/session/Callback;
    .end local v2    # "new_important":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
