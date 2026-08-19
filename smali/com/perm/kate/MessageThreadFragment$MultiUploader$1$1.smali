.class Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

.field final synthetic val$new_photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 2881
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

    iput-object p2, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2884
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;->this$1:Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-object v1, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;->val$new_photos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/perm/kate/MessageThreadFragment;->access$6200(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Z)V

    .line 2885
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1$1;->this$2:Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;

    iget-object v0, v0, Lcom/perm/kate/MessageThreadFragment$MultiUploader$1;->this$1:Lcom/perm/kate/MessageThreadFragment$MultiUploader;

    invoke-static {v0}, Lcom/perm/kate/MessageThreadFragment$MultiUploader;->access$6300(Lcom/perm/kate/MessageThreadFragment$MultiUploader;)V

    return-void
.end method
