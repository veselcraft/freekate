.class Lcom/perm/kate/DocsFragment$9;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public docDeleted()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$400(Lcom/perm/kate/DocsFragment;)V

    return-void
.end method

.method public docEdited()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$400(Lcom/perm/kate/DocsFragment;)V

    return-void
.end method
