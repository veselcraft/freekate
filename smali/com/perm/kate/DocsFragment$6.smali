.class Lcom/perm/kate/DocsFragment$6;
.super Ljava/lang/Object;
.source "DocsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DocsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DocsFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/perm/kate/DocsFragment$6;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$6;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/perm/kate/DocsFragment$6;->this$0:Lcom/perm/kate/DocsFragment;

    invoke-static {v0}, Lcom/perm/kate/DocsFragment;->access$800(Lcom/perm/kate/DocsFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
