.class Lcom/perm/kate/FaveLinksFragment$7;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$link_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$7;->val$link_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$7;->val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 185
    new-instance p1, Lcom/perm/kate/FaveLinksFragment$7$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/FaveLinksFragment$7$1;-><init>(Lcom/perm/kate/FaveLinksFragment$7;)V

    .line 190
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
