.class Lcom/perm/kate/FaveLinksFragment$7;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment;->faveRemoveLink(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$link_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$7;->val$link_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$7;->val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveLinksFragment;->showProgressBar(Z)V

    .line 188
    new-instance v0, Lcom/perm/kate/FaveLinksFragment$7$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FaveLinksFragment$7$1;-><init>(Lcom/perm/kate/FaveLinksFragment$7;)V

    .line 193
    invoke-virtual {v0}, Lcom/perm/kate/FaveLinksFragment$7$1;->start()V

    .line 194
    return-void
.end method
