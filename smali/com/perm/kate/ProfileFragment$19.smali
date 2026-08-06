.class Lcom/perm/kate/ProfileFragment$19;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 963
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 966
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v1, "status"

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->access$1900(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2300(Lcom/perm/kate/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-nez v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2400(Lcom/perm/kate/ProfileFragment;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v3, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v1}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const/16 v5, 0xa

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0

    .line 973
    .end local v3    # "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2500(Lcom/perm/kate/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 975
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$2600(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 977
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {v0}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment$19;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
