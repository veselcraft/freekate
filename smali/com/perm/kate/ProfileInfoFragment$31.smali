.class Lcom/perm/kate/ProfileInfoFragment$31;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ProfileInfoFragment;->faveRemoveUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 1145
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1133
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v1, v3}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 1136
    check-cast v0, Ljava/lang/Integer;

    .line 1137
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1138
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->access$2602(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1139
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const v2, 0x7f07049c

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    goto :goto_0
.end method
