.class Lcom/perm/kate/FaveLinksFragment$7$1;
.super Ljava/lang/Thread;
.source "FaveLinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FaveLinksFragment$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FaveLinksFragment$7;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    iget-object v1, v1, Lcom/perm/kate/FaveLinksFragment$7;->val$link_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    iget-object v2, v2, Lcom/perm/kate/FaveLinksFragment$7;->val$fave_remove_link_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/FaveLinksFragment$7$1;->this$1:Lcom/perm/kate/FaveLinksFragment$7;

    iget-object v3, v3, Lcom/perm/kate/FaveLinksFragment$7;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->faveRemoveLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 192
    return-void
.end method
