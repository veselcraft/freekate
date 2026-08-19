.class Lcom/perm/kate/FaveLinksFragment$4;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveLinksFragment;->access$300(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveLinksFragment;->access$300(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method
