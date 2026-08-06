.class Lcom/perm/kate/DocsFragment$9;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Lcom/perm/kate/DocClickHelper$DocClickHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DocsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DocsFragment;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public docDeleted()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$200(Lcom/perm/kate/DocsFragment;)V

    .line 308
    return-void
.end method

.method public docEdited()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$9;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$200(Lcom/perm/kate/DocsFragment;)V

    .line 311
    return-void
.end method
