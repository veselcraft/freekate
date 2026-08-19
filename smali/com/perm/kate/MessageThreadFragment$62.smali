.class Lcom/perm/kate/MessageThreadFragment$62;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 3346
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$62;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3349
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$62;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/MessageThreadFragment;->access$5200(Lcom/perm/kate/MessageThreadFragment;Z)V

    .line 3350
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$62;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment;->access$300(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
