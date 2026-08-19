.class Lcom/perm/kate/MessageThreadFragment$39$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$39;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$39;Ljava/io/File;)V
    .locals 0

    .line 2214
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$39$1;->this$1:Lcom/perm/kate/MessageThreadFragment$39;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$39$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2217
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$39$1;->this$1:Lcom/perm/kate/MessageThreadFragment$39;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$39;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$39$1;->val$file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$4700(Lcom/perm/kate/MessageThreadFragment;Ljava/io/File;)V

    return-void
.end method
