.class Lcom/perm/kate/ProfileInfoFragment$20;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ProfileInfoFragment;
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
    .line 945
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$20;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 956
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$20;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 957
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 958
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 948
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$20;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    move-object v0, p1

    .line 949
    check-cast v0, Ljava/lang/Long;

    .line 950
    .local v0, "response":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 951
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment$20;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const v2, 0x7f0700af

    invoke-virtual {v1, v2}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    .line 952
    :cond_0
    return-void
.end method
