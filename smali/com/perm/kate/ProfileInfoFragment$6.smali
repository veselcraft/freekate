.class Lcom/perm/kate/ProfileInfoFragment$6;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 547
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$500(Lcom/perm/kate/ProfileInfoFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-nez p1, :cond_0

    .line 548
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$700(Lcom/perm/kate/ProfileInfoFragment;)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 550
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 551
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0

    .line 554
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 555
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {p1}, Lcom/perm/kate/ProfileInfoFragment;->access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$6;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
