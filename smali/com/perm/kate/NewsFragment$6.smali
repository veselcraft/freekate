.class Lcom/perm/kate/NewsFragment$6;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->requeryOnUiThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$scroll_to_top:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$6;->this$0:Lcom/perm/kate/NewsFragment;

    iput-boolean p2, p0, Lcom/perm/kate/NewsFragment$6;->val$scroll_to_top:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$6;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$6;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 331
    :cond_0
    iget-boolean v0, p0, Lcom/perm/kate/NewsFragment$6;->val$scroll_to_top:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$6;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v0}, Lcom/perm/kate/NewsFragment;->access$600(Lcom/perm/kate/NewsFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 333
    :cond_1
    return-void
.end method
