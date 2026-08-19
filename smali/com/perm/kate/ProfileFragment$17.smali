.class Lcom/perm/kate/ProfileFragment$17;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 974
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$1100(Lcom/perm/kate/ProfileFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-nez p1, :cond_0

    .line 976
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$2500(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 977
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 978
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 979
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0

    .line 981
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 982
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$2600(Lcom/perm/kate/ProfileFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 983
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$2700(Lcom/perm/kate/ProfileFragment;)V

    goto :goto_0

    .line 985
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment$17;->this$0:Lcom/perm/kate/ProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method
