.class Lcom/perm/kate/MessageThreadFragment$6;
.super Ljava/lang/Thread;
.source "MessageThreadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessageThreadFragment;->refreshInThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;

.field final synthetic val$unread_count:I


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageThreadFragment;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iput p2, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$unread_count:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget v1, p0, Lcom/perm/kate/MessageThreadFragment$6;->val$unread_count:I

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$1000(Lcom/perm/kate/MessageThreadFragment;I)V

    .line 440
    return-void
.end method
