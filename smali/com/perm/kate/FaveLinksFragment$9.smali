.class Lcom/perm/kate/FaveLinksFragment$9;
.super Ljava/lang/Thread;
.source "FaveLinksFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FaveLinksFragment;->faveAddLink(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;

.field final synthetic val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveLinksFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$9;->this$0:Lcom/perm/kate/FaveLinksFragment;

    iput-object p2, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$link:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$link:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/FaveLinksFragment$9;->val$fave_add_link_callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/FaveLinksFragment$9;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FaveLinksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->faveAddLink(Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 225
    return-void
.end method
