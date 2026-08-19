.class Lcom/perm/kate/MessageThreadFragment$52;
.super Ljava/lang/Object;
.source "MessageThreadFragment.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageThreadFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment;)V
    .locals 0

    .line 2789
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$52;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2

    .line 2792
    iget-object v0, p0, Lcom/perm/kate/MessageThreadFragment$52;->this$0:Lcom/perm/kate/MessageThreadFragment;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/perm/kate/MessageThreadFragment;->access$6200(Lcom/perm/kate/MessageThreadFragment;Ljava/util/ArrayList;Z)V

    return-void
.end method
