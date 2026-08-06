.class Lcom/perm/kate/FaveLinksFragment$4;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveLinksFragment;->access$400(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$4;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveLinksFragment;->access$400(Lcom/perm/kate/FaveLinksFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 129
    :cond_0
    return-void
.end method
