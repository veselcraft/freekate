.class Lcom/perm/kate/MessageThreadFragment$10;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;I)V
    .locals 0

    .line 792
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput p2, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$unread_count:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 795
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$10;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget v1, p0, Lcom/perm/kate/MessageThreadFragment$10;->val$unread_count:I

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$2000(Lcom/perm/kate/MessageThreadFragment;I)V

    return-void
.end method
